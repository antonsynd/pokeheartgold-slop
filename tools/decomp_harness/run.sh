#!/usr/bin/env bash
#
# Automated decompilation harness for pokeheartgold.
# Iterates through assembly files in main.lsf, invokes Claude Code to
# decompile each one to C, and verifies byte-for-byte matching.
#
# Usage:
#   ./tools/decomp_harness/run.sh [OPTIONS]
#
# Options:
#   --max-retries N    Max attempts per file (default: 100)
#   --file FILE        Decompile a specific asm file only (e.g. asm/unk_02004A44.s)
#   --resume           Resume from where we left off (skip completed files)
#   --dry-run          List files to decompile without doing anything
#   --model MODEL      Claude model to use (default: claude-opus-4-6)
#   --skip-data        Skip data-only asm files
#   --help             Show this help

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PROGRESS_FILE="$SCRIPT_DIR/progress.json"
INSIGHTS_FILE="$SCRIPT_DIR/insights.md"
AGENT_INSTRUCTIONS="$SCRIPT_DIR/DECOMP_AGENT.md"
LOG_DIR="$SCRIPT_DIR/logs"

MAX_RETRIES=100
TARGET_FILE=""
RESUME=true
DRY_RUN=false
MODEL="claude-opus-4-6"
SKIP_DATA=false

# Parse arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --max-retries) MAX_RETRIES="$2"; shift 2 ;;
        --file) TARGET_FILE="$2"; shift 2 ;;
        --resume) RESUME=true; shift ;;
        --no-resume) RESUME=false; shift ;;
        --dry-run) DRY_RUN=true; shift ;;
        --model) MODEL="$2"; shift 2 ;;
        --skip-data) SKIP_DATA=true; shift ;;
        --help)
            head -17 "$0" | tail -15
            exit 0
            ;;
        *)
            echo "Unknown option: $1" >&2
            exit 1
            ;;
    esac
done

mkdir -p "$LOG_DIR"

# --- Progress tracking ---

init_progress() {
    if [[ ! -f "$PROGRESS_FILE" ]]; then
        echo '{"completed":[],"failed":[],"in_progress":null,"stats":{"total_attempts":0,"total_matched":0,"total_failed":0}}' | python3 -m json.tool > "$PROGRESS_FILE"
    fi
}

is_completed() {
    python3 -c "
import json, sys
with open('$PROGRESS_FILE') as f:
    data = json.load(f)
sys.exit(0 if '$1' in data['completed'] else 1)
"
}

is_failed() {
    python3 -c "
import json, sys
with open('$PROGRESS_FILE') as f:
    data = json.load(f)
failed_files = []
for entry in data.get('failed', []):
    if isinstance(entry, dict):
        failed_files.append(entry.get('file', ''))
    else:
        failed_files.append(str(entry))
sys.exit(0 if '$1' in failed_files else 1)
"
}

