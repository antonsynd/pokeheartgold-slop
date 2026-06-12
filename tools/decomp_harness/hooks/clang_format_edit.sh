#!/usr/bin/env bash
# PostToolUse hook (Edit|Write): clang-format C sources under src/ and
# include/ right after Claude edits them, so the tree stays formatted
# continuously instead of churning at the pre-commit hook. NONMATCHING asm
# blocks are already fenced with // clang-format off, so this is codegen-safe.
# Always exits 0 — formatting is best-effort, never blocks.

input=$(cat)
path=$(printf '%s' "$input" | python3 -c "
import json, sys
try:
    print(json.load(sys.stdin).get('tool_input', {}).get('file_path', ''))
except Exception:
    pass
" 2>/dev/null)

[ -z "$path" ] && exit 0
[ -f "$path" ] || exit 0

root="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "$0")/../../.." && pwd)}"

case "$path" in
    "$root"/src/*.c | "$root"/src/*.h | "$root"/src/*/*.c | "$root"/src/*/*.h | \
    "$root"/include/*.h | "$root"/include/*/*.h) ;;
    *) exit 0 ;;
esac

command -v clang-format >/dev/null 2>&1 || exit 0
clang-format -i "$path" 2>/dev/null || true
exit 0
