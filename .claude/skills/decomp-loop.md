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
   e. Build and compare, iterating up to 20 times
   f. On success: update progress.json, append insights
   g. On failure after 20 attempts: use NONMATCHING fallback or revert

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
