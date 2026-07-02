#!/bin/bash
#
# compile_one.sh — single-TU fast-path compiler for the decomp inner loop.
#
# Compiles ONE src/*.c translation unit standalone with the exact MWCC flag
# set that the root Makefile uses (see common.mk MWCFLAGS with WORK_DIR=".",
# equivalently ipa_check.sh:23), then — by default — objdiffs the result
# against the committed asm reference object. This skips the full ARM9 link
# (~45-120s) that the inner loop never needs.
#
# Deliberate difference from make: the DEPFLAGS (-gccdep -MD) are OMITTED.
# The inner loop does not need .d files, and dropping them removes the Wine
# ".d"-path-corruption failure class entirely.
#
# The output .o goes to build/<game>.us/compile_one/<subpath>.o and NEVER
# touches make's own build/<game>.us/src/<subpath>.o.
#
# Usage:
#   compile_one.sh <src/name.c | src/subdir/name.c> [--game soulsilver] [--no-objdiff]
#
# Default game: heartgold.
#
# Exit codes: 0 = compiled OK (objdiff verdict is informational, does not
# change exit status); non-zero = compile failure (diagnostics printed).
#
# The script cd's to its own repo root. It uses the LOGICAL path (pwd -L, no
# symlink resolution) on purpose: MWCC/Wine embed the shell's $PWD as the
# DWARF build-directory path, and make inherits whatever $PWD the build was
# driven from. Resolving symlinks here would embed a different path than a
# make build launched through the same symlink, making objects differ in the
# .debug_line/.debug_info sections only. To reproduce a given build byte-for-
# byte, invoke this script from the same directory that build used.

set -euo pipefail

# --- locate project root (this file lives at tools/decomp_harness/) ---
# pwd -L keeps the logical (symlink-preserving) path so the embedded DWARF
# path matches a make build driven from the same CWD.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -L)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd -L)"
cd "$PROJECT_ROOT"

# --- arg parse ---
GAME="heartgold"
DO_OBJDIFF=1
SRCFILE=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        --game)
            GAME="${2:-}"; shift 2 ;;
        --game=*)
            GAME="${1#*=}"; shift ;;
        --no-objdiff)
            DO_OBJDIFF=0; shift ;;
        -h|--help)
            sed -n '2,30p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
        -*)
            echo "compile_one: unknown option '$1'" >&2; exit 2 ;;
        *)
            if [[ -n "$SRCFILE" ]]; then
                echo "compile_one: unexpected extra argument '$1'" >&2; exit 2
            fi
            SRCFILE="$1"; shift ;;
    esac
done

if [[ -z "$SRCFILE" ]]; then
    echo "compile_one: missing <src/name.c> argument" >&2
    echo "usage: compile_one.sh <src/name.c> [--game soulsilver] [--no-objdiff]" >&2
    exit 2
fi

# --- resolve game -> build dir + version define ---
case "$GAME" in
    heartgold|HEARTGOLD)
        BUILDNAME="heartgold.us"; VERSION_DEFINE="-DHEARTGOLD" ;;
    soulsilver|SOULSILVER)
        BUILDNAME="soulsilver.us"; VERSION_DEFINE="-DSOULSILVER" ;;
    *)
        echo "compile_one: unsupported --game '$GAME' (use heartgold or soulsilver)" >&2
        exit 2 ;;
esac
BUILD_DIR="build/$BUILDNAME"

# --- normalise the source path ---
if [[ "$SRCFILE" != src/* || "$SRCFILE" != *.c ]]; then
    echo "compile_one: '$SRCFILE' must be a src/*.c path" >&2
    exit 2
fi
if [[ ! -f "$SRCFILE" ]]; then
    echo "compile_one: '$SRCFILE' does not exist" >&2
    exit 2
fi

REL="${SRCFILE#src/}"      # e.g. frontier/frontier_cmd_arcade.c
REL="${REL%.c}"            # e.g. frontier/frontier_cmd_arcade
BASENAME="$(basename "$REL")"

OUT_DIR="$BUILD_DIR/compile_one"
OUT_O="$OUT_DIR/$REL.o"
mkdir -p "$(dirname "$OUT_O")"

# --- toolchain (mirrors common.mk: WINE + MWCC 2.0/sp2p2 for all src/*.c) ---
WINE="${WINE:-wine}"
MWCC="tools/mwccarm/2.0/sp2p2/mwccarm.exe"

# MWCFLAGS: common.mk:125 expanded with WORK_DIR="." (running from root).
#   DEFINES   = GF_DEFINES (config.mk:35-38) + GLB_DEFINES (config.mk:39)
#   OPTFLAGS  = -O4,p            (Makefile:7)
#   EXCCFLAGS = -Cpp_exceptions off (common.mk:123)
#   PROC      = arm946e         (Makefile:2)
# DEPFLAGS (-gccdep -MD) are intentionally NOT included (see header).
MWCFLAGS=(
    "$VERSION_DEFINE" -DGAME_REMASTER=0 -DENGLISH -DPM_KEEP_ASSERTS
    -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_FINALROM
    -O4,p
    -sym on -enum int -lang c99 -Cpp_exceptions off -gccext,on
    -proc arm946e -msgstyle gcc -gccinc
    -i ./src -i ./include -i ./include/library -i ./files -I./lib/include
    -ipa file -interworking -inline on,noauto -char signed
    -W all -W pedantic -W noimpl_signedunsigned -W noimplicitconv
    -W nounusedarg -W nomissingreturn -W error
)

# common.mk:134 — exported into MWCC's environment.
export MWCIncludes="lib/include"
export LM_LICENSE_FILE="tools/mwccarm/license.dat"

echo "compile_one: $SRCFILE  ->  $OUT_O  (game=$BUILDNAME)"

# Run the compile. Diagnostics go straight to the terminal (unmangled).
if ! $WINE "$MWCC" "${MWCFLAGS[@]}" -c -o "$OUT_O" "$SRCFILE"; then
    echo "compile_one: COMPILE FAILED for $SRCFILE" >&2
    exit 1
fi

echo "compile_one: compiled OK -> $OUT_O"

# --- objdiff vs committed asm reference (informational) ---
if [[ "$DO_OBJDIFF" -eq 1 ]]; then
    ASM_REF="$BUILD_DIR/asm/$BASENAME.o"
    if [[ -f "$ASM_REF" ]]; then
        echo "compile_one: objdiff vs $ASM_REF"
        python3 tools/decomp_harness/objdiff.py "$ASM_REF" "$OUT_O" --summary || true
    else
        echo "compile_one: no asm reference at $ASM_REF (matched/absent) — compile-only."
    fi
fi

exit 0
