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
    targets=$(grep 'Object asm/' "$PROJECT_ROOT/main.lsf" | sed 's/.*Object //; s/\.o$/.s/')
fi

for asmfile in $targets; do
    if echo "$completed" | grep -qx "$asmfile" 2>/dev/null; then
        continue
    fi
    claimfile="$asmfile"
    split_note=""
    # triage queue can be stale: skip files already flipped to src in main.lsf
    basename="${asmfile#asm/}"
    basename="${basename%.s}"
    if ! grep -q "Object asm/${basename}\.o" "$PROJECT_ROOT/main.lsf" 2>/dev/null; then
        # ...unless hgify split it: then serve its first pending unit
        unit=""
        for u in $(python3 "$SCRIPT_DIR/split_units.py" units "$asmfile"); do
            if ! echo "$completed" | grep -qx "$u" 2>/dev/null; then
                unit="$u"
                break
            fi
        done
        [[ -z "$unit" ]] && continue
        asmfile="$unit"
    fi
    # a unit of a split file (also when the queue lists the slice itself)
    if base=$(python3 "$SCRIPT_DIR/split_units.py" base "$asmfile"); then
        claimfile="$base"
        split_note="  [SPLIT unit of $base; see tools/decomp_harness/SPLIT_TARGETS.md]"
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
            python3 "$SCRIPT_DIR/triage.py" --file "$claimfile" 2>/dev/null || true
        fi
    else
        echo "$asmfile"
    fi
    # Claims are advisory (they go stale): warn on stderr, never skip.
    python3 "$SCRIPT_DIR/claim.py" check "$claimfile" || true
    exit 0
done

echo "ALL_DONE"
