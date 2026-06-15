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
# Requirements: built tree (make main must have run at least once),
# MWCC toolchain available, wine configured.

set -euo pipefail

MWCC="wine tools/mwccarm/2.0/sp2p2/mwccarm.exe"
MWCFLAGS="-DHEARTGOLD -DGAME_REMASTER=0 -DENGLISH -DPM_KEEP_ASSERTS -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_FINALROM -O4,p -sym on -enum int -lang c99 -Cpp_exceptions off -gccext,on -proc arm946e -msgstyle gcc -gccinc -i ./src -i ./include -i ./include/library -i ./files -I./lib/include -ipa file -interworking -inline on,noauto -char signed -W all -W pedantic -W noimpl_signedunsigned -W noimplicitconv -W nounusedarg -W nomissingreturn -W error"

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

for header in $headers; do
    [[ -f "$header" ]] || continue
    basename=$(basename "$header" .h)

    # Find a C file that includes this header and has a built .o
    includer=$(grep -rl "#include \"$(basename "$header")\"" src/ --include='*.c' 2>/dev/null | head -1 || true)
    if [[ -z "$includer" ]]; then
        echo "ipa_check: $header — no C includer found, skipping"
        continue
    fi

    includer_base=$(basename "$includer" .c)
    old_obj="$tmpdir/${includer_base}_old.o"
    new_obj="$tmpdir/${includer_base}_new.o"

    # Save current (staged) header, restore HEAD version
    cp "$header" "$tmpdir/staged_header"
    git show "HEAD:$header" > "$header" 2>/dev/null || { echo "ipa_check: $header — no HEAD version, skipping"; cp "$tmpdir/staged_header" "$header"; continue; }

    # Compile with old header
    if ! $MWCC $MWCFLAGS -c -o "$old_obj" "$includer" >/dev/null 2>&1; then
        echo "ipa_check: $header — old header fails to compile $includer (expected if fixing a build break), skipping"
        cp "$tmpdir/staged_header" "$header"
        continue
    fi

    # Restore staged header
    cp "$tmpdir/staged_header" "$header"

    # Compile with new header
    if ! $MWCC $MWCFLAGS -c -o "$new_obj" "$includer" >/dev/null 2>&1; then
        echo "ipa_check: $header — new header fails to compile $includer, skipping"
        continue
    fi

    # Compare
    if cmp -s "$old_obj" "$new_obj"; then
        echo "ipa_check: $header — no IPA cascade in $includer ✓"
    else
        old_size=$(wc -c < "$old_obj")
        new_size=$(wc -c < "$new_obj")
        echo "WARNING: $header — IPA cascade detected!"
        echo "  $includer produces different .o ($old_size → $new_size bytes)"
        echo "  Use the split-header pattern: keep the public header frozen,"
        echo "  put corrected prototypes in ${basename}_internal.h"
        cascade_found=1
    fi
done

if [[ $cascade_found -ne 0 ]]; then
    echo ""
    echo "IPA cascade detected. See CLAUDE.md 'IPA header discipline' for the fix pattern."
    echo "To bypass this check: git commit --no-verify (NOT recommended)"
    exit 1
fi
