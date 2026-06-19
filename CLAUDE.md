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

**ARM64 / Apple Silicon builds:** MWCC via Wine on ARM64 (Rosetta 2) produces identical output to native x86_64. Only the retail SHA1 files (`main.sha1` / `rom.sha1`) are used — no platform-specific variants.

**Docker volume caution.** Docker builds (`docker run -v .:/work`) share the project directory. Running `make clean-tools` or `make tools` inside a container replaces native tool binaries (nitrogfx, compstatic, etc.) with Linux ELF binaries. Run `make clean-tools && make tools` on macOS after any container build to restore native tools.

**Cross-environment `.d` files.** When switching between macOS and Docker builds, `.d` dependency files may contain absolute paths from the other environment (`/Users/...` vs `/work/...`). Run `find build lib/dsprot sub -name "*.d" -delete` before building in a different environment.

The shell is zsh: unquoted words starting with `=` (e.g. `echo ====` as a separator) fail with `... not found` — quote them.

**Important:** Always use `chiri pkg -- build` rather than raw `make -C <path>`. If the project directory is accessed through a symlink, Wine resolves CWD differently than `winepath -w $(PROJECT_ROOT)`, and only `chiri` sets up the working directory correctly. If `make` spins at 100% CPU, kill it, run `find build -name "*.d" -delete`, then `chiri pkg -- tidy` and rebuild.

**Build recovery:** `./tools/decomp_harness/recomp.sh` kills stale processes, cleans corrupted `.d` files, and rebuilds. Use it when builds hang or fail after switching asm→C. Use `--full` for a complete clean rebuild.

**Build timeouts and runaway processes:** All build/make commands MUST use `timeout: 1200000` (20 minutes). Builds that hang (e.g. Wine path issues, `.d` file corruption) will otherwise spin at 100% CPU indefinitely. **Never** launch multiple background build commands — run one at a time, and kill the previous one before starting a new build. Before starting any build, check for and kill stale processes:
```bash
# Kill any leftover make/wine processes from prior builds
pkill -f 'make.*heartgold\|make.*soulsilver\|mwccarm\|mwldarm\|mwasmarm' 2>/dev/null; sleep 1
```
If a build times out, do `find build -name "*.d" -delete && chiri pkg -- tidy` before retrying.

A PreToolUse hook (`tools/decomp_harness/prebuild_guard.sh`, wired in `.claude/settings.json`) runs automatically before `chiri`/`make` commands: it blocks the build if MWCC processes are already running and deletes `.d` files corrupted with Wine `Z:\` paths. The manual cleanup above is the fallback if the hook is bypassed.

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
- `/decomp-delegate` or `/decomp-delegate asm/filename.s` — same as above but Qwen (local Ollama) drafts the first-pass C; Claude reviews, integrates, and owns the build-compare judgment loop. Best for mechanical files (getters/setters, save-chunk accessors, data-only). Requires `ollama serve` with `qwen3-coder:30b` pulled.
- `/loop /decomp-loop` — continuously decompile files in series (Claude only)
- `/loop /decomp-delegate-loop` — continuously decompile files in series using Qwen for first-pass drafts; stops automatically on ALL_DONE or if Ollama is unreachable
- `/decomp-sweep [N]` — parallel read-only pre-analysis of upcoming targets into `knowledge.json` (safe to run during builds)
- `/decomp-status` — function-level coverage, blocker gating, next triage targets

Manual workflow for a file `asm/<name>.s`:
1. Read `asm/<name>.s` and `asm/include/<name>.inc` to understand functions
2. Search `include/` and `src/` for callers, headers, and similar patterns — and check prior knowledge: the file's entry in `tools/decomp_harness/knowledge.json` (sweep hypotheses/risks) and `attempts_log.py query --file asm/<name>.s` (logged dead ends)
3. Create `src/<name>.c` (and `include/<name>.h` if needed)
4. Before switching `main.lsf`, build with asm to save a reference: `cp build/heartgold.us/asm/<name>.o /tmp/<name>_asm.o`
5. In `main.lsf`, change `Object asm/<name>.o` → `Object src/<name>.o`
6. Do NOT modify `save_arrays.c` — adding `#include` of a new header causes IPA cascade. Leave the existing `DECL_CHUNK_EX` macros in place
7. Build: `chiri pkg -- build --target main --no-compare` (fast, ARM9 only). **Always use `timeout: 1200000`.**
8. Compare function-by-function: `python3 tools/decomp_harness/objdiff.py /tmp/<name>_asm.o build/heartgold.us/src/<name>.o`
9. Verify: `chiri pkg -- compare` (full ROM SHA1 — `main.sha1` checks the ELF, `rom.sha1` checks the final ROM)
10. If mismatch: use `objdiff.py --bytes <func>` or `./tools/asmdiff/asmdiff.sh <address>` to see byte diffs, adjust C, repeat

