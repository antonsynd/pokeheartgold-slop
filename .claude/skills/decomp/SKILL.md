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
3. **Write C**: Create `src/<basename>.c` (and `include/<basename>.h` if public symbols exist)
4. **Update LSF**: In `main.lsf`, change `Object asm/<basename>.o` to `Object src/<basename>.o`
5. **Build**: Run `make main COMPARE=0 -j4` — fix compilation errors
6. **Compare**: Run `make compare -j4` — if exit code is 0, SHA1 matches and you're done

If comparison fails (non-zero exit):
7. **Diff**: Run `./tools/asmdiff/asmdiff.sh <address>` to see byte differences
8. **Adjust**: Modify the C code based on the diff (see DECOMP_AGENT.md for common fixes)
9. **Log dead ends**: when a *distinct approach* for a function fails (not every
   iteration — every distinct C shape), record it:
   ```bash
   python3 tools/decomp_harness/attempts_log.py add \
       --file asm/<basename>.s --function <fn> \
       --approach "<C shape tried>" --outcome <regalloc_diff|branch_polarity|...> \
       --diff "<compact byte/insn diff>" --lesson "<what this rules out>"
   ```
10. **Repeat**: Go to step 5, max 50 build-compare cycles

### On Success

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
5. Report the result

### On Failure (after max retries)

1. Use NONMATCHING fallback for unmatched functions (see DECOMP_AGENT.md)
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
- **Build verification**: `make compare` exit code 0 = match, non-zero = mismatch. Check the exit code, not the output text.
