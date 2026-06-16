#!/usr/bin/env bash
# PostToolUse hook: clean .d files with wrong-environment paths after builds.
# Wine Z:\ paths and cross-environment absolute paths cause stale deps.
set -euo pipefail

count=0
while IFS= read -r -d '' f; do
    rm -f "$f"
    count=$((count + 1))
done < <(find build lib/dsprot sub -name '*.d' \( -exec grep -lq 'Z:\\' {} \; -o -exec grep -lq '/Users/' {} \; \) -print0 2>/dev/null || true)

if [ "$count" -gt 0 ]; then
    echo "Cleaned $count .d file(s) with stale paths" >&2
fi
