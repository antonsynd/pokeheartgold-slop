#!/usr/bin/env bash
#
# Detect duplicate function declarations in header files.
# Scans staged .h files (or all headers if --all) for function names
# declared more than once. MWCC -W error rejects redeclarations even
# when return types match (K&R vs prototyped), so any duplicate is a
# build-breaking bug.
#
# Usage:
#   check_dup_decls.sh              # check staged .h files
#   check_dup_decls.sh --all        # check all include/*.h files
#   check_dup_decls.sh file.h ...   # check specific files

set -euo pipefail

if [[ "${1:-}" == "--all" ]]; then
    files=$(find include -name '*.h' -not -name '*_internal.h' 2>/dev/null)
elif [[ $# -gt 0 ]]; then
    files="$*"
else
    files=$(git diff --cached --name-only --diff-filter=ACM -- 'include/*.h' 2>/dev/null | grep -v '_internal\.h$' || true)
fi

if [[ -z "$files" ]]; then
    exit 0
fi

found=0

for header in $files; do
    [[ -f "$header" ]] || continue

    # Extract function declaration names from lines that:
    # - are not comments (* ..., // ..., /** ..., # ...)
    # - end with ); (actual declarations, not calls or definitions)
    # - don't start with control flow keywords
    # Match lines like "type name(...);" — require a return type before the name
    # `|| true`: with pipefail, a header with no matching declarations makes
    # the greps exit non-zero, which set -e turns into a silent abort.
    dupes=$(grep -vE '^\s*(\*|//|/\*|#|\{|\})' "$header" \
        | grep -E '\)\s*;' \
        | grep -E '^\s*[A-Za-z_]' \
        | grep -vE '^\s*typedef\b' \
        | grep -oE '\b[A-Za-z_][A-Za-z_0-9]+\s+[A-Za-z_][A-Za-z_0-9]*\s*\(' \
        | grep -oE '[A-Za-z_][A-Za-z_0-9]*\s*\($' \
        | sed 's/\s*(//' \
        | sort | uniq -d || true)

    if [[ -n "$dupes" ]]; then
        for fn in $dupes; do
            count=$(grep -vE '^\s*(\*|//|/\*|#)' "$header" | grep -E '\)\s*;' | grep -cE "\b${fn}\s*\(")
            echo "ERROR: $header: '$fn' declared $count times (MWCC rejects redeclarations with -W error)"
            grep -nE "\b${fn}\s*\(" "$header" | sed 's/^/  /'
        done
        found=1
    fi
done

if [[ $found -ne 0 ]]; then
    echo ""
    echo "Duplicate declarations found. MWCC -W error treats redeclarations as errors,"
    echo "even when return types match (K&R vs prototyped). Remove the stale declaration"
    echo "or use the split-header pattern (see CLAUDE.md 'IPA header discipline')."
    exit 1
fi
