#!/usr/bin/env bash
#
# PreToolUse hook guard for build commands (wired up in .claude/settings.json).
#
# Blocks the build (exit 2) if MWCC toolchain processes are already running:
# concurrent builds corrupt each other's outputs. (The Make build's Wine `.d`
# cleanup is gone with Make; ninja keeps dependencies in .ninja_deps.)
#
# Exit codes follow the Claude Code hook contract: 0 = allow, 2 = block
# (stderr is fed back to the model).

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Match the actual Wine-invoked toolchain binaries (metroskrew's mwccarm.exe
# wrapper and the versioned mwccarm-3.0-137.exe etc. it starts), not any process
# whose command line merely mentions a path like tools/mwasmarm_patcher/.
if pgrep -f '(mwccarm|mwldarm|mwasmarm)(-[0-9][0-9.-]*)?\.exe' >/dev/null 2>&1; then
    echo "BLOCKED: a build is already running (mwccarm/mwldarm/mwasmarm processes alive)." >&2
    echo "Never run concurrent builds. Wait for the running build to finish, or kill it first:" >&2
    echo "  pkill -f 'ninja -C build/|mwccarm|mwldarm|mwasmarm'" >&2
    echo "or use ./tools/decomp_harness/recomp.sh which handles cleanup." >&2
    exit 2
fi

exit 0
