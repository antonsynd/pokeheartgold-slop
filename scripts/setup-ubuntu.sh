#!/usr/bin/env bash
# setup-ubuntu.sh — set up the pokeheartgold matching-decomp build environment
# on Ubuntu x86_64.
#
# Usage:
#   # From the same directory as pokeheartgold-tools.tar.gz:
#   ./setup-ubuntu.sh [--repo <url>] [--dir <checkout-dir>]
#
# Options:
#   --repo <url>   Git repo to clone. Default: https://github.com/pret/pokeheartgold
#   --dir  <path>  Where to clone / find the repo. Default: ~/pokeheartgold
#
# Requires: the pokeheartgold-tools.tar.gz bundle in the same directory as this
# script.  See scripts/bundle-tools.sh on the source machine.

set -euo pipefail

# ── Argument defaults ──────────────────────────────────────────────────────────
REPO_URL="https://github.com/antonsynd/pokeheartgold-slop"
REPO_DIR="$HOME/pokeheartgold"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --repo) REPO_URL="$2"; shift 2 ;;
        --dir)  REPO_DIR="$2"; shift 2 ;;
        *)      echo "Unknown option: $1"; exit 1 ;;
    esac
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUNDLE="$SCRIPT_DIR/pokeheartgold-tools.tar.gz"

# ── Helpers ────────────────────────────────────────────────────────────────────
warn()  { echo "[WARN]  $*" >&2; }
info()  { echo "[INFO]  $*"; }
die()   { echo "[ERROR] $*" >&2; exit 1; }
check() { command -v "$1" &>/dev/null; }

# ── Platform check ─────────────────────────────────────────────────────────────
if [[ "$(uname -s)" != "Linux" ]]; then
    warn "This script targets Linux; detected '$(uname -s)' — proceed with caution."
fi

ARCH="$(uname -m)"
if [[ "$ARCH" != "x86_64" ]]; then
    warn "Architecture is '$ARCH'; Wine-based MWCC requires x86_64."
fi

# ── Bundle check ───────────────────────────────────────────────────────────────
if [[ ! -f "$BUNDLE" ]]; then
    die "Bundle not found: $BUNDLE
Run scripts/bundle-tools.sh on the source machine, then scp both files here."
fi

# ── Check existing tools ───────────────────────────────────────────────────────
echo ""
echo "==> Checking existing tools and dependencies..."
echo ""

NEED_APT=()

check_tool() {
    local cmd="$1" pkg="$2" note="${3:-}"
    if check "$cmd"; then
        info "  [OK]  $cmd"
    else
        warn "  [--]  $cmd  (apt package: $pkg)${note:+  — $note}"
        NEED_APT+=("$pkg")
    fi
}

check_cmd_only() {
    local cmd="$1" how="$2"
    if check "$cmd"; then
        info "  [OK]  $cmd"
    else
        warn "  [--]  $cmd  — $how"
    fi
}

# Core build tools
check_tool make          make
check_tool python3       python3
check_tool pkg-config    pkg-config
check_tool git           git

# ARM cross-toolchain — only objcopy/ar are needed (MWCC is the compiler).
# Both are in binutils-arm-none-eabi; gcc-arm-none-eabi is NOT required.
check_tool arm-none-eabi-objcopy binutils-arm-none-eabi  "devkitARM also works; see INSTALL.md"
check_tool arm-none-eabi-ar      binutils-arm-none-eabi

# Wine (to run MWCC .exe on Linux)
check_tool wine          wine  "32-bit support also needed; script adds i386 arch"

# Libraries (build-time; no binary to check — check headers instead)
if pkg-config --exists libpng 2>/dev/null; then
    info "  [OK]  libpng (pkg-config)"
else
    warn "  [--]  libpng-dev  (needed by nitrogfx)"
    NEED_APT+=("libpng-dev")
fi

if pkg-config --exists pugixml 2>/dev/null; then
    info "  [OK]  pugixml (pkg-config)"
else
    warn "  [--]  libpugixml-dev  (needed by jsonproc / nitroarc)"
    NEED_APT+=("libpugixml-dev")
fi

# build-essential (heuristic: check for gcc)
if check gcc; then
    info "  [OK]  build-essential (gcc present)"
else
    warn "  [--]  build-essential"
    NEED_APT+=("build-essential")
fi

# Optional / workflow tools
echo ""
check_cmd_only gh   "install via: brew install gh  OR  https://cli.github.com"
check_cmd_only brew "expected at /home/linuxbrew/.linuxbrew/bin/brew; add to PATH if missing"

# chiri build orchestrator
if check chiri; then
    info "  [OK]  chiri"
else
    warn "  [--]  chiri  — needed for 'chiri pkg -- build'; see below for install"
fi

