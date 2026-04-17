#!/usr/bin/env bash
#
# Revert a decompilation attempt for a specific asm file.
# Restores main.lsf and removes generated C/H files.
#
# Usage: ./tools/decomp_harness/revert.sh asm/unk_02004A44.s

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <asm_file>" >&2
    echo "Example: $0 asm/unk_02004A44.s" >&2
    exit 1
fi

asmfile="$1"
basename="$(basename "$asmfile" .s)"

cd "$PROJECT_ROOT"

# Revert main.lsf
if grep -q "Object src/${basename}.o" main.lsf 2>/dev/null; then
    if [[ "$(uname)" == "Darwin" ]]; then
        sed -i '' "s|Object src/${basename}.o|Object asm/${basename}.o|" main.lsf
    else
        sed -i "s|Object src/${basename}.o|Object asm/${basename}.o|" main.lsf
    fi
    echo "Reverted main.lsf: src/${basename}.o → asm/${basename}.o"
fi

# Remove generated files
for f in "src/${basename}.c" "include/${basename}.h"; do
    if [[ -f "$f" ]]; then
        rm -f "$f"
        echo "Removed $f"
    fi
done

# Clean build artifacts
for f in "build/heartgold.us/src/${basename}.o" "build/heartgold.us/src/${basename}.d"; do
    rm -f "$f" 2>/dev/null
done

echo "Revert complete for $asmfile"
