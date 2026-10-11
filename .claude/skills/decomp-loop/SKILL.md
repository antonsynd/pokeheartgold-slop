---
name: Decomp Loop
description: Continuously decompile assembly files one by one in a loop. Use with /loop /decomp-loop
---

## Continuous Decompilation Loop

This skill is designed to be used with `/loop /decomp-loop` for continuous autonomous decompilation.

### Each Iteration

1. Run `./tools/decomp_harness/next_target.sh --info` to find the next file
   (triage-queue order, easiest first; the `--info` output includes the triage
   detail — unknown callees, risks, `gated_by`)
   If it prints a claim WARNING (someone else claimed the file or has a PR touching it),
   carry on anyway (claims can go stale) and mention it in this iteration's report.
   If it is tagged `[SPLIT unit of asm/<base>.s]`, follow `tools/decomp_harness/SPLIT_TARGETS.md`
   alongside the workflow below: claim `asm/<base>.s` rather than the unit, and a
   `src/<base>_NN.c` unit is rewritten in place (no `main.lsf` flip).
2. If output is `ALL_DONE`, report completion and stop the loop
3. Otherwise, invoke the decomp skill workflow for that file:

   a0. Claim it: `python3 tools/decomp_harness/claim.py open <target>` prints the claim
      issue number `<N>`
   a. Read `tools/decomp_harness/DECOMP_AGENT.md` and `tools/decomp_harness/insights.md`
   b. Check prior knowledge: `attempts_log.py query --file <target>` (dead ends),
      `knowledge.json` (sweep pre-analysis hypotheses), `blockers.json` if gated,
      `twins.py file <target>` (Platinum twins + `nonmatching/` drafts; see `/decomp` step 4)
   c. Read the target asm file and its .inc file
   d. Search for relevant headers and similar decompiled files
   e. Write the C file, update main.lsf
   f. Build with `chiri pkg -- build --target main --no-compare` (timeout 1200000),
      fix compile errors
   g. Compare with `chiri pkg -- compare`, check exit code (0 = match)
   h. If mismatch, use `./tools/asmdiff/asmdiff.sh` to see diffs, adjust C, repeat
      (max 50 build-compare cycles per file); log each distinct failed approach
      with `attempts_log.py add`
   i. On success: update progress.json, add new insights via `patterns.py add`
      (insights.md is generated — never edit it directly), run
      `twins.py prune <target>` and `triage.py --rebuild --top 0` to refresh ledger + queue; then run
      `python3 tools/decomp_harness/sweep_gap.py --check` and, if it reports
      un-swept upcoming targets, run the /decomp-sweep workflow for the printed
      files (read-only — safe to overlap with the compare build); then **commit
      this file's work incrementally** (message ends with `Closes #<N>`) — one commit per matched file (the new
      C/H, the `main.lsf` flip, and the refreshed harness state together) once
      `chiri pkg -- compare` confirms the match, before moving to the next
      target. Commit as you go; only bundle multiple files into one commit when
      they are genuinely coupled (cluster partners that must land together, or a
      shared IPA/header change several files depend on). Do not commit unverified
      or in-progress work — wait for the SHA1 match first.
   j. On failure after 50 attempts: use NONMATCHING fallback, then revert if that
      also fails; record the reason (and blocker_id) in progress.json and make
      sure the dead ends are in the attempts log. If reverted, release the claim:
      `claim.py close <target> --note "<why>"`

4. After completing (or failing) one file, report status:
   - File name, result (matched/NONMATCHING/failed), attempts taken
   - Function-level totals from the `coverage_ledger.py` output (printed by the
     triage rebuild)

### Loop Behavior

- Each loop iteration handles ONE file completely
- The loop continues to the next file automatically
- Stop conditions:
  - All files decompiled (`ALL_DONE` from next_target.sh)
  - A file fails after max retries AND revert fails (build broken)

### State Files

- Progress: `tools/decomp_harness/progress.json`
- Coverage ledger (generated): `tools/decomp_harness/coverage_ledger.json` + `COVERAGE.md`
- Triage queue (generated): `tools/decomp_harness/triage_report.json`
- Matching knowledge: `tools/decomp_harness/patterns.json` (source of truth) → `insights.md` (generated)
- Attempts log: `tools/decomp_harness/attempts_log.jsonl`
- Sweep pre-analysis: `tools/decomp_harness/knowledge.json`
- Blockers: `tools/decomp_harness/blockers.json`
- Logs: `tools/decomp_harness/logs/<basename>.log`

### Build Verification

`chiri pkg -- compare` exits 0 on SHA1 match and non-zero on mismatch. Always check the exit code, not the output text. Always use `timeout: 1200000`.
