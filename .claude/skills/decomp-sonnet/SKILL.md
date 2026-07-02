---
name: Decomp Sonnet
description: Decompile an assembly file using Sonnet for the first-pass C draft, with the session model (Opus) as orchestrator for review and the build-compare judgment loop. Run with /decomp-sonnet or /decomp-sonnet asm/filename.s
---

## Decomp with Sonnet Drafting

Same goal as `/decomp` (byte-matching C), but offloads the first-pass C draft to
a Sonnet subagent via the `decomp-drafter` agent. The session model (Opus)
prepares context, reviews the draft, and owns the full build-compare judgment loop.

### Phase 1 — Orchestrator Setup

1. Read `tools/decomp_harness/DECOMP_AGENT.md` and `tools/decomp_harness/insights.md`
2. Determine target:
   - If the user specified a file (e.g., `/decomp-sonnet asm/unk_02004A44.s`), use that
   - Otherwise run `./tools/decomp_harness/next_target.sh --info`
3. Check prior knowledge:
   - `python3 tools/decomp_harness/attempts_log.py query --file asm/<basename>.s` — dead ends to avoid
   - `knowledge.json` entry for this file (sweep hypotheses, risks)
   - `blockers.json` if the triage entry shows `gated_by`

### Phase 2 — Context Assembly

Gather the key context that the Sonnet drafter needs. The drafter has Read/Grep/Glob
access and will read the asm files itself, but needs this guidance up front:

1. Query dead ends: `python3 tools/decomp_harness/attempts_log.py query --file asm/<basename>.s`
2. Query relevant patterns: `python3 tools/decomp_harness/patterns.py query --grep <keyword>` (2-4 keywords from function names and key callees)
3. Extract the `knowledge.json` entry for this file (if it exists)
4. Note any blockers from `blockers.json`

### Phase 3 — Delegate to Sonnet

Spawn an agent with `subagent_type: "decomp-drafter"`. The prompt must include:

```
Decompile asm/<basename>.s to matching C.

Project root: /Users/anton/Documents/github/pokeheartgold-slop

=== DEAD ENDS (do NOT retry these approaches) ===
<paste attempts_log output, or "None" if clean>

=== KNOWN SIGNATURES (from knowledge.json) ===
<paste the symbols/risks block for this file, or "No pre-analysis available">

=== MATCHING PATTERNS TO APPLY ===
<paste patterns.py query output for relevant keywords>

=== BLOCKERS ===
<paste any blocker notes, or "None">
```

The drafter agent reads the asm, inc, and headers itself and returns the raw C
file contents as its response. No markdown, no explanation — just C code.

### Phase 4 — Orchestrator Review of the Draft

Before touching any file, review the raw draft against:

1. **Dead ends**: Does the draft try an approach already logged in `attempts_log.py`? If so, fix it before writing.
2. **Type conventions**: u8/u16/u32 used correctly? Sonnet sometimes uses `int` where the asm implies `u8`/`u16`.
3. **Function order**: Does it match the asm? Reorder if not.
4. **Missing stubs vs wrong implementations**: Prefer a stub over a plausible-but-wrong implementation.
5. **Header includes**: Strip any `#include` the draft invented that doesn't exist in `include/`.

After review, write the cleaned draft to `src/<basename>.c` (and `include/<basename>.h`
if public symbols exist).

### Phase 5 — Build-Compare Judgment Loop (Orchestrator owns this entirely)

This is identical to the standard `/decomp` workflow:

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

Do NOT re-delegate to Sonnet during the judgment loop — that loop requires
understanding the byte diff and applying matching heuristics. The orchestrator's
judgment is what matters here.

### Phase 6 — On Success

1. Spawn `decomp-verifier` agent: "Verify the just-matched decomp of <basename> in /Users/anton/Documents/github/pokeheartgold-slop." Fix any FAIL findings.
2. Update `progress.json`:
   ```bash
   python3 -c "
   import json
   entry = {'file': 'asm/<basename>.s', 'lines': <lines>, 'functions': <nfuncs>,
            'attempts': <attempts>, 'result': 'matched', 'note': 'sonnet-drafted'}
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
6. Report: file name, match result, attempts, whether the Sonnet draft needed major surgery

### Phase 7 — On Failure (after max retries)

Same as `/decomp`: NONMATCHING fallback, revert if that fails, mark in `progress.json`
with `reason` and `blocker_id`, ensure all dead ends are logged.

### Important Rules (same as /decomp)

- Do NOT modify any file except `src/<basename>.c`, `include/<basename>.h`, the one line in `main.lsf`, and harness state files
- Do NOT delete or modify the original `.s` file
- Function order in the C file must match the asm exactly
- Keep the build green — if something breaks, revert before moving on
- **Build verification**: `chiri pkg -- compare` exit code 0 = match. Always check exit code, not output text.
