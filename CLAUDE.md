# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

WIP matching disassembly of Pokémon HeartGold and SoulSilver (US). Goal: byte-for-byte identical ROM. Final linked output must match the retail SHA1 (`heartgold.us/rom.sha1`, `soulsilver.us/rom.sha1`).

## Build

The project is configured as a [chiri](https://github.com/antonsynd/chiri) package (`chiri_config.json5` → `build_tools/bin/build_pokeheartgold`). Prefer the chiri entry points when driving builds — they're thin wrappers around `make` with the right `GAME_VERSION` / `COMPARE` flags wired up:

- `chiri pkg -- build` — build HeartGold (default)
- `chiri pkg -- build --game soulsilver` — build SoulSilver
- `chiri pkg -- build --game both` — build both ROMs
- `chiri pkg -- build --target main|sub|filesystem` — partial rebuild (ARM9 / ARM7 / NitroFS)
- `chiri pkg -- build --no-compare` — skip retail SHA1 verification (`COMPARE=0`)
- `chiri pkg -- build -j4` — parallel jobs
- `chiri pkg -- compare` / `chiri pkg -- test` — build and verify against retail SHA1 (the matching check *is* the test for a decomp)
- `chiri pkg -- tidy` / `chiri pkg -- clean` — shallow / full clean
- `chiri pkg -- format` — runs `./format.sh`

Note the `--` separator: chiri consumes its own args first, then forwards everything after `--` to `build_tools/bin/build_pokeheartgold`. Extra args after a second `--` are passed through to `make` (e.g. `chiri pkg -- build -- FOO=bar`).

Underlying raw `make` still works: `make` builds HeartGold (`build/heartgold.us/pokeheartgold.us.nds`); `make soulsilver` builds SoulSilver. Both are gated by a sha1 check unless you pass `COMPARE=0`. `GAME_VERSION=HEARTGOLD|SOULSILVER` is the version switch — all version-aware sub-targets honor it.

Partial targets (avoid rebuilding the whole ROM while iterating):
- `make main` — ARM9 modules only (matches the `.elf` / static + overlays)
- `make sub` — ARM7 module (driven by `sub/Makefile`)
- `make filesystem` — NitroFS assets only (driven by `filesystem.mk`)
- `make tidy` — clean build outputs but keep generated tools
- `make clean` — full clean (incl. `lib/dsprot`, `lib/syscall`, tools, generated filesystem)
- `make compare` — alias for `compare_heartgold`

After pulling upstream, if things break try in order: `make tidy && make compare`, then `make clean && make compare`, then `git clean -fdx && make compare`.

Prerequisites are **not** in the repo and must be staged manually (see `INSTALL.md`): MWCC `2.0/sp2p2` at `tools/mwccarm/2.0/sp2p2/mwccarm.exe`, NitroSDK binaries at `tools/bin/`, and the NitroSDK LCF templates copied to `ARM9-TS.lcf.template` (root) / `sub/ARM7-TS.lcf.template` / `mwldarm.response.template` (root). Without these `make` will fail early. On macOS/Linux, MWCC runs via `wine`; `nitrocrypto.o` is special-cased to build with MWCC `1.2/sp2p3`.

On macOS, install prerequisites via Homebrew: `brew tap osx-cross/homebrew-arm && brew install gnu-sed arm-gcc-bin wine-crossover`. The build requires `gsed` (GNU sed) — without it, `.d` dependency files retain Wine `Z:` paths and break `make`.

**Important:** Always use `chiri pkg -- build` rather than raw `make -C <path>`. If the project directory is accessed through a symlink, Wine resolves CWD differently than `winepath -w $(PROJECT_ROOT)`, and only `chiri` sets up the working directory correctly. If `make` spins at 100% CPU, kill it, run `find build -name "*.d" -delete`, then `chiri pkg -- tidy` and rebuild.

## Formatting

`./format.sh` runs `clang-format` over the tree. Requires **clang-format 18+** (the style file uses options newer versions only). A pre-commit hook lives in `.githooks/`; enable with `git config --local core.hooksPath .githooks/`.

clang-format does **not** understand MWCC inline asm. For NONMATCHING blocks, wrap the asm variant in `// clang-format off` / `// clang-format on` and gate with `#ifdef NONMATCHING` / `#else` so the C variant stays formatted while the asm variant is untouched.

## Architecture

This is a **matching decomp**, not a reimplementation. The guiding constraint on every change is: does the compiler still emit the same bytes? That shapes the source layout more than any logical concern.

**Two ROMs, one tree.** `heartgold.us/` and `soulsilver.us/` are not source — they hold per-version build metadata only: `main.sha1`, `rom.sha1`, `filesystem.sha1`, the banner spec, icon, and ROM-header template. Version-specific behavior in the shared `src/` tree is selected via `GAME_VERSION` defines from `config.mk`, not via divergent files.

**Three object domains, linked into a DS ROM:**
- **ARM9 main + overlays** — built from `src/` (C, MWCC) and `asm/` (assembler stubs for functions not yet decompiled or where C can't match). Entry in the root `Makefile`; link script `main.lsf` + `ARM9-TS.lcf.template`; response file `mwldarm.response.template`. `include/` is the public header tree shared across ARM9 code. Overlays are the `overlay_XX_*` files under `asm/` and matching subdirs under `src/`.
- **ARM7 sub-module** — self-contained build under `sub/` with its own `Makefile`, `global.inc`, LCF, and sha1. Built by `make sub`.
- **NitroFS filesystem** — `files/` holds game data (graphics, message archives, NARCs, map scripts, battle data, etc.). `filesystem.mk` drives packing; `graphics_files_rules.mk` handles graphic conversion. Outputs are checked against `filesystem.sha1`.

**Build scaffolding.** `common.mk` defines compiler/assembler/linker toolchain vars, search paths, and object rules shared across the ARM9 and sub Makefiles. `config.mk` holds per-version switches. `platform.mk` handles host-OS differences (wine vs native). `binutils.mk` centralizes devkitARM `arm-none-eabi-*` tool paths. `global.inc` is force-included into every assembler translation unit; `include/global.h` is force-included into every C translation unit (see the `$(ASM_OBJS)` / `$(C_OBJS)` rules in `Makefile`).

**In-tree tools (`tools/`).** Many targets depend on small custom utilities that are built from source on first invocation: `nitrogfx` (image → DS graphic formats), `nitroarc` / `o2narc` (NARC pack/unpack), `jsonproc` (templated JSON → data tables), `msgenc` (message archive encoder), `gen_fx_consts` (fixed-point constant tables), `fixrom`, `compstatic`, `elfcoder`, `mwasmarm_patcher`, etc. `asm_processor/` preprocesses MWCC source so inline-asm tricks survive. `asmdiff` and `py_scripts/` are decomp workflow helpers. The `tools` sub-make is run automatically from `make all`.

**NONMATCHING pattern.** When a function cannot be expressed in C such that MWCC emits identical bytes, it is committed as handwritten asm and the C version is kept under `#ifdef NONMATCHING` as documentation. Do not "clean up" such asm — it was written to match a specific compiler output and is load-bearing for `COMPARE=1`.

## Codebase exploration (MCP)

This project has a code-review-graph knowledge graph. **Prefer graph tools over Grep/Glob/Read** for exploration, impact analysis, and review — they're faster, cheaper, and give structural context (callers, tests, flows) that file scanning cannot.

| Tool | Use when |
|------|----------|
| `detect_changes` | Reviewing code changes — risk-scored analysis |
| `get_review_context` | Need source snippets for review — token-efficient |
| `get_impact_radius` | Understanding blast radius of a change |
| `get_affected_flows` | Finding which execution paths are impacted |
| `query_graph` | Tracing callers_of / callees_of / imports_of / tests_for |
| `semantic_search_nodes` | Finding functions/classes by name or keyword |
| `get_architecture_overview` | High-level structure, community layout |
| `refactor_tool` | Planning renames, finding dead code |

The graph auto-updates on file changes via hooks. Fall back to Grep/Glob/Read only when the graph doesn't cover what you need (e.g. raw asm, Makefile text, binary files under `files/`).

## Decompilation Workflow

The primary activity is converting `asm/*.s` files to matching C in `src/`. Use the built-in skills:

- `/decomp` or `/decomp asm/filename.s` — decompile one file with build-compare feedback loop
- `/loop /decomp-loop` — continuously decompile files in series

Manual workflow for a file `asm/<name>.s`:
1. Read `asm/<name>.s` and `asm/include/<name>.inc` to understand functions
2. Search `include/` and `src/` for callers, headers, and similar patterns
3. Create `src/<name>.c` (and `include/<name>.h` if needed)
4. In `main.lsf`, change `Object asm/<name>.o` → `Object src/<name>.o`
5. If `save_arrays.c` has a `DECL_CHUNK_EX` for your functions, replace it with an `#include` of the new header
6. Build: `chiri pkg -- build --target main --no-compare` (fast, ARM9 only)
7. Verify: `chiri pkg -- compare` (full ROM SHA1 — `main.sha1` checks the ELF, `rom.sha1` checks the final ROM)
8. If mismatch: `./tools/asmdiff/asmdiff.sh <address>` to see byte diffs, adjust C, repeat

Do **not** delete the original `.s` file. Function order in the C file must match the asm. Accumulated matching knowledge is in `tools/decomp_harness/insights.md`.
