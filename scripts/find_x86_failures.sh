#!/usr/bin/env bash
# find_x86_failures.sh — identify which decompiled C files break rom.sha1 on
# x86_64 by testing each one individually against the all-asm upstream baseline.
#
# Run on the Ubuntu x86_64 machine from the project root:
#   ./scripts/find_x86_failures.sh [--clean]
#
# --clean  Run 'chiri pkg -- tidy' before each test (fully deterministic but
#           much slower — ~25 h for 60 files).  Default: incremental builds
#           (~2-3 h total) which are deterministic enough here because we always
#           revert to the same all-asm baseline between every test; only the one
#           swapped file recompiles each time.
#
# Output:
#   x86_check_results.txt  — per-file PASS / FAIL / SKIP summary
#   x86_check_build.log    — full build output (for debugging FAILs)

set -euo pipefail

REPO="$(git rev-parse --show-toplevel)"
cd "$REPO"

CLEAN_BETWEEN=0
while [[ $# -gt 0 ]]; do
    case "$1" in
        --clean) CLEAN_BETWEEN=1; shift ;;
        *) echo "Unknown option: $1"; exit 1 ;;
    esac
done

RESULTS="$REPO/x86_check_results.txt"
BACKUP="$REPO/main.lsf.bak_x86check"
BUILD_LOG="$REPO/x86_check_build.log"

# Always restore main.lsf on exit / Ctrl-C
cleanup() {
    if [[ -f "$BACKUP" ]]; then
        cp "$BACKUP" "$REPO/main.lsf"
        rm -f "$BACKUP"
        echo ""
        echo "[x86check] main.lsf restored."
    fi
}
trap cleanup EXIT INT TERM

cp main.lsf "$BACKUP"

# ── Collect the 60 C files added vs upstream/master ───────────────────────────
DIFF_FILES=$(git diff upstream/master -- main.lsf \
    | grep '^+.*Object src/' \
    | sed 's/.*Object src\///' \
    | sed 's/\.o$//')

TOTAL=$(echo "$DIFF_FILES" | wc -l)
MODE="incremental"
[[ $CLEAN_BETWEEN -eq 1 ]] && MODE="clean-between"

echo "[x86check] $TOTAL files to test  |  mode: $MODE"
echo "[x86check] results → $RESULTS"
echo "[x86check] build log → $BUILD_LOG"
echo ""

# ── Switch to all-asm baseline ─────────────────────────────────────────────────
echo "[x86check] Checking out upstream/master main.lsf ..."
git checkout upstream/master -- main.lsf

# Initial full build to fill the .o cache (skipped if --clean since every test
# will do its own full build anyway)
if [[ $CLEAN_BETWEEN -eq 0 ]]; then
    echo "[x86check] Building all-asm baseline (fills .o cache for incremental tests) ..."
    timeout 2700 chiri pkg -- build --no-compare >> "$BUILD_LOG" 2>&1
    if ! sha1sum -c heartgold.us/rom.sha1 > /dev/null 2>&1; then
        echo "[x86check] ERROR: all-asm baseline fails rom.sha1. Fix this first."
        exit 1
    fi
    echo "[x86check] Baseline OK.  Starting per-file checks ..."
else
    echo "[x86check] --clean mode: skipping baseline warm-up."
fi
echo ""

# ── Per-file tests ─────────────────────────────────────────────────────────────
PASS=0; FAIL=0; SKIP=0; IDX=0

{
    echo "x86_64 per-file compatibility check ($MODE)"
    echo "Started: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "==================================================================="
} > "$RESULTS"

while IFS= read -r src_rel; do
    IDX=$((IDX + 1))

    # Find the asm entry in the current (all-asm) main.lsf.
    # Try the full relative path first (asm/field/foo), then basename only
    # (asm/foo) to handle cases where src/ uses subdirs but asm/ is flat.
    ASM_ENTRY=""
    for try_path in "asm/${src_rel}.o" "asm/${src_rel##*/}.o"; do
        if grep -qF "Object $try_path" main.lsf; then
            ASM_ENTRY="Object $try_path"
            break
        fi
    done

    if [[ -z "$ASM_ENTRY" ]]; then
        printf "  [%3d/%d] %-52s SKIP (no asm entry)\n" \
            "$IDX" "$TOTAL" "$src_rel"
        echo "SKIP: $src_rel" >> "$RESULTS"
        SKIP=$((SKIP + 1))
        # Ensure we're back on the clean baseline (shouldn't have drifted, but
        # be safe)
        git checkout upstream/master -- main.lsf
        continue
    fi

    # Escape dots in the asm path so sed treats them as literals
    ASM_ESC=$(printf '%s' "$ASM_ENTRY" | sed 's/\./\\./g')
    SRC_ENTRY="Object src/${src_rel}.o"

    # Swap just this one entry to C
    sed "s|${ASM_ESC}|${SRC_ENTRY}|" main.lsf > main.lsf.tmp
    mv main.lsf.tmp main.lsf

    if [[ $CLEAN_BETWEEN -eq 1 ]]; then
        chiri pkg -- tidy >> "$BUILD_LOG" 2>&1
    fi

    printf "  [%3d/%d] %-52s " "$IDX" "$TOTAL" "$src_rel"

    # Cap each build at 30 min so a hang doesn't kill the overnight run
    BUILD_OK=0
    ROM_OK=0
    if timeout 1800 chiri pkg -- build --no-compare >> "$BUILD_LOG" 2>&1; then
        BUILD_OK=1
        sha1sum -c heartgold.us/rom.sha1 > /dev/null 2>&1 && ROM_OK=1
    fi

    if [[ $BUILD_OK -eq 1 && $ROM_OK -eq 1 ]]; then
        echo "PASS"
        echo "PASS: $src_rel" >> "$RESULTS"
        PASS=$((PASS + 1))
    elif [[ $BUILD_OK -eq 0 ]]; then
        echo "FAIL  [build error / timeout]"
        echo "FAIL (build): $src_rel" >> "$RESULTS"
        FAIL=$((FAIL + 1))
    else
        echo "FAIL  [rom mismatch]"
        echo "FAIL (rom):   $src_rel" >> "$RESULTS"
        FAIL=$((FAIL + 1))
    fi

    # Always revert to the all-asm baseline before the next test
    git checkout upstream/master -- main.lsf

done <<< "$DIFF_FILES"

{
    echo "==================================================================="
    printf "Pass: %d   Fail: %d   Skip: %d   Total: %d\n" \
        "$PASS" "$FAIL" "$SKIP" "$TOTAL"
    echo "Completed: $(date '+%Y-%m-%d %H:%M:%S')"
} | tee -a "$RESULTS"

# cleanup trap restores main.lsf from backup
