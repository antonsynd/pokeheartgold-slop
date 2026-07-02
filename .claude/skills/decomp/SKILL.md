---
name: Decomp
description: Decompile the next assembly file to matching C code. Run with /decomp or /decomp asm/filename.s
---

## Decompile Assembly to Matching C

Decompile one assembly file from `asm/` into byte-matching C code.

### Setup

1. Read `tools/decomp_harness/DECOMP_AGENT.md` for full instructions
2. Read `tools/decomp_harness/insights.md` for accumulated matching knowledge
   (generated from `patterns.json`; targeted lookup:
   `python3 tools/decomp_harness/patterns.py query --grep <word>`)
3. Determine the target file:
   - If the user specified a file (e.g., `/decomp asm/unk_02004A44.s`), use that
   - Otherwise, run `./tools/decomp_harness/next_target.sh --info` — it serves the
     triage queue easiest-first (refresh with `python3 tools/decomp_harness/triage.py --rebuild`)
4. Check prior knowledge for this file:
   - `python3 tools/decomp_harness/attempts_log.py query --file asm/<basename>.s`
     — past approaches and dead ends; never re-try a logged dead end
   - If `tools/decomp_harness/knowledge.json` has this file (sweep pre-analysis),
     use its signature/struct hypotheses and risk notes — verify against the asm,
     they are hypotheses, not ground truth
   - If the triage entry shows `gated_by`, read the matching entry in
     `tools/decomp_harness/blockers.json` and plan around that blocker

### Workflow

For the target `asm/<basename>.s`:

1. **Analyze**: Read `asm/<basename>.s` and `asm/include/<basename>.inc`
2. **Research**: Search `include/` for headers of functions called by this code. Look at similar `src/` files for patterns.
3. **Write C**: Create `src/<basename>.c` (and `include/<basename>.h` if public symbols exist).
   For long tails of mechanical functions (getters/setters, save-chunk accessors) you may
   draft bodies via `tools/decomp_harness/delegate.sh` (local model) — drafts are untrusted;
   review against the patterns DB before building (see `tools/decomp_harness/DELEGATION.md`)