mark_completed() {
    python3 -c "
import json
with open('$PROGRESS_FILE', 'r') as f:
    data = json.load(f)
if '$1' not in data['completed']:
    data['completed'].append('$1')
data['stats']['total_matched'] += 1
data['in_progress'] = None
with open('$PROGRESS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
"
}

mark_failed() {
    local file="$1"
    local attempts="$2"
    python3 -c "
import json
with open('$PROGRESS_FILE', 'r') as f:
    data = json.load(f)
data['failed'].append({'file': '$file', 'attempts': $attempts})
data['stats']['total_failed'] += 1
data['in_progress'] = None
with open('$PROGRESS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
"
}

mark_in_progress() {
    python3 -c "
import json
with open('$PROGRESS_FILE', 'r') as f:
    data = json.load(f)
data['in_progress'] = '$1'
with open('$PROGRESS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
"
}

increment_attempts() {
    python3 -c "
import json
with open('$PROGRESS_FILE', 'r') as f:
    data = json.load(f)
data['stats']['total_attempts'] += 1
with open('$PROGRESS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
"
}

# --- File discovery ---

get_asm_targets() {
    grep 'Object asm/' "$PROJECT_ROOT/main.lsf" | sed 's/.*Object asm\///' | sed 's/\.o$//' | while read -r basename; do
        echo "asm/${basename}.s"
    done
}

is_data_only() {
    local asmfile="$PROJECT_ROOT/$1"
    if grep -q -e 'thumb_func_start' -e 'arm_func_start' "$asmfile" 2>/dev/null; then
        return 1
    else
        return 0
    fi
}

get_file_line_count() {
    wc -l < "$PROJECT_ROOT/$1" 2>/dev/null || echo 0
}

# --- Build and compare ---

# Returns 0 if SHA1 matches, 1 otherwise.
# Captures build output into $BUILD_OUTPUT (global).
build_and_compare() {
    cd "$PROJECT_ROOT"
    BUILD_OUTPUT=""

    # First try compilation only
    local compile_out
    if ! compile_out=$(make main COMPARE=0 -j4 2>&1); then
        BUILD_OUTPUT="$compile_out"
        echo "COMPILE_ERROR"
        return 1
    fi

    # Then try full comparison (sha1sum -c outputs "filename: OK" on success)
    local compare_out
    if compare_out=$(make compare -j4 2>&1); then
        BUILD_OUTPUT="$compare_out"
        echo "MATCH"
        return 0
    else
        BUILD_OUTPUT="$compare_out"
        echo "MISMATCH"
        return 1
    fi
}

run_asmdiff() {
    local asmfile="$1"
    local bn
    bn="$(basename "$asmfile" .s)"
    cd "$PROJECT_ROOT"

    # Overlay files: overlay_NN_XXXXXXXX
    if [[ "$bn" =~ ^overlay_([0-9]+)_0?x?([0-9A-Fa-f]+)$ ]]; then
        local ovnum="${BASH_REMATCH[1]}"
        local addr="0x${BASH_REMATCH[2]}"
        # Try to get the overlay name from main.lsf
        local ovname
        ovname=$(grep -B 100 "Object asm/${bn}.o" main.lsf | grep '^Overlay ' | tail -1 | awk '{print $2}') || true
        if [[ -n "$ovname" ]]; then
            ./tools/asmdiff/asmdiff.sh -m "$ovname" "$addr" 2>&1 | head -100
        else
            ./tools/asmdiff/asmdiff.sh -m "$ovnum" "$addr" 2>&1 | head -100
        fi
    # Static module files: unk_XXXXXXXX
    elif [[ "$bn" =~ ^unk_(0?x?[0-9A-Fa-f]+)$ ]]; then
        local addr="0x${BASH_REMATCH[1]#0x}"
        ./tools/asmdiff/asmdiff.sh "$addr" 2>&1 | head -100
    else
        # Named files (e.g., render_window.s) — diff entire static module
        # asmdiff without address args will diff the whole static module
        ./tools/asmdiff/asmdiff.sh -y 2>&1 | head -200
    fi
}

# --- Prompt generation ---

generate_initial_prompt() {
    local asmfile="$1"
    local bn
    bn="$(basename "$asmfile" .s)"
    local incfile="asm/include/${bn}.inc"
    local is_data_only_flag=""
    if is_data_only "$asmfile"; then
        is_data_only_flag="THIS IS A DATA-ONLY FILE (no executable code, only .rodata/.data sections)."
    fi

    cat <<PROMPT_EOF
You are a decompilation agent. Your task is to decompile the assembly file \`$asmfile\` into matching C code.

$is_data_only_flag

## Instructions

Read and follow the instructions in \`tools/decomp_harness/DECOMP_AGENT.md\`.

Read the accumulated insights in \`tools/decomp_harness/insights.md\`.

## Your Task

1. Read \`$asmfile\` and \`$incfile\` (if it exists)
2. Analyze the assembly: identify functions, data, types, external references
3. Search \`include/\` for relevant headers (functions called by this code)
4. Look at similar decompiled files in \`src/\` for patterns
5. Write \`src/${bn}.c\` (and \`include/${bn}.h\` if needed)
6. Update \`main.lsf\`: change \`Object asm/${bn}.o\` to \`Object src/${bn}.o\`
7. Build: \`make main COMPARE=0 -j4\` — fix any compilation errors
8. Compare: \`make compare -j4\` — check if SHA1 matches
9. If comparison fails, use \`./tools/asmdiff/asmdiff.sh\` to see the byte differences and adjust your C code
10. Repeat steps 7-9 until it matches or you've done 20 build-compare cycles

If after 20 build-compare cycles a function still doesn't match, wrap it in NONMATCHING as described in the agent instructions.

When done (matched or NONMATCHING fallback used), briefly describe what you learned about matching patterns in this file — I'll add it to the insights file.

IMPORTANT: Do not modify any files other than:
- \`src/${bn}.c\` (create)
- \`include/${bn}.h\` (create if needed)
- \`main.lsf\` (one line change: asm/ → src/)

Do not touch other source files, other headers, or the assembly file itself.
PROMPT_EOF
}

generate_retry_prompt() {
    local asmfile="$1"
    local attempt="$2"
    local build_output="$3"
    local diff_output="$4"
    local bn
    bn="$(basename "$asmfile" .s)"

    # Include the current C file content so the stateless session has context
    local c_file_content=""
    if [[ -f "$PROJECT_ROOT/src/${bn}.c" ]]; then
        c_file_content=$(cat "$PROJECT_ROOT/src/${bn}.c")
    fi

    cat <<PROMPT_EOF
You are a decompilation agent. Attempt $attempt for \`$asmfile\` did not match.

## Instructions

Read and follow the instructions in \`tools/decomp_harness/DECOMP_AGENT.md\`.
Read the accumulated insights in \`tools/decomp_harness/insights.md\`.

## Current C File (src/${bn}.c)
\`\`\`c
${c_file_content}
\`\`\`

## Build Output (last 50 lines)
\`\`\`
$(echo "$build_output" | tail -50)
\`\`\`

## ASM Diff (original vs compiled)
\`\`\`
$(echo "$diff_output" | head -100)
\`\`\`

## What To Do

1. Read the original assembly at \`$asmfile\`
2. Read the diff above — left side is correct (original), right side is your output
3. Adjust the C code in \`src/${bn}.c\` to make the compiler emit the correct instructions
4. Rebuild: \`make main COMPARE=0 -j4\` then \`make compare -j4\`
5. If it still doesn't match, use \`./tools/asmdiff/asmdiff.sh\` to check again

Common fixes:
- Reorder variable declarations to change register allocation
- Change types (u8/u16/u32/s8/s16/s32) to match load/store widths
- Use ternary vs if/else (different code generation)
- Add/remove casts
- Try different loop structures (for vs while vs do-while)

If this is attempt 50+, you MUST use NONMATCHING for any remaining unmatched functions.

IMPORTANT: Do not modify any files other than:
- \`src/${bn}.c\`
- \`include/${bn}.h\`
- \`main.lsf\` (only the one line: asm/${bn}.o → src/${bn}.o)
PROMPT_EOF
}

# --- Revert changes on failure ---

revert_file() {
    local asmfile="$1"
    "$SCRIPT_DIR/revert.sh" "$asmfile"
}

# --- Main decompilation loop ---

decompile_file() {
    local asmfile="$1"
    local bn
    bn="$(basename "$asmfile" .s)"
    local log_file="$LOG_DIR/${bn}.log"

    echo "=== Decompiling: $asmfile ==="
    echo "    Log: $log_file"
    mark_in_progress "$asmfile"

    local attempt=1
    local matched=false

    echo "    Attempt $attempt/$MAX_RETRIES"
    increment_attempts

    local prompt
    prompt="$(generate_initial_prompt "$asmfile")"

    # Run Claude Code in print (pipe) mode
    local claude_output
    claude_output=$(cd "$PROJECT_ROOT" && claude -p \
        --model "$MODEL" \
        --permission-mode bypassPermissions \
        --allowedTools "Read,Write,Edit,Glob,Grep,Bash" \
        "$prompt" 2>&1) || true

    echo "$claude_output" >> "$log_file"

    # Check if build matches using exit code
    cd "$PROJECT_ROOT"
    local status
    status=$(build_and_compare) || true

    if [[ "$status" == "MATCH" ]]; then
        echo "    MATCHED on attempt $attempt!"
        matched=true
    else
        echo "    Status: $status"
    fi

    # Retry loop
    while [[ "$matched" == "false" ]] && [[ $attempt -lt $MAX_RETRIES ]]; do
        attempt=$((attempt + 1))
        echo "    Attempt $attempt/$MAX_RETRIES"
        increment_attempts

        # Get diff output for feedback
        local diff_output=""
        diff_output=$(run_asmdiff "$asmfile" 2>&1) || true

        local retry_prompt
        retry_prompt="$(generate_retry_prompt "$asmfile" "$attempt" "$BUILD_OUTPUT" "$diff_output")"

        # Run Claude Code again with feedback
        claude_output=$(cd "$PROJECT_ROOT" && claude -p \
            --model "$MODEL" \
            --permission-mode bypassPermissions \
            --allowedTools "Read,Write,Edit,Glob,Grep,Bash" \
            "$retry_prompt" 2>&1) || true

        echo "$claude_output" >> "$log_file"

        # Check again
        status=$(cd "$PROJECT_ROOT" && build_and_compare) || true

        if [[ "$status" == "MATCH" ]]; then
            echo "    MATCHED on attempt $attempt!"
            matched=true
        else
            echo "    Status: $status (attempt $attempt)"
        fi
    done

    if [[ "$matched" == "true" ]]; then
        mark_completed "$asmfile"
        echo "    SUCCESS: $asmfile decompiled in $attempt attempt(s)"

        # Ask Claude to extract insights from this decompilation
        local insight_prompt="Read the decompilation log at $log_file. Extract 2-3 specific, actionable insights about matching MWCC compiler output that would help with future decompilations. Append them to tools/decomp_harness/insights.md under a new section headed with the filename. Keep it concise (under 10 lines)."
        cd "$PROJECT_ROOT" && claude -p \
            --model "$MODEL" \
            --permission-mode bypassPermissions \
            --allowedTools "Read,Edit" \
            "$insight_prompt" 2>&1 >> "$log_file" || true

        return 0
    else
        echo "    FAILED: $asmfile after $attempt attempts"
        mark_failed "$asmfile" "$attempt"

        # Revert changes so the build stays clean for next file
        revert_file "$asmfile"

        return 1
    fi
}

# --- Entry point ---

main() {
    init_progress

    echo "========================================"
    echo "  Decompilation Harness"
    echo "  Project: pokeheartgold"
    echo "  Model: $MODEL"
    echo "  Max retries per file: $MAX_RETRIES"
    echo "========================================"

    local targets=()

    if [[ -n "$TARGET_FILE" ]]; then
        targets=("$TARGET_FILE")
    else
        while IFS= read -r line; do
            targets+=("$line")
        done < <(get_asm_targets)
    fi

    local total=${#targets[@]}
    echo "Total asm targets: $total"

    if [[ "$DRY_RUN" == "true" ]]; then
        echo ""
        echo "Files to decompile (dry run):"
        local idx=0
        for target in "${targets[@]}"; do
            idx=$((idx + 1))
            local lines
            lines=$(get_file_line_count "$target")
            local data_flag=""
            if is_data_only "$target"; then
                data_flag=" [DATA-ONLY]"
            fi
            local skip_flag=""
            if is_completed "$target" 2>/dev/null; then
                skip_flag=" [COMPLETED]"
            elif is_failed "$target" 2>/dev/null; then
                skip_flag=" [FAILED]"
            fi
            printf "  %3d/%d  %-50s  %5s lines%s%s\n" "$idx" "$total" "$target" "$lines" "$data_flag" "$skip_flag"
        done
        exit 0
    fi

    local succeeded=0
    local failed=0
    local skipped=0

    for target in "${targets[@]}"; do
        # Skip if already done
        if [[ "$RESUME" == "true" ]]; then
            if is_completed "$target" 2>/dev/null; then
                skipped=$((skipped + 1))
                continue
            fi
            if is_failed "$target" 2>/dev/null; then
                skipped=$((skipped + 1))
                continue
            fi
        fi

        # Skip data-only files if requested
        if [[ "$SKIP_DATA" == "true" ]] && is_data_only "$target"; then
            echo "Skipping data-only file: $target"
            skipped=$((skipped + 1))
            continue
        fi

        # Ensure build is clean before starting
        cd "$PROJECT_ROOT"
        if ! make main COMPARE=0 -j4 >/dev/null 2>&1; then
            echo "ERROR: Build is broken before starting $target. Attempting tidy..."
            make tidy >/dev/null 2>&1 || true
            if ! make main COMPARE=0 -j4 >/dev/null 2>&1; then
                echo "FATAL: Cannot build. Stopping."
                break
            fi
        fi

        if decompile_file "$target"; then
            succeeded=$((succeeded + 1))
        else
            failed=$((failed + 1))
        fi

        echo ""
        echo "Progress: $succeeded matched, $failed failed, $skipped skipped out of $total"
        echo ""
    done

    echo "========================================"
    echo "  FINAL RESULTS"
    echo "  Matched:  $succeeded"
    echo "  Failed:   $failed"
    echo "  Skipped:  $skipped"
    echo "  Total:    $total"
    echo "========================================"
}

main "$@"
