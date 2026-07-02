---
name: Decomp Delegate
description: Decompile an assembly file using Qwen (local Ollama) for the first-pass C draft, with Claude as orchestrator for context prep, review, and the build-compare judgment loop. Run with /decomp-delegate or /decomp-delegate asm/filename.s
---

## Decomp with Local-Model Drafting

Same goal as `/decomp` (byte-matching C), but offloads the first-pass C draft to
the local Qwen model via `delegate.sh`. Claude prepares context, reviews the draft,
integrates it, and owns the full build-compare judgment loop.

### Phase 1 — Orchestrator Setup (Claude, same as /decomp)

1. Read `tools/decomp_harness/DECOMP_AGENT.md` and `tools/decomp_harness/insights.md`
2. Determine target:
   - If the user specified a file (e.g., `/decomp-delegate asm/unk_02004A44.s`), use that
   - Otherwise run `./tools/decomp_harness/next_target.sh --info`
3. Check prior knowledge:
   - `python3 tools/decomp_harness/attempts_log.py query --file asm/<basename>.s` — dead ends to avoid
   - `knowledge.json` entry for this file (sweep hypotheses, risks)
   - `blockers.json` if the triage entry shows `gated_by`

### Phase 2 — Context Assembly (Claude prepares the Qwen prompt)

Assemble a prompt that gives Qwen everything it needs and nothing it doesn't. Write it
to `/tmp/<basename>_delegate_prompt.txt`:

```
SYSTEM:
You are a decompilation assistant for a Pokémon HeartGold/SoulSilver matching decomp
(MWCC 2.0/sp2p2, ARM946E-S, Thumb). Your job: produce a first-pass C implementation
of the assembly below. Output ONLY the C file contents (no markdown fences, no
explanation). Rules:
- Include global.h first, then only headers you can see in the context
- Function order must match the asm exactly
- Use u8/u16/u32/s8/s16/s32/BOOL for types; HeapID for heap IDs
- const for .rodata, non-const for .data
- Do NOT add comments
- For any function whose logic you cannot confidently derive, emit a stub:
  void FuncName(void) {}  // STUB

USER:
=== TARGET FILE: asm/<basename>.s ===
<full contents of the .s file>

=== INCLUDE FILE: asm/include/<basename>.inc ===
<full contents of the .inc file>

=== KNOWN SIGNATURES (from knowledge.json) ===
<paste the "symbols" block for this file from knowledge.json, if present>

=== RELEVANT HEADERS (include/ files for called functions) ===
<paste the include content for each header you found for external callees>

=== MATCHING PATTERNS TO APPLY ===
<output of: python3 tools/decomp_harness/patterns.py query --grep <keyword1>
            python3 tools/decomp_harness/patterns.py query --grep <keyword2>
  Pick 2-4 keywords drawn from the function names and key callees in this file>
```

Key discipline: garbage context → garbage draft. Include only headers that are
directly called, and only the pattern entries most relevant to this file's idioms.
Omit anything you'd have to guess.

### Phase 3 — Delegate to Qwen

```bash
cat /tmp/<basename>_delegate_prompt.txt | tools/decomp_harness/delegate.sh
```

Capture the output. If `delegate.sh` errors (Ollama not running, model missing), fall
back to generating the draft yourself and continue the normal `/decomp` flow.

### Phase 4 — Orchestrator Review of the Draft (Claude)

Before touching any file, review the raw draft against:

1. **Dead ends**: Does the draft try an approach already logged in `attempts_log.py`? If so, fix it before writing.
2. **Type conventions**: u8/u16/u32 used correctly? Local models often use `int` where the asm implies `u8`/`u16`.
3. **Function order**: Does it match the asm? Reorder if not.
4. **Missing stubs vs wrong implementations**: Prefer a stub (empty body) over a plausible-but-wrong implementation — the build loop will flag stubs as clear mismatches rather than subtle ones.
5. **Header includes**: Strip any `#include` the draft invented that isn't in your assembled context.