4. **Update LSF**: In `main.lsf`, change `Object asm/<basename>.o` to `Object src/<basename>.o`
   (the LSF edit is only needed for the finalization link in step 10, not for the
   compile_one inner loop below — but make it now so it isn't forgotten)
5. **Compile (inner loop)**: Run `tools/decomp_harness/compile_one.sh src/<basename>.c`
   (timeout 60000). This compiles the single TU standalone — NO full ARM9 link — and
   objdiffs the result against the committed asm reference `build/heartgold.us/asm/<basename>.o`.
   Iterate here: fix compile errors, reshape the C, re-run. One cycle is a few seconds
   versus ~45–120 s for a full link. (`--no-objdiff` for compile-only; `--game soulsilver`
   for the SS variant.)
6. **Objdiff to green**: Keep iterating step 5 until objdiff reports all functions MATCH.
   For a byte-level view of a still-diffing function, run
   `python3 tools/decomp_harness/objdiff.py build/heartgold.us/asm/<basename>.o \
   build/heartgold.us/compile_one/<basename>.o --bytes <fn>`.

Iterate on step 5 until objdiff is green, then:
7. **Diff (optional)**: For a linked-address view, run `./tools/asmdiff/asmdiff.sh <address>`.
8. **Adjust**: Modify the C code based on the diff (see DECOMP_AGENT.md for common fixes)
9. **Log dead ends**: when a *distinct approach* for a function fails (not every
   iteration — every distinct C shape), record it:
   ```bash
   python3 tools/decomp_harness/attempts_log.py add \
       --file asm/<basename>.s --function <fn> \
       --approach "<C shape tried>" --outcome <regalloc_diff|branch_polarity|...> \
       --diff "<compact byte/insn diff>" --lesson "<what this rules out>"
   ```
10. **Repeat**: Go to step 5, max 50 compile-objdiff cycles
11. **Finalize (unchanged final gate)**: Once objdiff is green in the inner loop, run the
    full link once to confirm section/rodata/alignment layout: `chiri pkg -- build --target
    main --no-compare` (timeout 1200000), then `chiri pkg -- compare`. A file is only "done"
    when **BOTH** hold: objdiff shows all functions MATCH **and** `chiri pkg -- compare` exits
    0 (full-ROM SHA1). objdiff alone is never sufficient — the SHA1 check catches section-level
    differences (alignment, padding, rodata layout) that a single-TU objdiff cannot see.
    `compile_one.sh` + objdiff is the fast inner loop; `--target main` and full `compare` are
    reserved for this finalization.

### On Success

0. Run the post-match verifier BEFORE committing: spawn an agent with
   subagent_type `decomp-verifier` and the prompt
   "Verify the just-matched decomp of <basename> in /Users/.../pokeheartgold-slop."
   Fix any FAIL findings (they are process errors: visibility, headers, lsf,
   scope) and re-run until it passes. The verifier is read-only and cheap
   (runs on sonnet).
1. Update progress.json (dict entry, matching the existing format):
   ```bash
   python3 -c "
   import json
   entry = {'file': 'asm/<basename>.s', 'lines': <lines>, 'functions': <nfuncs>,
            'attempts': <attempts>, 'result': 'matched'}
   with open('tools/decomp_harness/progress.json') as f:
       d = json.load(f)
   if not any((e['file'] if isinstance(e, dict) else e) == entry['file'] for e in d['completed']):
       d['completed'].append(entry)
       d['stats']['total_matched'] += 1
   d['in_progress'] = None
   with open('tools/decomp_harness/progress.json', 'w') as f:
       json.dump(d, f, indent=2)
   "
   ```
2. Add any new matching insight to the pattern DB (do NOT edit insights.md — it's generated):
   ```bash
   python3 tools/decomp_harness/patterns.py add --json '{"id":"...","category":"...","title":"...","body":"..."}'
   ```
3. Log matched functions that took real effort to the attempts log with outcome `matched`
4. Regenerate the ledger and triage queue:
   ```bash
   python3 tools/decomp_harness/triage.py --rebuild --top 5
   ```
5. **Sweep top-up** (keeps pre-analysis ahead of the queue): check for un-swept
   upcoming targets and close the gap — sweeps are read-only, so kick them off
   while the finalize `compare` build runs:
   ```bash
   python3 tools/decomp_harness/sweep_gap.py --check   # exit 1 = gap
   ```
   If it reports a gap, invoke `/decomp-sweep` with the printed file list.
6. Report the result

### On Failure (after max retries)

1. Generate the NONMATCHING fallback for each unmatched function — one command
   produces the complete paste-ready block (extern decls, `#ifdef NONMATCHING`
   C-doc stub + `#else` hand-written `asm <sig> { ... }` under
   `// clang-format off/on`, literal pools folded to `ldr rN,=X`, jump tables
   re-encoded from the assembled `.o`):
   ```bash
   python3 tools/decomp_harness/nonmatch_fallback.py \
     asm/<basename>.s build/heartgold.us/asm/<basename>.o <func> \
     [--sig 'void <func>(int a)']   # --sig only if no include/*.h or knowledge.json prototype
   ```
   Paste the block into `src/<basename>.c` at the function's position (order must
   match the asm). Fill in named params if the emitted sig used bare types, move
   the `// extern` hint lines to real extern decls near the top of the TU (delete
   any already declared; runtime helpers like `_s32_div_f` are emitted as real
   prototypes and must stay), and document the intended C shape in the stub.
   Record the blocker in `blockers.json`. See DECOMP_AGENT.md for the convention.
2. If even NONMATCHING doesn't build cleanly, revert: `./tools/decomp_harness/revert.sh asm/<basename>.s`
3. Mark as failed in progress.json (include a `reason`, and a `blocker_id` if it
   matches an entry in `blockers.json`). If it's a *new* systemic blocker, add it
   to `tools/decomp_harness/blockers.json` with `files_blocked` and a `fix_plan`.
4. Make sure every dead end is in the attempts log — that's what stops the next
   session from repeating this failure
5. Regenerate ledger + triage (step 4 above), then report what went wrong

### Important Rules

- Do NOT modify any file except `src/<basename>.c`, `include/<basename>.h`, the one line in `main.lsf`, and the harness state files named above
- Do NOT delete or modify the original `.s` file
- Function order in the C file must match the asm file exactly
- Keep the build green — if something breaks, revert before moving on
- **Build verification**: `chiri pkg -- compare` exit code 0 = match, non-zero = mismatch. Check the exit code, not the output text. Always use `timeout: 1200000`.
