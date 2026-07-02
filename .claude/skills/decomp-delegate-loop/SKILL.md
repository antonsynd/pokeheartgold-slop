---
name: Decomp Delegate Loop
description: Continuously decompile assembly files using Qwen (local Ollama) for first-pass C drafts, with Claude as orchestrator. Use with /loop /decomp-delegate-loop
---

## Continuous Decompilation Loop (Delegate Mode)

Designed for use with `/loop /decomp-delegate-loop`. Each iteration handles one file
completely using the `/decomp-delegate` workflow — Qwen drafts, Claude judges.

### Each Iteration

1. Run `./tools/decomp_harness/next_target.sh --info` to find the next file
2. If output is `ALL_DONE` — report completion and **stop the loop** (do not schedule another wakeup)
3. Otherwise execute the full `/decomp-delegate` workflow for that file:

   **Phase 1 — Setup**
   - Read `tools/decomp_harness/DECOMP_AGENT.md` and `tools/decomp_harness/insights.md`
   - Check `attempts_log.py query --file <target>` (dead ends), `knowledge.json` entry, `blockers.json` if gated

   **Phase 2 — Context assembly + Qwen draft**
   - Collect: full .s file, .inc file, relevant headers for called functions, knowledge.json symbols block, patterns.py hits (2-4 keywords from function names / key callees)
   - Write to `/tmp/<basename>_delegate_prompt.txt` using the system/user prompt structure from the `/decomp-delegate` skill
   - Run: `cat /tmp/<basename>_delegate_prompt.txt | tools/decomp_harness/delegate.sh`
   - If delegate.sh fails (Ollama unreachable) — **stop the loop** and report the error; do not fall back silently (a dead Ollama will fail every subsequent iteration)

   **Phase 3 — Draft review + file writing (Claude)**
   - Check draft against dead ends already logged, type conventions, function order, invented headers
   - Write cleaned draft to `src/<basename>.c` (and `include/<basename>.h` if needed)
   - Update `main.lsf`: `Object asm/<basename>.o` → `Object src/<basename>.o`

   **Phase 4 — Build-compare judgment loop (Claude)**
   - `chiri pkg -- build --target main --no-compare` (timeout 1200000). Fix compile errors.
   - `chiri pkg -- compare`. Exit 0 = match.
   - On mismatch: `./tools/asmdiff/asmdiff.sh <address>`, adjust C, log each distinct dead end via `attempts_log.py add`, repeat — max 50 cycles
   - Do NOT re-delegate to Qwen mid-loop; all adjustment is Claude's judgment

   **Phase 5 — On success**
   - Spawn `decomp-verifier` agent; fix any FAIL findings
   - Update `progress.json` (include `"note": "delegate-drafted"` in the entry)
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
- `delegate.sh` is unreachable (Ollama down) — stop and report, don't silently grind
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

### Prerequisites

- `ollama serve` running locally with `qwen3-coder:30b` pulled
- Override model: `DELEGATE_MODEL=<model>`; override URL: `OLLAMA_URL=http://host:port`
- Best targets: mechanical files (getters/setters, save-chunk accessors, data-only); triage queue already orders easiest-first