After review, write the cleaned draft to `src/<basename>.c` (and `include/<basename>.h`
if public symbols exist).

### Phase 5 — Build-Compare Judgment Loop (Claude owns this entirely)

This is identical to the standard `/decomp` workflow from step 4 onward:

1. **Update LSF**: `main.lsf`: `Object asm/<basename>.o` → `Object src/<basename>.o`
2. **Build**: `chiri pkg -- build --target main --no-compare` (timeout 1200000). Fix compile errors.
3. **Compare**: `chiri pkg -- compare`. Exit 0 = match → go to Phase 6.
4. **Diff on mismatch**: `./tools/asmdiff/asmdiff.sh <address>` to see byte differences. For overlays: `./tools/asmdiff/asmdiff.sh -m OVY_NN <address>`
5. **Adjust C** based on the diff (register order → reorder locals; push/pop count → add/remove temps; branch direction → if/else ↔ ternary)
6. **Log each distinct dead end** (not every iteration — every distinct C shape):
   ```bash
   python3 tools/decomp_harness/attempts_log.py add \
       --file asm/<basename>.s --function <fn> \
       --approach "<C shape tried>" --outcome <regalloc_diff|...> \
       --diff "<compact diff>" --lesson "<what this rules out>"
   ```
7. Repeat build-compare, max 50 cycles.

Do NOT re-delegate to Qwen during the judgment loop — that loop requires understanding
the byte diff and applying matching heuristics, which the local model cannot do reliably.

### Phase 6 — On Success

Same as `/decomp`:

1. Spawn `decomp-verifier` agent: "Verify the just-matched decomp of <basename> in /Users/anton/Documents/github/pokeheartgold-slop." Fix any FAIL findings.
2. Update `progress.json`:
   ```bash
   python3 -c "
   import json
   entry = {'file': 'asm/<basename>.s', 'lines': <lines>, 'functions': <nfuncs>,
            'attempts': <attempts>, 'result': 'matched', 'note': 'delegate-drafted'}
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
3. Add new insights: `python3 tools/decomp_harness/patterns.py add --json '...'`
4. Regenerate ledger + triage: `python3 tools/decomp_harness/triage.py --rebuild --top 5`
5. Sweep top-up: `python3 tools/decomp_harness/sweep_gap.py --check` — on a gap,
   run the /decomp-sweep workflow for the printed files (read-only)
6. Report: file name, match result, attempts, whether the Qwen draft needed major surgery

### Phase 7 — On Failure (after max retries)

Same as `/decomp`: NONMATCHING fallback, revert if that fails, mark in `progress.json`
with `reason` and `blocker_id`, ensure all dead ends are logged.

### Delegation Notes

- **delegate.sh** requires `ollama serve` running locally with `qwen3-coder:30b` pulled.
  Override model: `DELEGATE_MODEL=<model> cat prompt | tools/decomp_harness/delegate.sh`
  Override URL: `OLLAMA_URL=http://host:port`
- The draft is an **untrusted input** — treat it like code review, not trusted output.
- Attribution: log the `attempts_log` entry with `--approach "delegate-draft"` so future
  sessions know the draft came from the local model.
- Good targets for this skill: long tails of mechanical getters/setters, save-chunk
  accessors, data-only files. Avoid: IPA-heavy files, files with `gated_by` blockers,
  files that burned many attempts already (the judgment loop is what matters there).
- See `tools/decomp_harness/DELEGATION.md` for the full contract.

### Important Rules (same as /decomp)

- Do NOT modify any file except `src/<basename>.c`, `include/<basename>.h`, the one line in `main.lsf`, and harness state files
- Do NOT delete or modify the original `.s` file
- Function order in the C file must match the asm exactly
- Keep the build green — if something breaks, revert before moving on
- **Build verification**: `chiri pkg -- compare` exit code 0 = match. Always check exit code, not output text.
