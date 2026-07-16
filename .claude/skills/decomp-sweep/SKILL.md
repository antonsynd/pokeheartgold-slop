---
name: Decomp Sweep
description: Run a wave of parallel read-only pre-analysis agents over upcoming asm targets and merge results into knowledge.json. Run with /decomp-sweep [N] or /decomp-sweep asm/file1.s asm/file2.s ...
---

## Pre-Analysis Sweep

Fan out read-only `asm-analyzer` agents over upcoming decomp targets so that
later `/decomp` runs start with cross-file signatures and struct layouts
instead of guessing. Analysis agents never build, so a sweep can run while a
build is in progress.

### Target selection

- If the user passed file paths, use those.
- If the user passed a number N, take the top N un-swept files from the
  triage queue. Otherwise default to N=10.

```bash
python3 tools/decomp_harness/triage.py --rebuild --top 0   # refresh queue
python3 -c "
import json, pathlib
q = json.load(open('tools/decomp_harness/triage_report.json'))['queue']
done = {p.stem for p in pathlib.Path('tools/decomp_harness/sweep/out').glob('*.json')}
todo = [r['file'] for r in q if pathlib.Path(r['file']).stem not in done]
print('\n'.join(todo[:N]))
"
```

### Wave execution

For each target file, spawn an `asm-analyzer` agent (subagent_type:
`asm-analyzer`) — batch them 4–8 per message so they run concurrently. Each
agent prompt must say:

> Read `tools/decomp_harness/sweep/SWEEP_AGENT.md` and follow it exactly.
> Your target file is `asm/<name>.s`. Return ONLY the JSON object described
> there as your final message — no prose, no markdown fences.

The agents are read-only; **you** write each returned JSON verbatim to
`tools/decomp_harness/sweep/out/<basename>.json`. If an agent returns
malformed JSON (wrap in a quick `json.loads` check), re-prompt it once via
SendMessage; if still malformed, skip the file and note it.

### Merge and report

After all agents in the wave return:

```bash
python3 tools/decomp_harness/sweep/merge_sweep.py
for f in <swept asm files>; do
  python3 tools/decomp_harness/asm_oracle.py "$f" --update-knowledge
done
```

The oracle pass (T2.4) adds machine-derived signedness/width/exact-type
constraints and NONMATCHING pre-flags under each file's `oracle` key —
evidence-backed, unlike the sweep agents' hypotheses. merge_sweep preserves
existing oracle blocks across rebuilds, so the order of the two steps is not
load-bearing.

Report: files analyzed, symbol/struct counts, and especially any
`signature_conflicts` — those are exactly the prototypes that will cause IPA
matching failures later and should be resolved (by reading the asm) before
the affected files are decompiled.

### Rules

- Never modify anything outside `tools/decomp_harness/sweep/out/` and the
  generated `tools/decomp_harness/knowledge.json`.
- Do not launch builds from this skill.
- Sweep outputs are hypotheses, not ground truth — `/decomp` verifies against
  the actual asm; if a sweep guess proves wrong, correct the JSON in
  `sweep/out/` and re-run the merge.
