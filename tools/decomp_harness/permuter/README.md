# decomp-permuter integration (local scaffolding) — ROADMAP T1.4

Local-only parts of the decomp-permuter integration. Everything here is useful
standalone (hand iteration on NONMATCHING functions) and ready to plug the
permuter in once it is cloned (pending user approval; nothing here touches the
network).

## What a permuter does (context)

`simonlindholm/decomp-permuter` mutates a C function through semantics-preserving
transforms (statement reorder, temp-var introduction/removal, constant reshaping,
etc.), recompiles each variant, and scores it against a target object. It walks a
fitness value toward 0. It fixes exactly the codegen tie-breaks that force our
NONMATCHING fallbacks (register allocation, scheduling, spill choice) — *not*
logic bugs, header-signature locks, or provably-unreachable idioms.

## Pieces

### `score_candidate.py` — the fitness function
Compiles ONE candidate C TU standalone (byte-identical to `make` / `compile_one.sh`
— validated: only the embedded DWARF source path differs, which objdiff ignores)
to a caller-supplied out dir, then scores it with `objdiff.py --score --json`.

**IPA fitness contract (non-negotiable):**
- fitness = the target function's `diff_halfwords` (minimize; `0` + status
  `"match"` == solved);
- REJECT the candidate (accepted=false, exit != 0) unless every OTHER function in
  the TU that currently matches the reference stays byte-identical. MWCC's
  `-ipa file` lets a local edit perturb an unrelated already-matched sibling; such
  a candidate is worthless no matter how good the target score is.

"currently matches" is measured from a BASELINE compile of the committed TU
against the same reference (siblings already broken in the baseline are exempt;
matching siblings are the guarded set).

```
python3 score_candidate.py --tu src/<name>.c --func <fn> \
        --candidate <mutated.c> --out-dir <scratch/out> \
        [--ref <o>] [--baseline-o <o>] [--game heartgold]
```
Emits one JSON object on stdout; human note on stderr. Exit codes:
`0` accepted · `3` compile-failed · `4` target-missing · `5` sibling-regression.

Reference default: `build/<game>/asm/<name>.o` if present (pending file — the asm
object is the retail-equivalent truth), else `build/<game>/src/<name>.o` (last
green build, for a NONMATCHING function inside an already-matched TU). Override
with `--ref`.

### `emit_job.sh` — job scaffolding (permuter-ready)
```
emit_job.sh src/<name>.c <function> [--game heartgold] [--ref <o>]
```
Creates an isolated `$JOBS_ROOT/<name>_<function>/` containing everything
decomp-permuter needs plus our IPA-faithful wiring:

- `seed_full.c` — full TU, target's `#ifdef NONMATCHING` C body promoted to live
  (`make_seed.py`); siblings keep their `#else` asm.
- `base.c` — parse-only single-function source for the permuter (`make_base.py`):
  the target function + a minimal typed context (scalar typedefs, real struct defs
  auto-scanned from `include/`/`src/`, opaque forward-decls for the rest). **Never
  MWCC-compiled.**
- `target.o` — full-TU reference (target = retail asm variant) built with the
  make-equivalent flags, so siblings are byte-identical to every candidate and only
  the target function moves the whole-object objdump score.
- `compile.sh` — `compile_wrapper.sh`: splices the candidate's target function back
  into `seed_full.c` and compiles the **full** TU (keeps `-ipa file` codegen honest).
- `settings.toml` — `func_name` + `compiler_type="mwcc"` + ARM `objdump_command`.
- `job.json` — descriptor read by `compile.sh`, `gate_win.py`, `run_queue.sh`.

Run it:
```
(cd tools/decomp-permuter && .venv/bin/python3 permuter.py <job_dir> -j2 --better-only --stop-on-zero)
```

### `make_seed.py` / `make_base.py` / `fn_extract.py` / `mwcc_compile.py`
The promotion + import glue. `make_seed.py src/<name>.c <func>` collapses exactly the
target's NONMATCHING block to its C branch. `make_base.py <seed> <func>` builds the
permuter-parseable `base.c`. `fn_extract.py` brace-matches a single function
definition (shared by `make_base` and the splice in `compile.sh`). `mwcc_compile.py`
compiles a full TU with the one shared flag set (imported from `score_candidate.py`).

### `gate_win.py` — sibling-guard acceptance gate
```
gate_win.py <job_dir> <output-dir|source.c>
```
The permuter's objdump scorer only judges the target function. This gate splices a
permuter win back into the seed TU and runs `score_candidate.py` (full-TU compile +
baseline sibling guard). Exit `0` = accepted (`score 0` = real byte-match); `5` =
a guarded sibling regressed (discard). **Nothing is a win until it passes this.**

### `run_queue.sh` — overnight driver
```
run_queue.sh [--minutes 40] [--threads 2] [--stop-on-zero]
```
Serial over job dirs (one Wine/MWCC at a time — see CLAUDE.md). Per job: runs the
permuter bounded, then `gate_win.py` over every `output-*/`, and records the best
gated verdict to `queue_result.json`.

### `gen_nonmatching_registry.py` → `../nonmatching_registry.json`
Enumerates every `#ifdef NONMATCHING` block under `src/`, resolves each function
name, and classifies its failure (attempts_log outcome → block comment →
blockers.json gating → unknown). `permuter_candidate` is `false` only for classes
that are provably NOT a codegen search (`param-copyprop-cmp`;
`header-locked-signature` — split-header discipline, no search). Regenerate any
time with `python3 gen_nonmatching_registry.py`.

## The permuter seed nuance (important for the follow-up)

A NONMATCHING function ships as a C reconstruction under `#ifdef NONMATCHING` with
the matching handwritten asm under `#else`. The default build (no `-DNONMATCHING`)
uses the asm, so scoring the *committed* TU trivially matches — that is the
correct baseline ("already solved via asm"), but it is not what the permuter
optimizes.

The permuter's seed has the **target function's C reconstruction active** while
every sibling stays on its asm `#else` (so the sibling guard stays green). This is
what `make_seed.py` produces and `emit_job.sh` wires up.

## Integration architecture (wired, T1.4)

Chosen: **option (a)** — the permuter drives the search with its native objdump
scorer; `score_candidate.py` (via `gate_win.py`) is the final sibling-guard gate.

Why (a) and not plugging `score_candidate.py` in as the permuter's scorer: the
permuter scores every single iteration, so its scorer must be fast and must reduce
to the *target* function's distance; `score_candidate.py` does a full objdiff with a
sibling guard that only matters at *win* time. Splitting them keeps the inner loop
fast while still making the guard non-negotiable before anything is declared solved.

Key mechanics that make this IPA-faithful:

1. **`compile.sh` compiles the whole TU, not `base.c`.** `base.c`'s types are fakes
   for pycparser; it is never fed to MWCC. `compile.sh` extracts the candidate's
   target-function text and splices it into `seed_full.c` (real headers, all
   siblings), then compiles that. So the bytes the permuter scores are the real
   `-ipa file` bytes.
2. **`target.o` is the full retail-matching TU** built with the same flags, so in
   the permuter's *whole-object* objdump diff the siblings cancel and only the
   target function contributes — score `0` ⟺ the target function matches retail.
3. **The gate re-checks siblings.** Because the inner scorer ignores siblings, every
   reported win goes through `gate_win.py` → `score_candidate.py`, which fails
   (exit 5) if any baseline-matching sibling regressed.

`settings.toml`/`permuter_settings.toml`: `compiler_type = "mwcc"`,
`objdump_command = "arm-none-eabi-objdump -drz"`.
