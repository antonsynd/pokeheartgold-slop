# Pokémon HeartGold and SoulSilver

[![Build status: matching](https://img.shields.io/badge/retail_SHA1-verified-brightgreen)](build_attestation.json)

A work-in-progress matching decompilation of Pokémon HeartGold and SoulSilver (US). The goal is byte-for-byte identical ROM output — every C file must compile to the exact same machine code as the original retail binary.

This repository builds the following ROMs:

* [**pokeheartgold.us.nds**](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=4787) `sha1: 4fcded0e2713dc03929845de631d0932ea2b5a37`
* [**pokesoulsilver.us.nds**](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=4788) `sha1: f8dc38ea20c17541a43b58c5e6d18c1732c7e582`

For setup instructions, see [INSTALL.md](INSTALL.md). For contacts and other pret projects, see [pret.github.io](https://pret.github.io/).

## Progress

<!-- BEGIN PROGRESS — auto-updated by tools/decomp_harness/update_readme_progress.sh -->
| Metric | Count |
|--------|-------|
| Functions matched | 48 / 20167 |
| Files decompiled | 9 |
| Files blocked | 5 |
| Files pending | 289 |
| Patterns documented | 40 |

*Last updated: 2026-06-15*
<!-- END PROGRESS -->

Full function-level breakdown: [`COVERAGE.md`](tools/decomp_harness/COVERAGE.md)

## Architecture

Two ROMs, one source tree. HeartGold and SoulSilver share all code under `src/`; version-specific behavior is selected at compile time via `GAME_VERSION` defines.

```
├── asm/            Assembly stubs (not yet decompiled)
├── src/            Decompiled C source (MWCC)
├── include/        Shared headers (ARM9)
├── sub/            ARM7 sub-processor module
├── files/          NitroFS game data (graphics, scripts, NARCs)
├── tools/          Build tools + decomp harness
├── heartgold.us/   HG build metadata + SHA1 checksums
└── soulsilver.us/  SS build metadata + SHA1 checksums
```

The DS ROM is built from three object domains:

| Domain | Source | Compiler | Description |
|--------|--------|----------|-------------|
| ARM9 main + overlays | `src/` + `asm/` | MWCC 2.0/sp2p2 | Game logic — the decomp target |
| ARM7 sub-module | `sub/` | MWCC | Sound/WiFi coprocessor |
| NitroFS filesystem | `files/` | N/A (data) | Graphics, messages, maps, battle data |

Decompilation converts `asm/*.s` files into equivalent C in `src/`, one file at a time. The original `.s` file is kept as a reference. When a function can't be expressed in C to produce identical bytes, it stays as handwritten assembly with the C attempt preserved under `#ifdef NONMATCHING`.

### Toolchain

| Tool | Role |
|------|------|
| [MWCC](https://en.wikipedia.org/wiki/CodeWarrior) 2.0/sp2p2 | Original Metrowerks C compiler (runs via Wine on macOS/Linux) |
| devkitARM (`arm-none-eabi-*`) | Assembler, linker utilities |
| [chiri](https://github.com/antonsynd/chiri) | Build orchestrator (wraps `make` with correct flags) |
| `objdiff.py` | Per-function byte comparison (asm .o vs C .o) |
| `coverage_ledger.py` | Function-level progress tracking |
| `triage.py` | Ranks pending files by expected decomp cost |
| `patterns.py` | Knowledge base of MWCC codegen patterns |

## Quality Gates

Every decompiled file must pass through multiple verification layers before it's accepted:

| Gate | What it checks | When |
|------|----------------|------|
| `objdiff.py` | Byte-identical function output (asm .o vs C .o) | Every build iteration |
| `chiri pkg -- compare` | Full ROM SHA1 against retail | Before accepting any decomp |
| `clang-format` | Code style (pre-commit hook) | Every commit |
| Duplicate decl check | No redeclared prototypes in headers (MWCC rejects them) | Every commit |
| IPA cascade check | Header changes don't break already-matched files | Every commit (if build exists) |
| Pre-build guard | Blocks builds if stale MWCC processes are running; cleans corrupted `.d` files | Every build |

The pre-commit hook (`.githooks/pre-commit`) enforces the first three commit-time gates automatically. The pre-build guard runs as a Claude Code hook (`.claude/settings.json`).

### Known Blockers

Active issues that prevent certain files from being decompiled:

| Blocker | Impact | Description |
|---------|--------|-------------|
| IPA shared headers | 2 blocked, gates 124 | MWCC `-ipa file` cascades codegen on any header signature change |
| Param copy-prop | 1 blocked, gates 37 | MWCC copy-propagates parameter copies in a way C can't reproduce |
| Ext data section split | 1 blocked | MWCC splits external const arrays into per-symbol `.rodata` sections |

## Building

Prerequisites: MWCC compiler, NitroSDK binaries, devkitARM. See [INSTALL.md](INSTALL.md) for full setup.

```bash
chiri pkg -- build           # Build HeartGold
chiri pkg -- build --game soulsilver
chiri pkg -- build --game both
chiri pkg -- compare         # Build + verify SHA1 against retail
```

## Contributing

The primary workflow is converting assembly files to matching C. See the [decompilation workflow](CLAUDE.md#decompilation-workflow) in CLAUDE.md for the step-by-step process, or use the automated `/decomp` skill in Claude Code.
