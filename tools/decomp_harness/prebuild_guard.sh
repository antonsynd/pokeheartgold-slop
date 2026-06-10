#!/usr/bin/env bash
#
# PreToolUse hook guard for build commands (wired up in .claude/settings.json).
#
# 1. Blocks the build (exit 2) if MWCC toolchain processes are already running —
#    concurrent builds corrupt each other's outputs and .d files.
# 2. Deletes .d dependency files that contain Wine 'Z:\' paths — these make
#    subsequent `make` invocations spin at 100% CPU.
#
# Exit codes follow the Claude Code hook contract: 0 = allow, 2 = block
# (stderr is fed back to the model).

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Match the actual Wine-invoked toolchain binaries (mwccarm.exe etc.), not any
# process whose command line merely mentions a path like tools/mwasmarm_patcher/.
if pgrep -f '(mwccarm|mwldarm|mwasmarm)\.exe' >/dev/null 2>&1; then
    echo "BLOCKED: a build is already running (mwccarm/mwldarm/mwasmarm processes alive)." >&2
    echo "Never run concurrent builds. Wait for the running build to finish, or kill it first:" >&2
    echo "  pkill -f 'make.*heartgold|make.*soulsilver|mwccarm|mwldarm|mwasmarm'" >&2
    echo "or use ./tools/decomp_harness/recomp.sh which handles cleanup." >&2
    exit 2
fi

if [[ -d "$PROJECT_ROOT/build" ]]; then
    corrupted=$(find "$PROJECT_ROOT/build" -name '*.d' -print0 2>/dev/null \
        | xargs -0 grep -l --null 'Z:\\' 2>/dev/null \
        | tr '\0' '\n')
    if [[ -n "$corrupted" ]]; then
        count=$(printf '%s\n' "$corrupted" | wc -l | tr -d ' ')
        printf '%s\n' "$corrupted" | tr '\n' '\0' | xargs -0 rm -f
        echo "prebuild_guard: removed $count corrupted .d file(s) containing Wine Z:\\ paths" >&2
    fi
fi

exit 0
