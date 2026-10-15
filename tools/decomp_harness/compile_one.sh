#!/bin/bash
#
# compile_one.sh — single-TU fast-path compiler for the decomp inner loop.
#
# Compiles ONE src/*.c translation unit standalone with the exact MWCC command
# the Meson build runs for it (the flags come from
# build/<game>.us/compile_commands.json via compile_cmd.py, not from a
# hard-coded list), then — by default — objdiffs the result against the
# committed asm reference object. This skips the full ARM9 link (~45-120s)
# that the inner loop never needs.
#
# Deliberate difference from ninja: the dependency flags (-gccdep -MD) are
# dropped, so no depfile is written.
#
# The output .o goes to build/<game>.us/compile_one/<subpath>.o and NEVER
# touches the Meson build's own objects (build/<game>.us/main.nef.p/).
# Needs a configured build dir (run any `build_pokeheartgold build` once).
#
# Usage:
#   compile_one.sh <src/name.c | src/subdir/name.c> [--game soulsilver] [--no-objdiff]
#                  [--ref <obj>]
#
# --ref objdiffs against <obj> instead of
# build/<game>.us/main.nef.p/asm_<name>.s.o; use it for a file that has no
# linked asm twin, e.g. a saved copy of an hgify-generated
# src/<name>.c.o before rewriting its inline asm (SPLIT_TARGETS.md), or the
# original .s of a split file (Meson does not build unlinked .s files until
# the refs targets exist).
#
# Default game: heartgold.
#
# Exit codes: 0 = compiled OK (objdiff verdict is informational, does not
# change exit status); non-zero = compile failure (diagnostics printed).
#
# The compiler runs in build/<game>.us with the source spelled ../../src/...,
# the way ninja runs it, so the DWARF paths in the object are the ones a
# ninja build of the same tree embeds.

set -euo pipefail

# --- locate project root (this file lives at tools/decomp_harness/) ---
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -L)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd -L)"
CALLER_PWD="$PWD"  # a relative --ref is the caller's, not the repo root's
cd "$PROJECT_ROOT"

# --- arg parse ---
GAME="heartgold"
DO_OBJDIFF=1
REF_OBJ=""
SRCFILE=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        --game)
            GAME="${2:-}"; shift 2 ;;
        --game=*)
            GAME="${1#*=}"; shift ;;
        --no-objdiff)
            DO_OBJDIFF=0; shift ;;
        --ref)
            if [[ $# -lt 2 ]]; then
                echo "compile_one: --ref needs an object file" >&2; exit 2
            fi
            REF_OBJ="$2"; shift 2 ;;
        --ref=*)
            REF_OBJ="${1#*=}"; shift
            if [[ -z "$REF_OBJ" ]]; then
                echo "compile_one: --ref needs an object file" >&2; exit 2
            fi ;;
        -h|--help)
            sed -n '2,37p' "$SCRIPT_DIR/compile_one.sh" | sed 's/^# \{0,1\}//'; exit 0 ;;
        -*)
            echo "compile_one: unknown option '$1'" >&2; exit 2 ;;
        *)
            if [[ -n "$SRCFILE" ]]; then
                echo "compile_one: unexpected extra argument '$1'" >&2; exit 2
            fi
            SRCFILE="$1"; shift ;;
    esac
done

if [[ -n "$REF_OBJ" ]]; then
    [[ "$REF_OBJ" == /* ]] || REF_OBJ="$CALLER_PWD/$REF_OBJ"
    # an explicit reference must exist: a silent compile-only run would read as a pass
    if [[ ! -f "$REF_OBJ" ]]; then
        echo "compile_one: --ref object not found: $REF_OBJ" >&2; exit 2
    fi
fi

if [[ -z "$SRCFILE" ]]; then
    echo "compile_one: missing <src/name.c> argument" >&2
    echo "usage: compile_one.sh <src/name.c> [--game soulsilver] [--no-objdiff]" >&2
    exit 2
fi

# --- resolve game -> build dir (compile_cmd.py picks the version define up from it) ---
case "$GAME" in
    heartgold|HEARTGOLD)
        GAME="heartgold"; BUILDNAME="heartgold.us" ;;
    soulsilver|SOULSILVER)
        GAME="soulsilver"; BUILDNAME="soulsilver.us" ;;
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

echo "compile_one: $SRCFILE  ->  $OUT_O  (game=$BUILDNAME)"

# Run the compile with the flags ninja uses for this file (compile_cmd.py).
# Diagnostics go straight to the terminal (unmangled).
if ! python3 "$SCRIPT_DIR/compile_cmd.py" "$SRCFILE" --game "$GAME" -o "$PROJECT_ROOT/$OUT_O"; then
    echo "compile_one: COMPILE FAILED for $SRCFILE" >&2
    exit 1
fi

echo "compile_one: compiled OK -> $OUT_O"

# --- objdiff vs committed asm reference (informational) ---
if [[ "$DO_OBJDIFF" -eq 1 ]]; then
    ASM_REF="${REF_OBJ:-$BUILD_DIR/main.nef.p/asm_$BASENAME.s.o}"
    if [[ -f "$ASM_REF" ]]; then
        echo "compile_one: objdiff vs $ASM_REF"
        python3 tools/decomp_harness/objdiff.py "$ASM_REF" "$OUT_O" --summary || true
    else
        echo "compile_one: no asm reference at $ASM_REF — compile-only." >&2
        echo "compile_one: Meson builds asm/$BASENAME.s only while main.lsf links it, so the reference" >&2
        echo "compile_one: object is unavailable once it is flipped or split (until the refs targets exist);" >&2
        echo "compile_one: save a copy of the linked asm object first, or pass --ref <obj>." >&2
    fi
fi

exit 0
