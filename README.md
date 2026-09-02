# Pokémon HeartGold and SoulSilver

[![Build status: matching](https://img.shields.io/badge/retail_SHA1-verified-brightgreen)](build_attestation.json)

A work-in-progress matching decompilation of Pokémon HeartGold and SoulSilver (US). The goal is a byte-for-byte identical ROM: every C file must compile to the exact machine code of the retail binary.

Target ROMs:

* [**pokeheartgold.us.nds**](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=4787) — `sha1: 4fcded0e2713dc03929845de631d0932ea2b5a37`
* [**pokesoulsilver.us.nds**](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=4788) — `sha1: f8dc38ea20c17541a43b58c5e6d18c1732c7e582`

Setup lives in [INSTALL.md](INSTALL.md). For other pret projects, see [pret.github.io](https://pret.github.io/).

## Progress

<!-- PROGRESS_START -->
### This fork vs upstream ([pret/pokeheartgold](https://github.com/pret/pokeheartgold))

```
Files decompiled (C / total linked objects)
  Fork       ███████████████████████████████████░░░░░░░░░░░░░░░  70.9%  (509 / 718)
  Upstream   █████████████████████████████░░░░░░░░░░░░░░░░░░░░░  57.1%  (388 / 679)

Functions in C (of ~29k total ROM functions)
  Fork       █████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  41.1%  (12,139)
  Upstream   █████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  34.6%  (10,195)

Functions fully matching (byte-identical to retail)
  Fork       ████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  40.9%  (12,066)
  Upstream   █████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  34.5%  (10,191)
```

| Metric | Fork | Upstream | Delta |
|--------|-----:|--------:|------:|
| Files decompiled | 509 | 388 | **+121** |
| Functions in C | 12,139 | 10,195 | **+1,944** |
| NONMATCHING stubs | 73 | 4 | +69 |

Detailed function-level coverage, active blockers, and the triage queue are tracked in **[`COVERAGE.md`](tools/decomp_harness/COVERAGE.md)**, regenerated from the build by `coverage_ledger.py`.
<!-- PROGRESS_END -->

## Architecture

Two ROMs, one source tree: HeartGold and SoulSilver share everything under `src/`, with version-specific behavior selected at compile time via `GAME_VERSION`.

```
├── asm/            Assembly not yet decompiled (kept as reference)
├── src/            Decompiled C (MWCC)
├── include/        Shared ARM9 headers
├── sub/            ARM7 sub-processor module
├── files/          NitroFS data (graphics, scripts, NARCs)
├── tools/          Build tools + decomp harness
├── heartgold.us/   HG build metadata + SHA1s
└── soulsilver.us/  SS build metadata + SHA1s
```

The ROM links three object domains: the **ARM9 main + overlays** (`src/` + `asm/`, built with MWCC 2.0/sp2p2 — the decomp target), the **ARM7 sub-module** (`sub/`), and the **NitroFS filesystem** (`files/`, data only).

Decompilation converts `asm/*.s` to C one file at a time; the `.s` is kept as a reference. When a function can't be written in C that compiles to identical bytes, it stays as inline assembly with the C attempt preserved under `#ifdef NONMATCHING`.

## Toolchain

| Tool | Role |
|------|------|
| MWCC 2.0/sp2p2 | The original Metrowerks compiler (runs via Wine on macOS/Linux) |
| devkitARM | `arm-none-eabi-*` assembler and linker utilities |
| [chiri](https://github.com/antonsynd/chiri) | Build orchestrator — wraps `make` with the right flags |
| `tools/decomp_harness/` | objdiff, coverage ledger, triage queue, and the MWCC pattern knowledge base |

## Building

Needs the MWCC compiler, NitroSDK binaries, and devkitARM — see [INSTALL.md](INSTALL.md). Builds run through chiri:

```bash
chiri pkg -- build                    # HeartGold
chiri pkg -- build --game soulsilver  # SoulSilver
chiri pkg -- compare                  # build + verify the ROM SHA1 against retail
```

`chiri pkg -- compare` is the authority on whether a decomp matches. A per-function `objdiff.py` pass is necessary but **not** sufficient — it can mask section-level differences (e.g. trailing `.balign` padding on a function whose body is 2-mod-4 bytes), so a file can show "all functions match" yet still fail the ROM SHA1.

## Contributing

The workflow is converting assembly to matching C — see the [decompilation workflow](CLAUDE.md#decompilation-workflow) in CLAUDE.md, or use the `/decomp` skill in Claude Code.

Enable the project hooks once per clone with `git config --local core.hooksPath .githooks/`. They run clang-format, reject duplicate header declarations (MWCC's `-W error` won't tolerate them), check for IPA cascades from header changes, and refresh `COVERAGE.md`.
