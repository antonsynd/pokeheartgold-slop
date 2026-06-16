# Build environment for pokeheartgold decomp.
# Uses Wine 7.0 (pre-page-size-assertion) under QEMU to avoid the
# Wine + Apple Silicon page size crash that affects Wine 8.0+.
#
# Build:  docker build --platform linux/amd64 -t pokeheartgold-build -f Containerfile .
# Run:    docker run --platform linux/amd64 --rm -v .:/work pokeheartgold-build make -j4 compare
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV CC=gcc-10
ENV CXX=g++-10

# Base packages (matches CI)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        software-properties-common wget gnupg2 ca-certificates && \
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get update && \
    apt-get install -y --allow-downgrades \
        g++-10-multilib linux-libc-dev binutils-arm-none-eabi \
        p7zip-full pkg-config libpugixml-dev libpng-dev zlib1g-dev make git && \
    apt-get install -y ppa-purge && \
    ppa-purge -y ppa:ubuntu-toolchain-r/test || true && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 10 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 10

# Wine from Ubuntu repos (7.0) — predates the page-size assertion that
# crashes under QEMU on Apple Silicon (16KB host pages vs 4KB expected)
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine64 wine32 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Warm Wine prefix
RUN wineboot --init 2>/dev/null || true

WORKDIR /work
