---
name: Decomp
description: Decompile the next assembly file to matching C code. Run with /decomp or /decomp asm/filename.s
---

## Decompile Assembly to Matching C

Decompile one assembly file from `asm/` into byte-matching C code.

### Setup

1. Read `tools/decomp_harness/DECOMP_AGENT.md` for full instructions
2. Read `tools/decomp_harness/insights.md` for accumulated matching knowledge
3. Determine the target file:
   - If the user specified a file (e.g., `/decomp asm/unk_02004A44.s`), use that
   - Otherwise, run `./tools/decomp_harness/next_target.sh --info` to get the next undone file

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
9. **Repeat**: Go to step 5, max 50 build-compare cycles

### On Success

1. Update progress.json:
   ```bash
   python3 -c "
   import json
   with open('tools/decomp_harness/progress.json', 'r') as f:
       d = json.load(f)
   if 'asm/<basename>.s' not in d['completed']:
       d['completed'].append('asm/<basename>.s')
       d['stats']['total_matched'] += 1
   d['in_progress'] = None
   with open('tools/decomp_harness/progress.json', 'w') as f:
       json.dump(d, f, indent=2)
   "
   ```
2. Append insights learned to `tools/decomp_harness/insights.md`
3. Report the result

### On Failure (after max retries)

1. Use NONMATCHING fallback for unmatched functions (see DECOMP_AGENT.md)
2. If even NONMATCHING doesn't build cleanly, revert: `./tools/decomp_harness/revert.sh asm/<basename>.s`
3. Mark as failed in progress.json
4. Report what went wrong

### Important Rules

- Do NOT modify any file except `src/<basename>.c`, `include/<basename>.h`, and the one line in `main.lsf`
- Do NOT delete or modify the original `.s` file
- Function order in the C file must match the asm file exactly
- Keep the build green — if something breaks, revert before moving on
- **Build verification**: `make compare` exit code 0 = match, non-zero = mismatch. Check the exit code, not the output text.
