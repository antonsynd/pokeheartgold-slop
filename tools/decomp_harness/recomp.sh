#!/usr/bin/env bash
#
# Cleanup stale build state and rebuild cleanly.
#
# Usage:
#   ./tools/decomp_harness/recomp.sh          # kill stale build procs + rebuild main (ARM9)
#   ./tools/decomp_harness/recomp.sh --full    # kill stale procs + delete build/heartgold.us + rebuild
#   ./tools/decomp_harness/recomp.sh --kill    # just kill stale processes
#   ./tools/decomp_harness/recomp.sh --fix-d   # no-op: the Meson build has no .d files
#
# Common scenarios:
#   - A previous build is still running (ninja / Wine mwccarm) and blocks the next one
#   - Build interrupted mid-compile: ninja re-runs any command without a
#     .ninja_log record, so partial objects are rebuilt by the plain run
#   - Configure state looks wrong (stale compile_commands.json, moved tree) → --full
#     reconfigures from scratch

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$PROJECT_ROOT"

# Same entry point `chiri pkg --` dispatches to; calling it directly means
# chiri need not be installed.
BUILD="$PROJECT_ROOT/build_tools/bin/build_pokeheartgold"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

kill_stale() {
    echo -e "${YELLOW}Killing stale build processes...${NC}"
    local count=0
    # ninja/meson drivers, and the Wine-run Metrowerks tools (the .exe spelling keeps
    # paths like tools/mwasmarm_patcher/ from matching, as in prebuild_guard.sh)
    for pattern in 'ninja -C [^ ]*build/' 'meson\.py (compile|test)' \
                   '(mwccarm|mwldarm|mwasmarm)(-[0-9][0-9.-]*)?\.exe'; do
        local pids
        pids=$(pgrep -f "$pattern" 2>/dev/null || true)
        if [ -n "$pids" ]; then
            echo "  Killing: $pattern (pids: $(echo $pids))"
            kill $pids 2>/dev/null || true
            count=$((count + 1))
        fi
    done
    if [ "$count" -eq 0 ]; then
        echo "  No stale processes found"
    else
        sleep 1
    fi
}

fix_d_files() {
    # Make-era recovery: ninja keeps dependencies in .ninja_deps (not Wine-path-prone .d
    # files), and re-runs any command that has no .ninja_log record.
    echo "  The Meson build has no .d files; nothing to clean"
}

full_clean() {
    echo -e "${YELLOW}Running full clean (removes build/heartgold.us)...${NC}"
    "$BUILD" clean 2>&1 | tail -3
}

rebuild_main() {
    echo -e "${YELLOW}Rebuilding ARM9 (main)...${NC}"
    if "$BUILD" build --target main --no-compare 2>&1 | tail -5; then
        echo -e "${GREEN}Build succeeded${NC}"
    else
        echo -e "${RED}Build failed${NC}"
        return 1
    fi
}

case "${1:-}" in
    --kill)
        kill_stale
        ;;
    --fix-d)
        fix_d_files
        ;;
    --full)
        kill_stale
        full_clean
        rebuild_main
        ;;
    --help|-h)
        sed -n '3,16p' "$SCRIPT_DIR/recomp.sh" | sed 's/^# \{0,1\}//'
        ;;
    *)
        kill_stale
        rebuild_main
        ;;
esac
