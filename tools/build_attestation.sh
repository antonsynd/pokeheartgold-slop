#!/usr/bin/env bash
# build_attestation.sh — build, verify retail SHA1 match, and produce a
# committed attestation file that proves these exact sources produce the
# retail ROM.
#
# Usage:
#   ./tools/build_attestation.sh              # build + verify + attest
#   ./tools/build_attestation.sh --check      # just verify existing attestation
#   ./tools/build_attestation.sh --hash-only  # print source hash and exit
#
# The attestation file (build_attestation.json) should be committed alongside
# code changes. It records:
#   - source_hash: SHA1 of all build-affecting source files
#   - retail_sha1: the expected ROM SHA1
#   - status: MATCH or FAIL
#   - commit: git HEAD at attestation time
#   - timestamp: UTC ISO 8601

set -euo pipefail

REPO="$(git rev-parse --show-toplevel)"
cd "$REPO"

ATTESTATION="$REPO/build_attestation.json"

compute_source_hash() {
    {
        find asm src include sub \
            \( -name '*.s' -o -name '*.c' -o -name '*.h' -o -name '*.inc' \) \
            -type f 2>/dev/null
        echo main.lsf
        echo global.inc
        echo Makefile
        echo common.mk
        echo config.mk
        echo platform.mk
        echo binutils.mk
        echo filesystem.mk
        echo graphics_files_rules.mk
        echo ARM9-TS.lcf.template
        echo mwldarm.response.template
        echo sub/Makefile
        echo sub/ARM7-TS.lcf.template
    } | sort -u | while IFS= read -r f; do
        [ -f "$f" ] && shasum "$f"
    done | shasum | cut -d' ' -f1
}

if [[ "${1:-}" == "--hash-only" ]]; then
    compute_source_hash
    exit 0
fi

if [[ "${1:-}" == "--check" ]]; then
    if [[ ! -f "$ATTESTATION" ]]; then
        echo "FAIL: no attestation file found"
        exit 1
    fi

    CURRENT_HASH=$(compute_source_hash)
    ATTESTED_HASH=$(python3 -c "import json; print(json.load(open('$ATTESTATION'))['source_hash'])")
    ATTESTED_STATUS=$(python3 -c "import json; print(json.load(open('$ATTESTATION'))['status'])")

    if [[ "$ATTESTED_STATUS" != "MATCH" ]]; then
        echo "FAIL: attestation status is $ATTESTED_STATUS"
        exit 1
    fi

    if [[ "$CURRENT_HASH" == "$ATTESTED_HASH" ]]; then
        echo "OK: source hash matches attestation ($CURRENT_HASH)"
        exit 0
    else
        echo "STALE: sources changed since last attestation"
        echo "  attested: $ATTESTED_HASH"
        echo "  current:  $CURRENT_HASH"
        exit 1
    fi
fi

echo "[attest] Computing source hash ..."
SOURCE_HASH=$(compute_source_hash)
echo "[attest] Source hash: $SOURCE_HASH"

echo "[attest] Building and verifying against retail SHA1 ..."
if timeout 2400 chiri pkg -- compare 2>&1 | tee /dev/stderr | tail -1 | grep -q 'OK$'; then
    STATUS="MATCH"
    echo ""
    echo "[attest] ROM matches retail SHA1."
else
    STATUS="FAIL"
    echo ""
    echo "[attest] ROM does NOT match retail SHA1."
fi

RETAIL_SHA1=$(head -1 heartgold.us/rom.sha1 | cut -d' ' -f1)
COMMIT=$(git rev-parse --short HEAD 2>/dev/null || echo "uncommitted")
TIMESTAMP=$(date -u +%Y-%m-%dT%H:%M:%SZ)
HOST=$(uname -sm)

python3 -c "
import json, sys
obj = {
    'source_hash': '$SOURCE_HASH',
    'retail_sha1': '$RETAIL_SHA1',
    'status': '$STATUS',
    'commit': '$COMMIT',
    'timestamp': '$TIMESTAMP',
    'host': '$HOST'
}
json.dump(obj, sys.stdout, indent=2)
print()
" > "$ATTESTATION"

echo "[attest] Wrote $ATTESTATION"
echo "[attest] Status: $STATUS | Commit: $COMMIT | Hash: $SOURCE_HASH"

if [[ "$STATUS" == "MATCH" ]]; then
    # T1.6 regression guard: recapture the matched-TU fingerprint manifest
    # while the just-verified objects are fresh. Failure to capture is loud
    # but never turns a green attestation red.
    if [[ -x "$REPO/tools/decomp_harness/verify_matched.sh" ]]; then
        echo "[attest] Recapturing matched-TU manifest (verify_matched.sh capture) ..."
        if "$REPO/tools/decomp_harness/verify_matched.sh" capture; then
            echo "[attest] Manifest recaptured — stage tools/decomp_harness/matched_manifest.json if changed."
        else
            echo "[attest] WARNING: manifest capture failed; run verify_matched.sh capture manually." >&2
        fi
    fi
    exit 0
else
    exit 1
fi
