---
name: Decomp Sonnet Loop
description: Continuously decompile assembly files using Sonnet for first-pass C drafts, with the session model (Opus) as orchestrator. Use with /loop /decomp-sonnet-loop
---

## Continuous Decompilation Loop (Sonnet Drafter Mode)

Designed for use with `/loop /decomp-sonnet-loop`. Each iteration handles one file
completely using the `/decomp-sonnet` workflow — Sonnet drafts, Opus judges.

### Each Iteration

1. Run `./tools/decomp_harness/next_target.sh --info` to find the next file
2. If output is `ALL_DONE` — report completion and **stop the loop** (do not schedule another wakeup)
3. Otherwise execute the full `/decomp-sonnet` workflow for that file:

   **Phase 1 — Setup**
   - Read `tools/decomp_harness/DECOMP_AGENT.md` and `tools/decomp_harness/insights.md`
   - Check `attempts_log.py query --file <target>` (dead ends), `knowledge.json` entry, `blockers.json` if gated

   **Phase 2 — Context assembly + Sonnet draft**
   - Gather: dead ends from attempts log, knowledge.json entry, patterns.py hits (2-4 keywords), blocker notes
   - Spawn a `decomp-drafter` agent (runs on Sonnet) with the target file path and assembled context
   - The drafter reads the asm, inc, and headers itself and returns raw C file contents

   **Phase 3 — Draft review + file writing (Orchestrator)**
   - Check draft against dead ends already logged, type conventions, function order, invented headers
   - Write cleaned draft to `src/<basename>.c` (and `include/<basename>.h` if needed)
   - Update `main.lsf`: `Object asm/<basename>.o` → `Object src/<basename>.o`

   **Phase 4 — Build-compare judgment loop (Orchestrator)**
   - `chiri pkg -- build --target main --no-compare` (timeout 1200000). Fix compile errors.
   - `chiri pkg -- compare`. Exit 0 = match.
   - On mismatch: `./tools/asmdiff/asmdiff.sh <address>`, adjust C, log each distinct dead end via `attempts_log.py add`, repeat — max 50 cycles
   - Do NOT re-delegate to Sonnet mid-loop; all adjustment is the orchestrator's judgment

   **Phase 5 — On success**
   - Spawn `decomp-verifier` agent; fix any FAIL findings
   - Update `progress.json` (include `"note": "sonnet-drafted"` in the entry)
   - Add new insights via `patterns.py add` if any
   - `python3 tools/decomp_harness/triage.py --rebuild --top 0`
   - `python3 tools/decomp_harness/sweep_gap.py --check` — if it reports
     un-swept upcoming targets, run the /decomp-sweep workflow for the printed
     files (read-only; safe during the compare build)
   - **Commit this file's work incrementally** — one commit per matched file (the
     new C/H, the `main.lsf` flip, and the refreshed harness state together),
     only after `chiri pkg -- compare` confirmed the match, before moving to the
     next target. Commit as you go; only bundle multiple files into one commit
     when they are genuinely coupled (cluster partners that must land together,
     or a shared IPA/header change several files depend on). Never commit
     unverified or in-progress work.

   **Phase 6 — On failure (after max retries)**
   - NONMATCHING fallback; revert if that also fails
   - Record in `progress.json` with `reason` + `blocker_id`; ensure all dead ends are logged
   - **Continue the loop** to the next file (a single failure is not a stop condition)

4. After each file (success or failure), report:
   - File name, result (matched / NONMATCHING / failed), attempts, whether the draft needed major surgery
   - Running total from `coverage_ledger.py` (printed by the triage rebuild)

### Stop Conditions

- `next_target.sh` returns `ALL_DONE`
- A file fails AND revert also fails, leaving the build broken — stop and report

### State Files

Same as `/decomp-loop`:
- Progress: `tools/decomp_harness/progress.json`
- Coverage ledger: `tools/decomp_harness/coverage_ledger.json` + `COVERAGE.md`
- Triage queue: `tools/decomp_harness/triage_report.json`
- Patterns: `tools/decomp_harness/patterns.json` → `insights.md` (generated)
- Attempts log: `tools/decomp_harness/attempts_log.jsonl`
- Sweep pre-analysis: `tools/decomp_harness/knowledge.json`
- Blockers: `tools/decomp_harness/blockers.json`

### Build Verification

`chiri pkg -- compare` exits 0 on SHA1 match and non-zero on mismatch. Always check exit code, not output text. Always use `timeout: 1200000`.
