#!/usr/bin/env bash
#
# Revert a decompilation attempt for a specific asm file.
# Restores main.lsf (and the Meson source lists) and removes generated C/H
# files. A C/H file that git tracks is restored from HEAD instead of removed,
# so this never deletes an hgify-generated src/<base>_NN.c (or any other
# committed file).
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
# src/<base>_NN.c split unit has none and stays linked as src). lsf_flip.py swaps
# main.nef.p/src_..<base>.c.o back to main.nef.p/asm_<base>.s.o and regenerates
# src/meson.build and asm/meson.build. The linked C may sit in a src/ subdirectory.
linked_c=""
if [[ -f "asm/${basename}.s" ]]; then
    linked_c=$(python3 - "$basename" <<'PYEOF'
import sys
sys.path.insert(0, 'tools/decomp_harness')
import asmscan
base = sys.argv[1]
for o in asmscan.parse_lsf('.'):
    if o['kind'] == 'src' and o['name'].rsplit('/', 1)[-1] == base:
        print('src/%s.c' % o['name'])
PYEOF
)
fi
if [[ -n "$linked_c" ]]; then
    if [[ "$(printf '%s\n' "$linked_c" | wc -l | tr -d ' ')" -ne 1 ]]; then
        echo "revert: several linked C files are named ${basename}; flip main.lsf back by hand:" >&2
        printf '  %s\n' $linked_c >&2
    else
        python3 tools/decomp_harness/lsf_flip.py "$linked_c" "asm/${basename}.s"
        echo "Reverted main.lsf: $linked_c → asm/${basename}.s"
    fi
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

# Clean build artifacts: the C object under Meson's name (build/<game>.us/main.nef.p/src_<path>.c.o)
if [[ -n "$linked_c" ]]; then
    obj=$(python3 -c "
import sys
sys.path.insert(0, 'tools/decomp_harness')
import meson_names
print(meson_names.object_name('$linked_c'))
" 2>/dev/null) || obj=""
    if [[ -n "$obj" ]]; then
        for g in heartgold.us soulsilver.us; do
            rm -f "build/$g/$obj" 2>/dev/null
        done
    fi
fi

echo "Revert complete for $asmfile"
