#!/usr/bin/env bash
# bundle-tools.sh — pack the proprietary tooling required to build pokeheartgold
# on a Linux x86_64 system into a single tarball for transfer via scp.
#
# Run from the project root:
#   ./scripts/bundle-tools.sh
#
# Output: pokeheartgold-tools.tar.gz  (drop next to setup-ubuntu.sh and scp both)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
OUTPUT="$PROJECT_ROOT/pokeheartgold-tools.tar.gz"
STAGING="$(mktemp -d)"
trap 'rm -rf "$STAGING"' EXIT

echo "==> Checking required source paths..."

REQUIRED=(
    "tools/mwccarm/2.0/sp2p2/mwccarm.exe"
    "tools/mwccarm/2.0/sp2p2/mwldarm.exe"
    "tools/mwccarm/2.0/sp2p2/mwasmarm.exe"
    "tools/mwccarm/1.2/sp2p3/mwccarm.exe"
    "tools/mwccarm/license.dat"
    "tools/bin/makerom.exe"
    "tools/bin/makelcf.exe"
    "tools/bin/makebanner.exe"
    "tools/bin/ntrcomp.exe"
    "ARM9-TS.lcf.template"
    "mwldarm.response.template"
    "sub/ARM7-TS.lcf.template"
)

MISSING=0
for f in "${REQUIRED[@]}"; do
    if [[ ! -f "$PROJECT_ROOT/$f" ]]; then
        echo "  MISSING: $f"
        MISSING=1
    fi
done

if [[ $MISSING -eq 1 ]]; then
    echo ""
    echo "ERROR: One or more required files are missing from this checkout."
    echo "See INSTALL.md §1 (MWCC) and §2 (NitroSDK) for how to obtain them."
    exit 1
fi

echo "  All required files present."

# ── Stage files ────────────────────────────────────────────────────────────────
echo "==> Staging files..."

# MWCC 2.0/sp2p2 (main compiler)
mkdir -p "$STAGING/tools/mwccarm/2.0/sp2p2"
cp -r "$PROJECT_ROOT/tools/mwccarm/2.0/sp2p2/." "$STAGING/tools/mwccarm/2.0/sp2p2/"

# MWCC 1.2/sp2p3 (used for nitrocrypto.o)
mkdir -p "$STAGING/tools/mwccarm/1.2/sp2p3"
cp -r "$PROJECT_ROOT/tools/mwccarm/1.2/sp2p3/." "$STAGING/tools/mwccarm/1.2/sp2p3/"

# MWCC licence
cp "$PROJECT_ROOT/tools/mwccarm/license.dat" "$STAGING/tools/mwccarm/license.dat"

# NitroSDK tools/bin
mkdir -p "$STAGING/tools/bin"
cp -r "$PROJECT_ROOT/tools/bin/." "$STAGING/tools/bin/"

# LCF / linker templates (not tracked by git — must be bundled)
mkdir -p "$STAGING/lcf_templates/sub"
cp "$PROJECT_ROOT/ARM9-TS.lcf.template"         "$STAGING/lcf_templates/"
cp "$PROJECT_ROOT/mwldarm.response.template"    "$STAGING/lcf_templates/"
cp "$PROJECT_ROOT/sub/ARM7-TS.lcf.template"     "$STAGING/lcf_templates/sub/"

# Include the setup script for convenience
cp "$PROJECT_ROOT/scripts/setup-ubuntu.sh"      "$STAGING/"
chmod +x "$STAGING/setup-ubuntu.sh"

# ── Pack ───────────────────────────────────────────────────────────────────────
echo "==> Creating $OUTPUT ..."
# Strip macOS extended attributes (quarantine, provenance, etc.) from staged
# files so Linux tar doesn't emit a wall of LIBARCHIVE.xattr warnings on extract.
xattr -cr "$STAGING" 2>/dev/null || true
COPYFILE_DISABLE=1 tar -czf "$OUTPUT" -C "$STAGING" .

SIZE=$(du -sh "$OUTPUT" | cut -f1)
echo ""
echo "Done.  Bundle: $OUTPUT  ($SIZE)"
echo ""
echo "Transfer to the remote Ubuntu machine with:"
echo "  scp $OUTPUT scripts/setup-ubuntu.sh <user>@<host>:~/"
echo "Then on the remote host:"
echo "  chmod +x ~/setup-ubuntu.sh && ~/setup-ubuntu.sh"
