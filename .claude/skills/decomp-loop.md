---
name: Decomp Loop
description: Continuously decompile assembly files one by one in a loop. Use with /loop /decomp-loop
---

## Continuous Decompilation Loop

This skill is designed to be used with `/loop /decomp-loop` for continuous autonomous decompilation.

### Each Iteration

1. Run `./tools/decomp_harness/next_target.sh --info` to find the next file
2. If output is `ALL_DONE`, report completion and stop the loop
3. Otherwise, invoke the decomp skill workflow for that file:

   a. Read `tools/decomp_harness/DECOMP_AGENT.md` and `tools/decomp_harness/insights.md`
   b. Read the target asm file and its .inc file
   c. Search for relevant headers and similar decompiled files
   d. Write the C file, update main.lsf
   e. Build with `make main COMPARE=0 -j4`, fix compile errors
   f. Compare with `make compare -j4`, check exit code (0 = match)
   g. If mismatch, use `./tools/asmdiff/asmdiff.sh` to see diffs, adjust C, repeat (max 50 build-compare cycles per file)
   h. On success: update progress.json, append insights, commit
   i. On failure after 50 attempts: use NONMATCHING fallback, then revert if that also fails

4. After completing (or failing) one file, report status:
   - File name, result (matched/NONMATCHING/failed), attempts taken
   - Current progress stats from progress.json

### Loop Behavior

- Each loop iteration handles ONE file completely
- The loop continues to the next file automatically
- Stop conditions:
  - All files decompiled (`ALL_DONE` from next_target.sh)
  - A file fails after max retries AND revert fails (build broken)

### State Files

- Progress: `tools/decomp_harness/progress.json`
- Insights: `tools/decomp_harness/insights.md`
- Logs: `tools/decomp_harness/logs/<basename>.log`

### Build Verification

`make compare` exits 0 on SHA1 match and non-zero on mismatch. Always check the exit code, not the output text.