Do **not** delete the original `.s` file. Function order in the C file must match the asm. Accumulated matching knowledge lives in `tools/decomp_harness/patterns.json` (source of truth, query with `patterns.py query --grep <word>`, add with `patterns.py add`); `insights.md` is **generated** from it — never edit insights.md directly.

**Decomp harness scripts (`tools/decomp_harness/`):** `next_target.sh [--info]` prints the next asm file from the triage queue (easiest first; falls back to `main.lsf` order); `triage.py [--rebuild]` ranks pending files by expected cost into `triage_report.json`; `coverage_ledger.py` regenerates the function-level ledger (`coverage_ledger.json` + `COVERAGE.md`, includes blocker gating counts from `blockers.json`); `attempts_log.py add|query|summary` records per-function attempts and dead ends in `attempts_log.jsonl` — query it before attempting a file, log every distinct dead end; `sweep/` + `/decomp-sweep` run parallel read-only pre-analysis agents whose merged output is `knowledge.json` (signature/struct hypotheses per file); `revert.sh asm/<name>.s` undoes a decomp attempt (restores `main.lsf`, removes the generated C/H files); `run.sh` is the automated outer loop that drives Claude Code per-file. Known harness and build-reliability issues (Wine `.d` flakiness, pending rodata/prototype fixes) are tracked in `tools/decomp_harness/TODO.md`; systemic matching blockers in `blockers.json`.

**Model delegation.** Keep judgment (C-shape choice, byte-diff diagnosis, IPA reasoning) on the session model; delegate bulk work down: spawn subagents with `model: sonnet` for mechanical checks (`decomp-verifier` defaults to it), and use `tools/decomp_harness/delegate.sh` to draft C from asm on local Ollama (`qwen3-coder:30b`). Local-model output is an untrusted draft — always review against the patterns DB and verify with build + objdiff. Full contract in `tools/decomp_harness/DELEGATION.md`.

**`.inc` files mix imports and exports.** `.public` declarations include both symbols defined in the `.s` file (true exports) and symbols referenced from other files (imports like `Heap_Alloc`, `memcpy`). Cross-reference with `thumb_func_start`/`arm_func_start` to distinguish which are defined locally (→ non-static in C, add to header) vs imported (→ extern declarations in C).

**NONMATCHING inline asm syntax differs from standalone asm.** Use `ldr rN, =0xVALUE` (not `ldr rN, label` + `label: .word VALUE`). Use `ldr rN, =FuncName` for function pointer loads. `.balign` directives are unsupported — remove them. Wrap in `// clang-format off` / `// clang-format on`.

**Both objdiff AND `chiri pkg -- compare` must pass.** Never accept a decomp based solely on `objdiff.py --summary`. Always run `chiri pkg -- compare` for the full ROM SHA1 check. The `objdiff.py` tool verifies individual functions; the SHA1 check catches section-level differences (alignment, padding, rodata layout) that objdiff may miss.

**IPA header discipline.** MWCC `-ipa file` cascades codegen changes when ANY declaration in a visible header changes — even adding new function declarations for functions the TU never calls. When a decomp adds declarations to a shared header, use the **split header pattern**: keep the public header frozen at the callers' matching-time state; the defining `.c` file includes `<name>_internal.h` with correct types. Files matched against a different header state must NOT include the changed header — use local forward declarations with the types they were matched with.
