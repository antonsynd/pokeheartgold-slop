---
name: decomp-status
description: Summarize decomp harness progress — function-level coverage, blockers ranked by gating, the next triage targets, and open harness issues. Use when the user asks for decomp status, progress, where we left off, or what to decompile next.
---

# Decomp Status

Report the current state of the decompilation effort. All state lives in `tools/decomp_harness/`. This is read-only except for regenerating the derived ledger/triage files — do not build anything.

1. Regenerate and read the function-level ledger (the headline numbers):

```bash
python3 tools/decomp_harness/coverage_ledger.py
```

This prints function totals (tracked / matched / pending / partial-in-blocked) and per-status file counts, and refreshes `COVERAGE.md` + `coverage_ledger.json`. Read the Blockers table in `COVERAGE.md` — blockers are ranked by how many pending files they gate; lead with the top one.

2. Show the head of the triage queue (what's next, easiest first):

```bash
python3 tools/decomp_harness/triage.py --top 10
```

3. Per-file detail when useful — `progress.json` (attempt history, failure reasons), `attempts_log.py summary` (logged dead ends), `knowledge.json` (which files already have sweep pre-analysis).

4. Check open harness issues: read `tools/decomp_harness/TODO.md` and report the section headings (and any that block the next target).

Output a short report in prose: function-level coverage (matched/pending of tracked), what's blocked and which blocker gates the most pending files, the next 2-3 triage targets, and any open issue that affects them. Suggest follow-ups: `/decomp` (next target), `/decomp-sweep N` (pre-analyze the queue head if knowledge.json doesn't cover it), or `/loop /decomp-loop`.
