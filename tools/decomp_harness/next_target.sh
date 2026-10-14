#!/usr/bin/env bash
#
# Prints the next asm file to decompile (skipping completed/failed).
# Warns on stderr if someone else has claimed it (claim.py check).
# An asm file hgify split (no longer linked itself) is served one unit at a
# time: a slice asm/<base>_NN.s, or a generated src/<base>_NN.c that still has
# inline asm. See SPLIT_TARGETS.md; claims stay on asm/<base>.s.
# Order: triage_report.json queue (easiest first) when present;
# falls back to main.lsf order. Regenerate the queue with:
#   python3 tools/decomp_harness/triage.py --rebuild
#
# Usage: ./tools/decomp_harness/next_target.sh [--info]
#   --info: also print file stats (line count, data-only flag, triage detail)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PROGRESS_FILE="$SCRIPT_DIR/progress.json"
TRIAGE_FILE="$SCRIPT_DIR/triage_report.json"
SHOW_INFO=false

[[ "${1:-}" == "--info" ]] && SHOW_INFO=true

if [[ ! -f "$PROGRESS_FILE" ]]; then
    echo '{"completed":[],"failed":[],"in_progress":null}' > "$PROGRESS_FILE"
fi

completed=$(python3 -c "
import json
with open('$PROGRESS_FILE') as f:
    data = json.load(f)
for entry in data['completed'] + data['failed']:
    print(entry['file'] if isinstance(entry, dict) else entry)
")

# asm/<name>.s files main.lsf still links as asm (main.nef.p/asm_<name>.s.o), in link order
linked_asm=$(python3 -c "
import sys
sys.path.insert(0, '$SCRIPT_DIR')
import asmscan
for o in asmscan.parse_lsf('$PROJECT_ROOT'):
    if o['kind'] == 'asm':
        print('asm/%s.s' % o['name'])
")

if [[ -f "$TRIAGE_FILE" ]]; then
    # Triage queue order (easiest first)
    targets=$(python3 -c "
import json
with open('$TRIAGE_FILE') as f:
    report = json.load(f)
for row in report['queue']:
    print(row['file'])
")
else
    # Fallback: main.lsf link order
    targets="$linked_asm"
fi

for asmfile in $targets; do
    if echo "$completed" | grep -qx "$asmfile" 2>/dev/null; then
        continue
    fi
    rowfile="$asmfile"
    claimfile="$asmfile"
    split_note=""
    if base=$(python3 "$SCRIPT_DIR/split_units.py" base "$asmfile"); then
        # An hgify-split file, or one of its slices (the ledger may list either):
        # serve the split file's next pending unit (progress.json already applied)
        asmfile=$(python3 "$SCRIPT_DIR/split_units.py" units "$base" | head -n 1)
        [[ -z "$asmfile" ]] && continue
        claimfile="$base"
        split_note="  [SPLIT unit of $base; see tools/decomp_harness/SPLIT_TARGETS.md]"
    else
        # triage queue can be stale: skip files already flipped to src in main.lsf
        if ! echo "$linked_asm" | grep -qxF "$asmfile"; then
            continue
        fi
    fi

    if [[ "$SHOW_INFO" == "true" ]]; then
        lines=$(wc -l < "$PROJECT_ROOT/$asmfile" 2>/dev/null || echo "?")
        data_flag=""
        if ! grep -q -e 'thumb_func_start' -e 'arm_func_start' "$PROJECT_ROOT/$asmfile" 2>/dev/null; then
            data_flag=" [DATA-ONLY]"
        fi
        if [[ "$asmfile" == src/* ]]; then
            data_flag=""  # a generated C file: its functions are inline asm
        fi
        echo "$asmfile  (${lines} lines)${data_flag}${split_note}"
        if [[ -n "$split_note" ]]; then
            echo "  functions still in asm: $(python3 "$SCRIPT_DIR/split_units.py" funcs "$asmfile" | tr '\n' ' ')"
        fi
        if [[ -f "$TRIAGE_FILE" ]]; then
            # a split unit may have no row of its own: fall back to the queue row
            # (the split file, or another slice of it)
            python3 "$SCRIPT_DIR/triage.py" --file "$asmfile" 2>/dev/null \
                || python3 "$SCRIPT_DIR/triage.py" --file "$rowfile" 2>/dev/null || true
        fi
    else
        echo "$asmfile"
    fi
    # Claims are advisory (they go stale): warn on stderr, never skip.
    python3 "$SCRIPT_DIR/claim.py" check "$claimfile" || true
    exit 0
done

echo "ALL_DONE"
