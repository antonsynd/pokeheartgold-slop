#!/usr/bin/env bash
#
# Revert a decompilation attempt for a specific asm file.
# Restores main.lsf and removes generated C/H files. A C/H file that git
# tracks is restored from HEAD instead of removed, so this never deletes an
# hgify-generated src/<base>_NN.c (or any other committed file).
#
# Usage: ./tools/decomp_harness/revert.sh asm/unk_02004A44.s
#        ./tools/decomp_harness/revert.sh src/overlay_99_04.c   (split unit, SPLIT_TARGETS.md)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <asm_file>" >&2
    echo "Example: $0 asm/unk_02004A44.s" >&2
    exit 1
fi

asmfile="$1"
basename="$(basename "$(basename "$asmfile" .s)" .c)"

cd "$PROJECT_ROOT"

# Revert main.lsf (only when there is an asm object to go back to: a generated
# src/<base>_NN.c split unit has none and stays linked as src)
if [[ -f "asm/${basename}.s" ]] && grep -q "Object src/${basename}.o" main.lsf 2>/dev/null; then
    if [[ "$(uname)" == "Darwin" ]]; then
        sed -i '' "s|Object src/${basename}.o|Object asm/${basename}.o|" main.lsf
    else
        sed -i "s|Object src/${basename}.o|Object asm/${basename}.o|" main.lsf
    fi
    echo "Reverted main.lsf: src/${basename}.o → asm/${basename}.o"
fi

# Remove generated files (restore tracked ones)
for f in "src/${basename}.c" "include/${basename}.h"; do
    if git ls-files --error-unmatch "$f" >/dev/null 2>&1; then
        git checkout HEAD -- "$f"
        echo "Restored $f from HEAD"
    elif [[ -f "$f" ]]; then
        rm -f "$f"
        echo "Removed $f"
    fi
done

# Clean build artifacts
for f in "build/heartgold.us/src/${basename}.o" "build/heartgold.us/src/${basename}.d"; do
    rm -f "$f" 2>/dev/null
done

echo "Revert complete for $asmfile"