# ── Install missing apt packages ───────────────────────────────────────────────
if [[ ${#NEED_APT[@]} -gt 0 ]]; then
    echo ""
    info "==> Installing missing apt packages: ${NEED_APT[*]}"

    if [[ $EUID -ne 0 ]] && ! check sudo; then
        die "Need sudo to install packages but sudo is not available."
    fi

    SUDO=""
    [[ $EUID -ne 0 ]] && SUDO="sudo"

    # Enable 32-bit architecture for Wine (must come before apt install wine)
    if ! dpkg --print-foreign-architectures 2>/dev/null | grep -q i386; then
        info "  Enabling i386 architecture for Wine..."
        $SUDO dpkg --add-architecture i386
    fi

    # Add wine32 support if wine is in the install list.
    # Ubuntu 18.04 uses plain "wine32"; 20.04+ uses "wine32:i386".
    if printf '%s\n' "${NEED_APT[@]}" | grep -q '^wine$'; then
        UBUNTU_VER="$(. /etc/os-release 2>/dev/null && echo "${VERSION_ID:-0}" || echo "0")"
        if [[ "$(echo "$UBUNTU_VER >= 20.04" | bc 2>/dev/null || echo 1)" -eq 1 && "$UBUNTU_VER" != "0" ]]; then
            NEED_APT+=("wine32:i386")
        else
            NEED_APT+=("wine32")
        fi
    fi

    $SUDO apt-get update -qq
    $SUDO apt-get install -y "${NEED_APT[@]}"
else
    echo ""
    info "==> All apt dependencies already installed."
fi

# ── Clone repository ───────────────────────────────────────────────────────────
echo ""
info "==> Repository: $REPO_URL  →  $REPO_DIR"

if [[ -d "$REPO_DIR/.git" ]]; then
    info "  Repo already cloned at $REPO_DIR — skipping clone."
    info "  To update: cd $REPO_DIR && git pull"
else
    info "  Cloning..."
    git clone "$REPO_URL" "$REPO_DIR"
fi

# ── Unpack tools bundle ────────────────────────────────────────────────────────
echo ""
info "==> Unpacking tool bundle into $REPO_DIR ..."

STAGING="$(mktemp -d)"
trap 'rm -rf "$STAGING"' EXIT

tar -xzf "$BUNDLE" -C "$STAGING"

# MWCC compiler versions
for ver_path in "$STAGING/tools/mwccarm/2.0/sp2p2" "$STAGING/tools/mwccarm/1.2/sp2p3"; do
    rel="${ver_path#$STAGING/}"
    dest="$REPO_DIR/$rel"
    mkdir -p "$dest"
    cp -r "$ver_path/." "$dest/"
    info "  Installed: $rel"
done

# MWCC license
cp "$STAGING/tools/mwccarm/license.dat" "$REPO_DIR/tools/mwccarm/license.dat"
info "  Installed: tools/mwccarm/license.dat"

# NitroSDK tools/bin
mkdir -p "$REPO_DIR/tools/bin"
cp -r "$STAGING/tools/bin/." "$REPO_DIR/tools/bin/"
info "  Installed: tools/bin/"

# LCF / linker templates (not in git; must be placed at project root and sub/)
cp "$STAGING/lcf_templates/ARM9-TS.lcf.template"      "$REPO_DIR/ARM9-TS.lcf.template"
cp "$STAGING/lcf_templates/mwldarm.response.template"  "$REPO_DIR/mwldarm.response.template"
mkdir -p "$REPO_DIR/sub"
cp "$STAGING/lcf_templates/sub/ARM7-TS.lcf.template"   "$REPO_DIR/sub/ARM7-TS.lcf.template"
info "  Installed: ARM9-TS.lcf.template, mwldarm.response.template, sub/ARM7-TS.lcf.template"

# Make sure .exe files are executable (Wine needs +x on the host)
find "$REPO_DIR/tools/mwccarm" "$REPO_DIR/tools/bin" -name "*.exe" -exec chmod +x {} \;

# ── Wine first-run: present license prompt ─────────────────────────────────────
echo ""
info "==> Running MWCC once to trigger licence acceptance (Wine first-run)..."
info "  If a dialog appears, point it to: $REPO_DIR/tools/mwccarm/license.dat"
wine "$REPO_DIR/tools/mwccarm/2.0/sp2p2/mwccarm.exe" 2>/dev/null || true

# ── chiri install hint ─────────────────────────────────────────────────────────
if ! check chiri; then
    echo ""
    warn "==> chiri not found. Install it so 'chiri pkg -- build' works:"
    if check brew; then
        echo ""
        echo "    brew install antonsynd/chiri/chiri"
        echo "    # OR from source:"
    fi
    echo "    git clone https://github.com/antonsynd/chiri && cd chiri"
    echo "    # follow the README to build and install"
    echo ""
    warn "Without chiri you can still use raw make: cd $REPO_DIR && make"
fi

# ── Final summary ──────────────────────────────────────────────────────────────
echo ""
echo "Setup complete!"
echo ""
echo "  Repo:  $REPO_DIR"
echo ""
echo "  To build:"
echo "    cd $REPO_DIR"
echo "    chiri pkg -- build          # HeartGold (needs chiri)"
echo "    make                        # HeartGold (raw make)"
echo "    make soulsilver             # SoulSilver"
echo ""
echo "  See INSTALL.md for troubleshooting steps."
