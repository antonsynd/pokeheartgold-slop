#!/usr/bin/env bash
#
# IPA cascade detector for MWCC -ipa file.
#
# Checks whether staged header changes would cascade codegen into
# dependent .o files. Compiles a representative TU with the old
# (HEAD) and new (staged) header, then compares the object files.
# If they differ, the header change cascades via IPA and needs the
# split-header treatment (see CLAUDE.md 'IPA header discipline').
#
# Usage:
#   ipa_check.sh                     # auto-detect staged header changes
#   ipa_check.sh include/foo.h       # check a specific header
#
# Exit codes: 0 = no cascade (or no testable changes), 1 = cascade detected
#
# Requirements: a configured HeartGold build dir (any `build_pokeheartgold
# build` run creates build/heartgold.us/compile_commands.json, which supplies
# the exact MWCC flags via compile_cmd.py), MWCC toolchain available.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -L)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd -L)"
cd "$PROJECT_ROOT"

# Compile one TU the way ninja does: compile_cmd.py <src.c> -o <obj> [--game G].
mwcc_compile() {
    python3 "$SCRIPT_DIR/compile_cmd.py" "$2" -o "$1"
}

if [[ $# -gt 0 ]]; then
    headers="$*"
else
    headers=$(git diff --cached --name-only --diff-filter=M -- 'include/*.h' 2>/dev/null || true)
fi

if [[ -z "$headers" ]]; then
    echo "ipa_check: no header changes to test"
    exit 0
fi

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

cascade_found=0

# Matched TUs = C sources linked in main.lsf (main.nef.p/src_*.c.o objects).
# Only these can regress silently under an IPA cascade (everything else is
# still handwritten asm), so those are the includers we must test — ALL of
# them, not just the first one found.
matched_list="$tmpdir/matched.txt"
python3 -c "
import sys
sys.path.insert(0, '$SCRIPT_DIR')
import asmscan
for o in asmscan.parse_lsf('$PROJECT_ROOT'):
    if o['kind'] == 'src':
        print('src/%s.c' % o['name'])
" | sort -u > "$matched_list"

for header in $headers; do
    [[ -f "$header" ]] || continue
    basename=$(basename "$header" .h)
    hbase=$(basename "$header")

    # Every matched C file that directly includes this header. (Transitive
    # includers are visible in ninja's dependency log — see ipa_map.py; this
    # check stays independent of it by grepping source directly.)
    includers=$(grep -rlF "#include \"$hbase\"" src/ --include='*.c' 2>/dev/null \
                | sort -u | grep -Fxf "$matched_list" || true)
    if [[ -z "$includers" ]]; then
        echo "ipa_check: $header — no matched C includer, skipping (no regression risk)"
        continue
    fi

    n_inc=$(printf '%s\n' "$includers" | grep -c .)
    echo "ipa_check: $header — testing $n_inc matched includer(s)"

    # Save the staged header once; we flip HEAD<->staged around each compile.
    cp "$header" "$tmpdir/staged_header"
    if ! git show "HEAD:$header" > "$tmpdir/head_header" 2>/dev/null; then
        echo "ipa_check: $header — no HEAD version (new file), skipping"
        continue
    fi

    header_cascade=0
    while IFS= read -r includer; do
        [[ -n "$includer" ]] || continue
        includer_base=$(basename "$includer" .c)
        old_obj="$tmpdir/${includer_base}_old.o"
        new_obj="$tmpdir/${includer_base}_new.o"

        # Compile with OLD (HEAD) header.
        cp "$tmpdir/head_header" "$header"
        if ! mwcc_compile "$old_obj" "$includer" >/dev/null 2>&1; then
            echo "  ~ $includer — old header fails to compile (expected if fixing a build break), skipping"
            cp "$tmpdir/staged_header" "$header"
            continue
        fi

        # Compile with NEW (staged) header.
        cp "$tmpdir/staged_header" "$header"
        if ! mwcc_compile "$new_obj" "$includer" >/dev/null 2>&1; then
            echo "  ~ $includer — new header fails to compile, skipping"
            continue
        fi

        if cmp -s "$old_obj" "$new_obj"; then
            echo "  ✓ $includer — no cascade"
        else
            old_size=$(wc -c < "$old_obj")
            new_size=$(wc -c < "$new_obj")
            echo "  ✗ $includer — CASCADE ($old_size → $new_size bytes)"
            header_cascade=1
            cascade_found=1
        fi
    done <<< "$includers"

    # Ensure the staged header is back in place no matter which path we took.
    cp "$tmpdir/staged_header" "$header"

    if [[ "$header_cascade" -ne 0 ]]; then
        echo "WARNING: $header — IPA cascade detected in matched TU(s) above."
        echo "  Use the split-header pattern: keep the public header frozen,"
        echo "  put corrected prototypes in ${basename}_internal.h"
    else
        echo "ipa_check: $header — no cascade across $n_inc matched includer(s) ✓"
    fi
done

if [[ $cascade_found -ne 0 ]]; then
    echo ""
    echo "IPA cascade detected. See CLAUDE.md 'IPA header discipline' for the fix pattern."
    echo "To bypass this check: git commit --no-verify (NOT recommended)"
    exit 1
fi
