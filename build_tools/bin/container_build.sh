#!/usr/bin/env bash
# Build inside an Apple Container (x86_64 Linux + WineHQ) to match CI.
#
# First-time setup:
#   container system start
#   container build --arch amd64 --tag pokeheartgold-build --file Containerfile .
#
# Usage:
#   ./build_tools/bin/container_build.sh              # build + compare HeartGold
#   ./build_tools/bin/container_build.sh --no-compare  # build without SHA1 check
#   ./build_tools/bin/container_build.sh clean         # clean build
#   ./build_tools/bin/container_build.sh -j4           # parallel build
#
# The container mounts the project directory at /work, so build artifacts
# appear directly in your local build/ directory.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
IMAGE="pokeheartgold-build"
ARCH="amd64"

# Check container CLI
if ! command -v container &>/dev/null; then
    echo "Error: 'container' CLI not found. Install Apple Container:" >&2
    echo "  https://github.com/apple/container/releases" >&2
    exit 1
fi

# Check image exists
if ! container images 2>/dev/null | grep -q "$IMAGE"; then
    echo "Building container image (first time only, ~5-10 min)..." >&2
    container build --arch "$ARCH" --tag "$IMAGE" --file "$PROJECT_ROOT/Containerfile" "$PROJECT_ROOT"
fi

# Default: build + compare
if [ $# -eq 0 ]; then
    set -- make compare
elif [ "$1" = "--no-compare" ]; then
    shift
    set -- make COMPARE=0 "$@"
elif [ "$1" = "clean" ]; then
    set -- make clean
fi

echo "Running in container ($ARCH): $*" >&2
exec container run \
    --arch "$ARCH" \
    --rm \
    -v "$PROJECT_ROOT:/work" \
    "$IMAGE" \
    "$@"
