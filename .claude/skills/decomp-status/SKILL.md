---
name: decomp-status
description: Summarize decomp harness progress — matched/failed/blocked counts from progress.json, the next target, and open harness issues. Use when the user asks for decomp status, progress, where we left off, or what to decompile next.
---

# Decomp Status

Report the current state of the decompilation effort. All state lives in `tools/decomp_harness/`. This is read-only — do not build anything.

1. Summarize `progress.json`:

```bash
python3 - <<'EOF'
import json
d = json.load(open('tools/decomp_harness/progress.json'))
print("== Completed ==")
for e in d.get('completed', []):
    print(f"  {e['file']}: {e['functions']} funcs, {e['lines']} lines, {e['attempts']} attempt(s)")
print("== Failed/Blocked ==")
for e in d.get('failed', []):
    print(f"  {e['file']}: {e.get('result')} — {e.get('reason', 'no reason recorded')}")
print("== In progress ==")
print(f"  {d.get('in_progress') or 'none'}")
s = d.get('stats', {})
print(f"== Stats == attempts={s.get('total_attempts')} matched={s.get('total_matched')} failed={s.get('total_failed')}")
EOF
```

2. Get the next target: `./tools/decomp_harness/next_target.sh --info`

3. Check open harness issues: read `tools/decomp_harness/TODO.md` and report the section headings (and any that block the next target).

Output a short report in prose: what's matched, what's blocked and why, the next target with its stats, and any open issue that affects it. Suggest `/decomp` (or `/loop /decomp-loop`) as the follow-up.
