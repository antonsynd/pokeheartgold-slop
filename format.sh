#!/bin/sh
set -e

# Use the same clang-format as the pre-commit hook: `git config clangFormat.binary`
# if set (CI pins 19; see CONTRIBUTING.md), else whatever is on PATH.
CLANG_FORMAT=$(git config --type=path --get clangFormat.binary || true)

find src include \( -name "*.c" -or -name "*.cpp" -or -name "*.h" -or -name "*.hpp" \) -exec "${CLANG_FORMAT:-clang-format}" -i --verbose {} +
