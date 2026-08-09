#!/bin/bash
#
# emit_job.sh — scaffold a permuter-ready job dir for one (TU, function).
#
# Usage:
#   emit_job.sh src/<name>.c <function> [--game heartgold] [--ref <o>]
#
# Produces $JOBS_ROOT/<name>_<function>/ containing everything decomp-permuter
# needs (base.c, target.o, compile.sh, settings.toml) plus the pieces our
# IPA-faithful wiring needs (seed_full.c, job.json):
#
#   seed_full.c   full TU with the target's #ifdef NONMATCHING C body promoted to
#                 live (make_seed.py); siblings stay on their #else asm.
#   base.c        parse-only single-function source for the permuter (make_base.py):
#                 the target function + minimal typed context. NEVER MWCC-compiled.
#   target.o      full-TU reference object (retail-matching target = asm variant),
#                 built with the make-equivalent flags so siblings are byte-identical
#                 to every candidate and only the target function contributes to the
#                 whole-object objdump score.
#   compile.sh    splice wrapper: reinserts the candidate's target function into
#                 seed_full.c and compiles the full TU (compile_wrapper.sh).
#   settings.toml func_name + compiler_type="mwcc" + ARM objdump_command.
#   job.json      machine-readable descriptor (project_root, tu, function, game, ...).
#
# The permuter is then run with:  permuter.py <job_dir> -j2 --better-only --stop-on-zero
# and every reported win is gated with score_candidate.py (see run_queue.sh).
#
# JOBS_ROOT defaults to the session scratchpad; override with $JOBS_ROOT.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -L)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd -L)"
cd "$PROJECT_ROOT"

JOBS_ROOT="${JOBS_ROOT:-/private/tmp/claude-501/-Users-anton-Documents-github-pokeheartgold-slop/4044610c-6b31-4e6a-9a08-4809f54fa392/scratchpad/permuter_jobs}"

TU="" ; FUNC="" ; GAME="heartgold" ; REF=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        --game) GAME="$2"; shift 2 ;;
        --ref)  REF="$2"; shift 2 ;;
        -h|--help) sed -n '2,33p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
        -*) echo "emit_job: unknown option '$1'" >&2; exit 2 ;;
        *)  if [[ -z "$TU" ]]; then TU="$1"; elif [[ -z "$FUNC" ]]; then FUNC="$1";
            else echo "emit_job: unexpected arg '$1'" >&2; exit 2; fi; shift ;;
    esac
done

[[ -n "$TU" && -n "$FUNC" ]] || { echo "usage: emit_job.sh src/<name>.c <function> [--game g] [--ref o]" >&2; exit 2; }
[[ "$TU" == src/*.c && -f "$TU" ]] || { echo "emit_job: '$TU' must be an existing src/*.c" >&2; exit 2; }

case "$GAME" in
    heartgold|HEARTGOLD|hg) BUILD="heartgold.us" ;;
    soulsilver|SOULSILVER|ss) BUILD="soulsilver.us" ;;
    *) echo "emit_job: unsupported --game '$GAME'" >&2; exit 2 ;;
esac

BASENAME="$(basename "${TU%.c}")"
# Reference for the score_candidate GATE (defaults inside score_candidate.py too).
# asm first: for a pending file the assembled object IS the retail truth, while
# build/<game>/src/<name>.o is just our own last compile -- scoring against that
# makes the seed trivially perfect (base score 0) and the search never starts.
if [[ -z "$REF" ]]; then
    if   [[ -f "build/$BUILD/asm/$BASENAME.o" ]]; then REF="build/$BUILD/asm/$BASENAME.o"
    elif [[ -f "build/$BUILD/src/$BASENAME.o" ]]; then REF="build/$BUILD/src/$BASENAME.o"
    fi
fi

JOB_DIR="$JOBS_ROOT/${BASENAME}_${FUNC}"
mkdir -p "$JOB_DIR"

echo "emit_job: [$BASENAME :: $FUNC]  game=$GAME"

# 1. seed_full.c — promote the target's NONMATCHING C body to live.
set +e
python3 "$SCRIPT_DIR/make_seed.py" "$TU" "$FUNC" -o "$JOB_DIR/seed_full.c"
SEED_RC=$?
set -e
[[ $SEED_RC -eq 0 || $SEED_RC -eq 3 ]] || exit $SEED_RC

# 2. base.c — permuter-parseable single-function source (+ typed context).
python3 "$SCRIPT_DIR/make_base.py" "$JOB_DIR/seed_full.c" "$FUNC" -o "$JOB_DIR/base.c"

# 3. target.o — full-TU reference (target = retail asm variant), make-equivalent.
# When the target is already live C (rc 3) the TU has no asm variant to fall back
# to, so compiling it would just reproduce our own output; use the reference.
if [[ $SEED_RC -eq 3 ]]; then
    [[ -n "$REF" ]] || { echo "emit_job: no reference object for live target $FUNC" >&2; exit 4; }
    cp "$REF" "$JOB_DIR/target.o"
else
    pkill -f 'mwccarm' 2>/dev/null || true; sleep 0.3
    python3 "$SCRIPT_DIR/mwcc_compile.py" "$TU" -o "$JOB_DIR/target.o" --game "$GAME"
fi

# 4. compile.sh — the splice wrapper.
cp "$SCRIPT_DIR/compile_wrapper.sh" "$JOB_DIR/compile.sh"
chmod +x "$JOB_DIR/compile.sh"

# 5. settings.toml — permuter config.
cat > "$JOB_DIR/settings.toml" <<EOF
func_name = "$FUNC"
compiler_type = "mwcc"
objdump_command = "arm-none-eabi-objdump -drz"
EOF

# 6. job.json — descriptor (read by compile.sh and run_queue.sh).
CREATED="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
cat > "$JOB_DIR/job.json" <<EOF
{
  "project_root": "$PROJECT_ROOT",
  "tu": "$TU",
  "function": "$FUNC",
  "game": "$GAME",
  "build": "$BUILD",
  "seed_full": "seed_full.c",
  "ref": "${REF}",
  "created": "$CREATED"
}
EOF

echo "emit_job: created $JOB_DIR"
echo "  run:  (cd tools/decomp-permuter && .venv/bin/python3 permuter.py '$JOB_DIR' -j2 --better-only --stop-on-zero)"
echo "  gate: python3 $SCRIPT_DIR/gate_win.py '$JOB_DIR' <output-dir>"
