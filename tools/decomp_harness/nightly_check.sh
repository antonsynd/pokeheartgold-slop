#!/usr/bin/env bash
#
# nightly_check.sh — unattended full regression sweep of every matched TU
# (ROADMAP T1.6 "nightly full check"). Intended to be driven by launchd
# (see the com.pokeheartgold.verify-matched LaunchAgent) but safe to run
# by hand.
#
# What it does:
#   1. Skips (exit 0) if MWCC/MWLD processes are already running — never
#      fight an in-progress build for the Wine prefix.
#   2. Runs `verify_matched.sh check` over ALL matched TUs (~10 min serial).
#   3. Appends a one-line verdict to the log; on drift the full report is
#      kept in the log and a marker file is left at
#      tools/decomp_harness/VERIFY_DRIFT (git-ignored) so the next
#      interactive session notices immediately.
#
# Log: ~/Library/Logs/pokeheartgold_verify_matched.log (trimmed to ~2000
# lines so it never grows unbounded).

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -L)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd -L)"
cd "$PROJECT_ROOT"

LOG="$HOME/Library/Logs/pokeheartgold_verify_matched.log"
MARKER="$SCRIPT_DIR/VERIFY_DRIFT"
mkdir -p "$(dirname "$LOG")"

stamp() { date -u +%Y-%m-%dT%H:%M:%SZ; }

# 1. Don't run under an active build (same class of guard as
# prebuild_guard.sh — one Wine/MWCC at a time).
if pgrep -f 'mwccarm|mwldarm|mwasmarm' >/dev/null 2>&1; then
    echo "$(stamp) SKIP: MWCC/MWLD already running (active build)" >>"$LOG"
    exit 0
fi

if [[ ! -f "$SCRIPT_DIR/matched_manifest.json" ]]; then
    echo "$(stamp) SKIP: no matched_manifest.json (run verify_matched.sh capture)" >>"$LOG"
    exit 0
fi

echo "$(stamp) START full verify_matched check (HEAD $(git rev-parse --short HEAD 2>/dev/null || echo '?'))" >>"$LOG"

if OUT="$("$SCRIPT_DIR/verify_matched.sh" check 2>&1)"; then
    echo "$(stamp) OK: $(printf '%s\n' "$OUT" | tail -1)" >>"$LOG"
    rm -f "$MARKER"
    RC=0
else
    {
        echo "$(stamp) DRIFT/FAILURE — full output follows:"
        printf '%s\n' "$OUT"
        echo "$(stamp) END drift report"
    } >>"$LOG"
    {
        echo "verify_matched full check FAILED at $(stamp) (HEAD $(git rev-parse --short HEAD 2>/dev/null || echo '?'))."
        echo "See $LOG for the full report. Delete this file after investigating."
    } >"$MARKER"
    RC=1
fi

# 3. Trim the log.
if [[ -f "$LOG" ]] && [[ "$(wc -l <"$LOG")" -gt 2000 ]]; then
    tail -n 1000 "$LOG" >"$LOG.tmp" && mv "$LOG.tmp" "$LOG"
fi

exit "$RC"
