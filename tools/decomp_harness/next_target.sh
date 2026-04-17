#!/usr/bin/env bash
#
# Prints the next asm file to decompile (skipping completed/failed).
# Usage: ./tools/decomp_harness/next_target.sh [--info]
#   --info: also print file stats (line count, data-only flag, overlay info)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PROGRESS_FILE="$SCRIPT_DIR/progress.json"
SHOW_INFO=false

[[ "${1:-}" == "--info" ]] && SHOW_INFO=true

if [[ ! -f "$PROGRESS_FILE" ]]; then
    echo '{"completed":[],"failed":[],"in_progress":null}' > "$PROGRESS_FILE"
fi

# Get all asm targets from main.lsf
targets=$(grep 'Object asm/' "$PROJECT_ROOT/main.lsf" | sed 's/.*Object asm\///' | sed 's/\.o$//')

completed=$(python3 -c "
import json
with open('$PROGRESS_FILE') as f:
    data = json.load(f)
for f in data['completed']:
    print(f)
for f in data['failed']:
    if isinstance(f, dict):
        print(f['file'])
    else:
        print(f)
")

for basename in $targets; do
    asmfile="asm/${basename}.s"
    if echo "$completed" | grep -qx "$asmfile" 2>/dev/null; then
        continue
    fi

    if [[ "$SHOW_INFO" == "true" ]]; then
        lines=$(wc -l < "$PROJECT_ROOT/$asmfile" 2>/dev/null || echo "?")
        data_flag=""
        if ! grep -q -e 'thumb_func_start' -e 'arm_func_start' "$PROJECT_ROOT/$asmfile" 2>/dev/null; then
            data_flag=" [DATA-ONLY]"
        fi
        echo "$asmfile  (${lines} lines)${data_flag}"
    else
        echo "$asmfile"
    fi
    exit 0
done

echo "ALL_DONE"
