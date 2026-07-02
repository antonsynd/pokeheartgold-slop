#!/bin/bash
#
# compile_wrapper.sh — the per-job compile.sh the decomp-permuter invokes.
#
#   compile.sh <input.c> -o <output.o>
#
# <input.c> is the permuter's mutated candidate (an unparse of base.c: the target
# function plus opaque-type context). base.c is NEVER MWCC-compiled directly — its
# types are fakes. Instead we SPLICE the candidate's target-function definition back
# into the job's real seed TU (full SDK headers, all siblings) and compile THAT, so
# the scored bytes are IPA-faithful to the real build. The permuter's whole-object
# objdump scorer then compares against target.o (the full-TU retail reference), so
# only the target function differs and its distance is what gets minimized.
#
# Config comes from job.json next to this script.

set -euo pipefail

JOB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
JOB_JSON="$JOB_DIR/job.json"
[[ -f "$JOB_JSON" ]] || { echo "compile.sh: missing $JOB_JSON" >&2; exit 2; }

INPUT="" ; OUTPUT=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        -o) OUTPUT="$2"; shift 2 ;;
        *)  INPUT="$1"; shift ;;
    esac
done
[[ -n "$INPUT" && -n "$OUTPUT" ]] || { echo "compile.sh: usage: compile.sh in.c -o out.o" >&2; exit 2; }

read_json() { python3 -c "import json,sys;print(json.load(open('$JOB_JSON'))['$1'])"; }
PROJECT_ROOT="$(read_json project_root)"
SEED="$JOB_DIR/$(read_json seed_full)"
FUNC="$(read_json function)"
GAME="$(read_json game)"
PERM="$PROJECT_ROOT/tools/decomp_harness/permuter"

# Splice the candidate's target function into the real seed TU.
FULL="$OUTPUT.full.c"
python3 -c "
import sys
sys.path.insert(0, '$PERM')
import fn_extract
seed=open('$SEED').read()
cand=open('$INPUT').read()
loc=fn_extract.find_def(cand, '$FUNC')
if loc is None:
    sys.stderr.write('compile.sh: target not found in candidate\n'); sys.exit(3)
full=fn_extract.splice(seed, '$FUNC', loc[2])
open('$FULL','w').write(full)
"

# Compile the full TU with the make-equivalent flags.
python3 "$PERM/mwcc_compile.py" "$FULL" -o "$OUTPUT" --game "$GAME"
rc=$?
rm -f "$FULL"
exit $rc
