#!/usr/bin/env bash
# Updates the progress section in README.md from coverage_ledger.json and patterns.json.
# Called from the pre-commit hook after coverage_ledger.py regenerates the ledger.
# Safe to run standalone: exits 0 even if data files are missing (just skips).

set -euo pipefail

HARNESS="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HARNESS/../.." && pwd)"
README="$ROOT/README.md"
LEDGER="$HARNESS/coverage_ledger.json"
PATTERNS="$HARNESS/patterns.json"

if [ ! -f "$LEDGER" ]; then
    echo "update_readme_progress: no coverage_ledger.json, skipping" >&2
    exit 0
fi

if [ ! -f "$README" ]; then
    echo "update_readme_progress: no README.md, skipping" >&2
    exit 0
fi

matched_fns=$(python3 -c "import json; d=json.load(open('$LEDGER'))['summary']; print(d['function_totals']['matched'])")
total_fns=$(python3 -c "import json; d=json.load(open('$LEDGER'))['summary']; print(d['function_totals']['tracked'])")
matched_files=$(python3 -c "import json; d=json.load(open('$LEDGER'))['summary']; print(d['by_status']['matched']['files'])")
blocked_files=$(python3 -c "import json; d=json.load(open('$LEDGER'))['summary']; print(d['by_status']['blocked']['files'])")
pending_files=$(python3 -c "import json; d=json.load(open('$LEDGER'))['summary']; print(d['by_status']['pending']['files'])")

pattern_count=0
if [ -f "$PATTERNS" ]; then
    pattern_count=$(python3 -c "import json; print(len(json.load(open('$PATTERNS')).get('patterns', [])))")
fi

today=$(date -u +%Y-%m-%d)

new_section="<!-- BEGIN PROGRESS — auto-updated by tools/decomp_harness/update_readme_progress.sh -->
| Metric | Count |
|--------|-------|
| Functions matched | $matched_fns / $total_fns |
| Files decompiled | $matched_files |
| Files blocked | $blocked_files |
| Files pending | $pending_files |
| Patterns documented | $pattern_count |

*Last updated: $today*
<!-- END PROGRESS -->"

if ! grep -q '<!-- BEGIN PROGRESS' "$README"; then
    echo "update_readme_progress: no progress markers in README.md, skipping" >&2
    exit 0
fi

# Replace everything between the markers (inclusive)
python3 - "$README" "$new_section" <<'PYEOF'
import sys

readme_path = sys.argv[1]
new_section = sys.argv[2]

with open(readme_path, 'r') as f:
    content = f.read()

begin = content.find('<!-- BEGIN PROGRESS')
end = content.find('<!-- END PROGRESS -->')
if begin == -1 or end == -1:
    sys.exit(0)

end += len('<!-- END PROGRESS -->')
updated = content[:begin] + new_section + content[end:]

with open(readme_path, 'w') as f:
    f.write(updated)
PYEOF
