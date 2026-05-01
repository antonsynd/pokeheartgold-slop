#!/usr/bin/env bash
#
# Cleanup stale build state and rebuild cleanly.
#
# Usage:
#   ./tools/decomp_harness/recomp.sh          # kill stale procs + clean .d files + tidy + rebuild main
#   ./tools/decomp_harness/recomp.sh --full    # full clean + rebuild everything
#   ./tools/decomp_harness/recomp.sh --kill    # just kill stale processes
#   ./tools/decomp_harness/recomp.sh --fix-d   # just clean corrupted .d files
#
# Common scenarios:
#   - Build hangs at 100% CPU → stale Wine .d files with Z: paths
#   - "No rule to make target" after switching asm→C → .d files reference old paths
#   - Build interrupted mid-compile → partial .o files confuse make

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$PROJECT_ROOT"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

kill_stale() {
    echo -e "${YELLOW}Killing stale build processes...${NC}"
    local count=0
    for pattern in 'make.*heartgold' 'make.*soulsilver' 'mwccarm' 'mwldarm' 'mwasmarm' 'wine.*mw'; do
        local pids
        pids=$(pgrep -f "$pattern" 2>/dev/null || true)
        if [ -n "$pids" ]; then
            echo "  Killing: $pattern (pids: $pids)"
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
    echo -e "${YELLOW}Cleaning corrupted .d dependency files...${NC}"
    local count
    # Find .d files with Wine Z: paths (the telltale sign of corruption)
    count=$(grep -rl 'Z:\\' build/ --include='*.d' 2>/dev/null | wc -l | tr -d ' ')
    if [ "$count" -gt 0 ]; then
        echo "  Found $count corrupted .d files (Wine Z: paths)"
        grep -rl 'Z:\\' build/ --include='*.d' 2>/dev/null | xargs rm -f
    fi
    # Also remove any .d files that reference non-existent source files
    local stale=0
    while IFS= read -r dfile; do
        # Check first dependency target — if source doesn't exist, .d is stale
        local src
        src=$(head -1 "$dfile" 2>/dev/null | sed 's/.*: //' | awk '{print $1}')
        if [ -n "$src" ] && [ ! -f "$src" ]; then
            rm -f "$dfile"
            stale=$((stale + 1))
        fi
    done < <(find build -name "*.d" 2>/dev/null)
    if [ "$stale" -gt 0 ]; then
        echo "  Removed $stale stale .d files (missing sources)"
    fi
    if [ "$count" -eq 0 ] && [ "$stale" -eq 0 ]; then
        echo "  No corrupted .d files found"
    fi
}

tidy_build() {
    echo -e "${YELLOW}Running tidy...${NC}"
    chiri pkg -- tidy 2>&1 | tail -3
}

full_clean() {
    echo -e "${YELLOW}Running full clean...${NC}"
    chiri pkg -- clean 2>&1 | tail -3
}

rebuild_main() {
    echo -e "${YELLOW}Rebuilding ARM9 (main)...${NC}"
    if chiri pkg -- build --target main --no-compare 2>&1 | tail -5; then
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
        head -12 "$0" | tail -10
        ;;
    *)
        kill_stale
        fix_d_files
        if [ -d build ]; then
            tidy_build
        fi
        rebuild_main
        ;;
esac
