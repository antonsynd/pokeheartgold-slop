# pokeheartgold-slop: an LLM-assisted fork of pret/pokeheartgold

[![CI build](https://github.com/antonsynd/pokeheartgold-slop/actions/workflows/build.yml/badge.svg?branch=mainline&event=push)](https://github.com/antonsynd/pokeheartgold-slop/actions/workflows/build.yml?query=branch%3Amainline)
[![Local build attestation](https://img.shields.io/badge/retail_SHA1-attested-brightgreen)](build_attestation.json)

> [!IMPORTANT]
> **This is an unofficial personal fork. It is not affiliated with, endorsed by, or reviewed by [pret](https://pret.github.io/).**
>
> * The canonical project is **[pret/pokeheartgold](https://github.com/pret/pokeheartgold)**. Most of the code here is its contributors' work, merged from upstream, and git history keeps their authorship.
> * The additions in this fork are written with LLM agents. pret [prohibits AI-generated contributions](https://github.com/pret/pokeheartgold/blob/master/CONTRIBUTING.md#ai-policy), so **don't submit code from this fork upstream**. That includes code you have adapted or rewritten from it.
> * Please **don't contact pret maintainers or post in pret channels about this fork**. Questions, complaints, and bug reports belong in this repo's [issues](https://github.com/antonsynd/pokeheartgold-slop/issues).

An experiment in LLM-assisted matching decompilation of Pokémon HeartGold and SoulSilver (US), built on top of pret's work. The goal is a byte-for-byte identical ROM: every C file must compile to the exact machine code of the retail binary. Matching bytes is the only bar this fork checks automatically. pret's standards for naming, documentation, and code quality go further, and the additions here haven't been held to them.

Target ROMs:

* [**pokeheartgold.us.nds**](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=4787) — `sha1: 4fcded0e2713dc03929845de631d0932ea2b5a37`
* [**pokesoulsilver.us.nds**](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=4788) — `sha1: f8dc38ea20c17541a43b58c5e6d18c1732c7e582`

Setup lives in [INSTALL.md](INSTALL.md).

## Progress

<!-- PROGRESS_START -->
### Progress: upstream baseline + this fork's additions

Most of the decompiled code here is the work of the [pret/pokeheartgold](https://github.com/pret/pokeheartgold) contributors, merged from upstream. The bars separate that baseline (█) from what this fork has added on top (▓). The additions are LLM-assisted and have **not** been reviewed by pret.

```
Functions in C (of ~29k total ROM functions)
  █████████████████▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ~43.6%  (~12,866)

Functions fully matching (byte-identical to retail)
  █████████████████▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ~43.3%  (~12,783)

  █ pret/pokeheartgold   ▓ added in this fork   ░ not yet in C
```

| | Functions in C | Fully matching | NONMATCHING blocks |
|---|---:|---:|---:|
| █ From pret/pokeheartgold | ~10,209 | ~10,205 | 4 |
| ▓ Added in this fork (LLM-assisted) | 2,657 | 2,578 | 79 |
| Total | ~12,866 | ~12,783 | 83 |

The fork's additions are counted from the files it decompiled. pret's figures (~) are derived from an estimated ~29,500 total ROM functions, because upstream doesn't keep the asm for decompiled files. A NONMATCHING block is a function with a C version kept for reference that is still linked from handwritten asm. It counts toward *Functions in C* but not *Fully matching*.

532 of 726 linked objects are C (73.3%). Object counts aren't comparable with upstream's, because this fork splits some overlays into smaller chunks.

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
| GNU Make 4.x | The build system (`Makefile`, `common.mk`, `filesystem.mk`) — same as upstream pret |
| [chiri](https://github.com/antonsynd/chiri) | *Optional* front end over `make` (`chiri pkg -- build`) |
| `tools/decomp_harness/` | objdiff, coverage ledger, triage queue, and the MWCC pattern knowledge base |

## Building

Needs the MWCC compiler, NitroSDK binaries, and devkitARM — see [INSTALL.md](INSTALL.md). The build is plain GNU Make; nothing project-specific has to be installed:

```bash
make                      # HeartGold, verified against the retail SHA1
make soulsilver           # SoulSilver
make compare              # alias for the HeartGold build + SHA1 check
make main COMPARE=0       # ARM9 only, skip the SHA1 check (fast iteration)
make -j8                  # parallel
```

On macOS, use Homebrew's `gmake` in place of `make` — Apple's bundled GNU Make 3.81 can hang on parallel builds of this tree (the Makefile warns when it detects 3.81).

The same operations are available through a small CLI wrapper, either directly (only needs `python3`) or via [chiri](https://github.com/antonsynd/chiri) if you have it installed. The wrapper picks `gmake` automatically when present:

| Plain Make | Wrapper | chiri |
|---|---|---|
| `make` | `build_tools/bin/build_pokeheartgold build` | `chiri pkg -- build` |
| `make soulsilver` | `… build --game soulsilver` | `chiri pkg -- build --game soulsilver` |
| `make main COMPARE=0` | `… build --target main --no-compare` | `chiri pkg -- build --target main --no-compare` |
| `make compare` | `… compare` | `chiri pkg -- compare` |

The SHA1 check (`make compare`, or any of its equivalents) is the authority on whether a decomp matches. A per-function `objdiff.py` pass is necessary but **not** sufficient — it can mask section-level differences (e.g. trailing `.balign` padding on a function whose body is 2-mod-4 bytes), so a file can show "all functions match" yet still fail the ROM SHA1.

## Contributing

Contributions to this fork follow [CONTRIBUTING.md](CONTRIBUTING.md). These rules are this fork's own and are **not** pret's. The workflow is converting assembly to matching C — see the [decompilation workflow](CLAUDE.md#decompilation-workflow) in CLAUDE.md, or use the `/decomp` skill in Claude Code.

Enable the project hooks once per clone with `git config --local core.hooksPath .githooks/`. They run clang-format, reject duplicate header declarations (MWCC's `-W error` won't tolerate them), check for IPA cascades from header changes, and refresh `COVERAGE.md`.

## Credits

This fork exists because of the [pret/pokeheartgold](https://github.com/pret/pokeheartgold) contributors. They built the decompilation's foundation by hand, and it includes the build system, tools, headers, symbol names, and most of the C in this tree. If you want to contribute to the canonical HeartGold/SoulSilver decompilation, go there and follow their contributing guidelines.
