#!/bin/bash
#
# run_queue.sh — overnight driver: permute each job dir, then gate every win.
#
# Usage:
#   run_queue.sh [--jobs-root DIR] [--minutes N] [--threads N] [--stop-on-zero]
#
# For each <job>/job.json under JOBS_ROOT (serial — one job at a time; see CLAUDE.md
# build-reliability notes) it:
#   1. runs decomp-permuter on the job for up to --minutes (default 40),
#      -j<threads> (default 2), writing improved candidates to <job>/output-*/,
#   2. runs gate_win.py (score_candidate.py sibling guard) on every output dir,
#   3. records the best GATED result to <job>/queue_result.json and prints a line.
#
# A permuter score of 0 that ALSO passes the gate (accepted, diff_halfwords 0, no
# sibling regression) is a real byte-match — promote its source into src/ by hand.
#
# Env: WINE (default "wine"). --stop-on-zero passes through to the permuter.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -L)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd -L)"
PERMUTER="$PROJECT_ROOT/tools/decomp-permuter"
PY="$PERMUTER/.venv/bin/python3"

JOBS_ROOT="${JOBS_ROOT:-/private/tmp/claude-501/-Users-anton-Documents-github-pokeheartgold-slop/4044610c-6b31-4e6a-9a08-4809f54fa392/scratchpad/permuter_jobs}"
MINUTES=40 ; THREADS=2 ; STOP_ON_ZERO=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        --jobs-root) JOBS_ROOT="$2"; shift 2 ;;
        --minutes)   MINUTES="$2"; shift 2 ;;
        --threads)   THREADS="$2"; shift 2 ;;
        --stop-on-zero) STOP_ON_ZERO="--stop-on-zero"; shift ;;
        -h|--help) sed -n '2,22p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
        *) echo "run_queue: unknown arg '$1'" >&2; exit 2 ;;
    esac
done

[[ -d "$JOBS_ROOT" ]] || { echo "run_queue: no jobs dir at $JOBS_ROOT" >&2; exit 1; }
cd "$PROJECT_ROOT"

shopt -s nullglob
found=0
for job in "$JOBS_ROOT"/*/; do
    [[ -f "$job/job.json" ]] || continue
    found=1
    name="$(basename "$job")"
    func=$(python3 -c "import json;print(json.load(open('$job/job.json'))['function'])")

    # 1. permute (bounded)
    pkill -f 'mwccarm' 2>/dev/null || true; sleep 0.3
    ( cd "$PERMUTER" && timeout "$((MINUTES*60))" "$PY" permuter.py "$job" \
        -j"$THREADS" --better-only $STOP_ON_ZERO ) \
        > "$job/permuter.log" 2>&1 || true

    # 2. gate every output-* (best-scoring first)
    best_rc=99 ; best="" ; best_score=""
    for out in $(ls -d "$job"/output-* 2>/dev/null | sort -t- -k2 -n); do
        pkill -f 'mwccarm' 2>/dev/null || true; sleep 0.3
        if python3 "$SCRIPT_DIR/gate_win.py" "$job" "$out" \
                > "$out/gate.json" 2>"$out/gate.err"; then
            rc=0
        else
            rc=$?
        fi
        sc=$(python3 -c "import json;print(json.load(open('$out/gate.json')).get('score'))" 2>/dev/null || echo "?")
        if [[ "$rc" -lt "$best_rc" ]] || { [[ "$rc" -eq "$best_rc" ]] && [[ "$rc" -eq 0 ]]; }; then
            best_rc=$rc; best="$out"; best_score=$sc
        fi
        [[ "$rc" -eq 0 && "$sc" == "0" ]] && break   # solved
    done

    # 3. record
    python3 -c "
import json,os
r={'job':'$name','func':'$func','best_output':os.path.basename('$best') if '$best' else None,
   'gate_rc':$best_rc if '$best' else None,'gated_score':'$best_score' or None}
json.dump(r,open('$job/queue_result.json','w'),indent=1)
"
    if [[ "$best_rc" -eq 0 && "$best_score" == "0" ]]; then
        verdict="SOLVED (byte-match, gated) -> $best"
    elif [[ "$best_rc" -eq 0 ]]; then
        verdict="improved, gated OK; best diff_halfwords=$best_score"
    elif [[ -n "$best" ]]; then
        verdict="candidate(s) found but gate rejected (rc=$best_rc, e.g. sibling regression)"
    else
        verdict="no improvement over base"
    fi
    printf '%-46s %s\n' "$name" "$verdict"
done

[[ "$found" -eq 1 ]] || echo "run_queue: no jobs found under $JOBS_ROOT"
