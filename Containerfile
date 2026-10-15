# Linux build environment for pokeheartgold (pret's Meson build). On Linux,
# metroskrew runs the Metrowerks tools natively (32-bit, hence libc6:i386),
# so no Wine. Packages: INSTALL.md's Debian list, same as CI.
#
# Use it on a checkout of its own (a separate clone or `git worktree`), not the
# one you build on macOS: tools/metroskrew and the build dirs are per-platform
# (macOS gets metroskrew's Wine bundle, and meson/cross_unix.ini hard-codes
# tools/metroskrew/bin), so sharing one tree makes each side break the other.
#
# Build:  docker build --platform linux/amd64 -t pokeheartgold-build -f Containerfile .
# Run:    docker run --platform linux/amd64 --rm -v .:/work pokeheartgold-build make GAME_VERSION=HEARTGOLD check
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        bison flex g++ gcc-arm-none-eabi git make ninja-build pkg-config \
        python3 xz-utils nasm libc6:i386 libpng-dev wget ca-certificates && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /work
