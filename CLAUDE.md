# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

WIP matching disassembly of Pokémon HeartGold and SoulSilver (US). Goal: byte-for-byte identical ROM. Final linked output must match the retail SHA1 (`heartgold.us/rom.sha1`, `soulsilver.us/rom.sha1`).

## Build

The build system is **pret's Meson build** (since the sync with pret master, #22; plan and history in `tools/decomp_harness/MESON_SYNC_PLAN.md`). The top-level `Makefile` is upstream's thin driver: it clones meson 1.12.0 into `subprojects/`, downloads [metroskrew](https://github.com/mid-kid/metroskrew) (the Metrowerks compiler, assembler and linker) into `tools/metroskrew/`, configures one build dir per game (`build/heartgold.us`, `build/soulsilver.us`) and runs ninja. The libraries (NitroSDK, NitroSystem, NitroWiFi, NitroDWC, libvct) are git-wrap subprojects; NitroSDK's `makelcf` and the ARM7 binary (`ichneumon_sub`) build from source. Three equivalent entry points:

1. **Plain Make** — `make` (HeartGold: build, then check), `make GAME_VERSION=SOULSILVER`, `make GAME_VERSION=X check`. Don't use `make soulsilver check`: the `soulsilver` target runs a whole sub-make, and the trailing `check` then builds HeartGold too.
2. **The wrapper** — `build_tools/bin/build_pokeheartgold <cmd>` (python3 only). Adds a subcommand CLI and `--game both`; configures on first use, and before every build moves any subproject checkout that has fallen behind its `.wrap` revision (Meson never does this itself). With plain `make` after a pull that bumps a `.wrap`, run `subprojects/meson-1.12.0/meson.py subprojects update --sourcedir . <Name>` yourself, or the build compiles against the old headers.
3. **[chiri](https://github.com/antonsynd/chiri)** — `chiri pkg -- <cmd>`. *Optional.* `chiri_config.json5` points chiri at the wrapper, so `chiri pkg -- X` ≡ `build_tools/bin/build_pokeheartgold X`.

Repo scripts (e.g. `recomp.sh`) call the wrapper directly, so chiri is never required. This doc and the `/decomp` skills use the chiri spelling for brevity; substitute either of the others freely. Wrapper/chiri commands:

- `chiri pkg -- build` — build HeartGold and run the sha1 tests
- `chiri pkg -- build --game soulsilver` / `--game both`
- `chiri pkg -- build --target main|sub|filesystem` — partial build: `main.nef` (ARM9), `ichneumon_sub` (ARM7), or the NitroFS targets
- `chiri pkg -- build --no-compare` — skip the sha1 tests
- `chiri pkg -- build -j8` — parallel jobs for ninja
- `chiri pkg -- compare` / `chiri pkg -- test` — build and run the four sha1 tests (Main, Sub, Filesystem, ROM); the matching check *is* the test for a decomp
- `chiri pkg -- tidy` (`ninja -t clean`, keeps the configuration) / `chiri pkg -- clean` (deletes the build dir)
- `chiri pkg -- format` — runs `./format.sh`

Note the `--` separator: chiri consumes its own args first, then forwards everything after `--` to the wrapper. Extra args after a second `--` go to `meson compile` / ninja.

Direct Meson: `ninja -C build/heartgold.us pokeheartgold.us.nds`, then `subprojects/meson-1.12.0/meson.py test -C build/heartgold.us`. The tests depend on the ROM (a fork edit to `meson.build`, plan decision D7), so `meson test` rebuilds it first; without that it would check whatever stale files were in the build dir. Objects are named after their source: `src/field/fieldmap.c` → `build/heartgold.us/main.nef.p/src_field_fieldmap.c.o`. The linker map is `build/<game>/main.nef.xMAP`.

**`main.lsf` is the link order and the source of truth for what is built.** `src/meson.build` and `asm/meson.build` are **generated** from it by `python3 tools/decomp_harness/meson_port.py lists` (never edit them; the pre-commit hook checks them). To link C instead of asm (or back), use `python3 tools/decomp_harness/lsf_flip.py asm/<name>.s src/<name>.c`, which swaps the `Object main.nef.p/...` line and regenerates the lists. Every asm→C flip edits `meson.build`, so the next build re-runs Meson's configure (~1 min).

**Prerequisites.** Linux: see `INSTALL.md` (`bison flex g++ gcc-arm-none-eabi ninja-build pkg-config python3 xz-utils nasm libc6:i386 libpng-dev`). CI builds on Ubuntu with metroskrew running natively, no Wine (about 4× faster than Wine on macOS). macOS: `brew install gcc@14 bison flex ninja libpng pkg-config xz arm-none-eabi-gcc wget wine-crossover` (`meson/native_macos.ini` hard-codes `gcc-14`). metroskrew's macOS bundle runs the Metrowerks tools under Wine, so Rosetta is needed too (memory: macOS 27 removed it once; `softwareupdate --install-rosetta`). Homebrew's bison and flex are keg-only: the wrapper puts `/opt/homebrew/opt/{bison,flex}/bin` first on PATH; with plain `make`, export that PATH yourself, or the configure step finds macOS's 2006 bison.

**Keep the checkout path short on macOS.** The Metrowerks tools under Wine fail with `die: FormatMessageA` on any path over Windows' 260-character limit (`MAX_PATH`). Upstream's deepest object path inside the build dir is about 135 characters, so a checkout path of about 120 characters or more breaks. `/Users/<you>/Documents/github/pokeheartgold-slop` is fine; a deep temp dir is not.

**Never pass `NINJA="ninja -jN"` to make.** Make exports command-line variables, and meson reads `$NINJA` as the name of a single program, so configure fails with "Could not detect Ninja v1.8.2 or newer". Pass `-j` to ninja (or the wrapper's `-j`) instead.

**Build timeouts and runaway processes:** All build commands MUST use `timeout: 1200000` (20 minutes). **Never** launch multiple background build commands — run one at a time, and kill the previous one before starting a new build. Before starting any build, check for and kill stale processes:
```bash
# Kill any leftover ninja/Metrowerks processes from prior builds
pkill -f 'ninja -C build/|mwccarm|mwldarm|mwasmarm' 2>/dev/null; sleep 1
```
A full build of this fork under Wine on macOS is slow (about 1 compile per second at `-j8`, ~17k sources): build incrementally, and use CI (or `--target main`) for whole-tree checks.

A PreToolUse hook (`tools/decomp_harness/prebuild_guard.sh`, wired in `.claude/settings.json`) runs automatically before `chiri`/`make`/`ninja`/`meson`/`build_tools/bin/build_pokeheartgold` commands and blocks the build if Metrowerks processes are already running. Commands it can't parse (heredocs, `$(...)`, `bash script`) also trigger it while a build runs; use a script file run with `python3 file.py` instead.

The shell is zsh: unquoted words starting with `=` (e.g. `echo ====` as a separator) fail with `... not found` — quote them.

## No pret issue/PR references

**Never write pret issue or PR numbers in commit messages, PR titles/descriptions, issue text or comments** (`pret#123`, `pret/pokeheartgold#123`, `upstream#123`, pret PR/issue URLs). GitHub cross-links them and notifies the pret maintainers, which they don't want (issue #36). Describe the change by content instead ("battle_controller.c decompiled", the upstream commit hash is fine). In PR/issue text, if a reference is truly needed, wrap it in backticks (`` `pret#123` ``); inline code does not link. In **commit messages** use no number at all (not even backticked): GitHub can record a commit cross-reference from the raw message. A bare `#123` must only ever mean *this* repo's issue/PR, so don't use it for upstream numbers either (e.g. no "Merge upstream pret master (#516, #537)").

Enforced deterministically, not by this note alone (logic in `tools/decomp_harness/pret_refs.py check|fix|strip`):
- `.githooks/commit-msg` strips references from commit messages (needs `core.hooksPath` set).
- The PreToolUse hook `tools/decomp_harness/hooks/block_pret_refs.sh` runs on every Bash call and blocks `git commit/merge/tag` and writing `gh` commands (incl. compound commands, `git -C`, `env`) whose text, or whose `-F`/`--file`/`--body-file` file, contains one; it also guards GitHub MCP writes. Read-only `gh` / MCP calls are not blocked.
- The `pret-refs` CI workflow fails PRs whose title/body contain an unescaped reference or whose first-parent commit messages contain any. It does not look at comments.

When a hook blocks you, rewrite the text; in shell use single quotes or edit the `-F` file.

## Formatting

`./format.sh` runs `clang-format` over the tree. Requires **clang-format 18+** (the style file uses options newer versions only). A pre-commit hook lives in `.githooks/`; enable with `git config --local core.hooksPath .githooks/`.

clang-format does **not** understand MWCC inline asm. For NONMATCHING blocks, wrap the asm variant in `// clang-format off` / `// clang-format on` and gate with `#ifdef NONMATCHING` / `#else` so the C variant stays formatted while the asm variant is untouched.

## Architecture

This is a **matching decomp**, not a reimplementation. The guiding constraint on every change is: does the compiler still emit the same bytes? That shapes the source layout more than any logical concern.

**Two ROMs, one tree.** `heartgold.us/` and `soulsilver.us/` are not source — they hold per-version build metadata only: `main.sha1`, `rom.sha1`, `filesystem.sha1`, the banner spec, icon, and ROM-header template. Version-specific behavior in the shared `src/` tree is selected via the `-DHEARTGOLD` / `-DSOULSILVER` define (Meson option `game_version`), not via divergent files.

**Three object domains, linked into a DS ROM:**
- **ARM9 main + overlays** — the `main` executable (`main.nef`) in the top-level `meson.build`, from `src/` (C, MWCC) and `asm/` (assembler stubs for functions not yet decompiled or where C can't match), plus `Library` lines for the SDK libraries. Link order: `main.lsf`, turned into `main.lcf` by NitroSDK's `makelcf`. `include/` is the public header tree shared across ARM9 code. Overlays are the `overlay_XX_*` files under `asm/` and matching subdirs under `src/`.
- **ARM7** — NitroSDK's `ichneumon_sub`, built by the subproject. `sub/` is upstream's unused leftover.
- **NitroFS filesystem** — `files/` holds game data (graphics, message archives, NARCs, map scripts, battle data, etc.), built by `files/**/meson.build`; generated headers (`*.naix`, `msgdata/msg/*.h`) land in `build/<game>/files/` and are included as `"files/..."`. Outputs are checked against `filesystem.sha1`.

**Build scaffolding.** The top-level `meson.build` holds the flags (`-O4,p -ipa file ...`, `-nosyspath -stdinc`, `warning_level=0` = `-warnings off`), the include order (`include, asm/include, lib/include, files, src, asm`), the subproject dependencies, the ROM and the tests. `meson/` has the cross file (metroskrew, `-wrap:sdk 2.0/sp2p2`) and the native files. There is no forced include: a C file that needs `global.h` includes it itself, and it pulls in `<nitro.h>` and `<nnsys.h>` from the real NitroSDK 4.2 / NitroSystem headers. About 3,400 files under `src/` don't include it at all, mostly hgify pieces and all of nitrocrypto (they include `ghidra_compat.h`), so don't assume its types or macros are visible; asm files `.include "macros.inc"` and `"global.inc"` (`asm/global.inc`).

**In-tree tools (`tools/`).** Many targets depend on small custom utilities that are built from source on first invocation: `nitrogfx` (image → DS graphic formats), `nitroarc` / `o2narc` (NARC pack/unpack), `jsonproc` (templated JSON → data tables), `msgenc` (message archive encoder), `gen_fx_consts` (fixed-point constant tables), `fixrom`, `compstatic`, `elfcoder`, `mwasmarm_patcher`, etc. `asm_processor/` preprocesses MWCC source so inline-asm tricks survive. `py_scripts/` holds decomp workflow helpers. Each tool has its own `meson.build` and builds as part of the configure/build.

**NONMATCHING pattern.** When a function cannot be expressed in C such that MWCC emits identical bytes, it is committed as handwritten asm and the C version is kept under `#ifdef NONMATCHING` as documentation. Do not "clean up" such asm — it was written to match a specific compiler output and is load-bearing for the sha1 tests.

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
2. Search `include/` and `src/` for callers, headers, and similar patterns — and check prior knowledge: the file's entry in `tools/decomp_harness/knowledge.json` (sweep hypotheses/risks), `attempts_log.py query --file asm/<name>.s` (logged dead ends), and `twins.py file asm/<name>.s --show` (Platinum twin C + verified non-matching drafts — see below)
3. Create `src/<name>.c` (and `include/<name>.h` if needed)
4. Before switching `main.lsf`, build with asm to save a reference: `cp build/heartgold.us/main.nef.p/asm_<name>.s.o /tmp/<name>_asm.o`
5. Link the C: `python3 tools/decomp_harness/lsf_flip.py asm/<name>.s src/<name>.c` (swaps the `main.lsf` line, regenerates `src/meson.build` / `asm/meson.build`)
6. Do NOT modify `save_arrays.c` — adding `#include` of a new header causes IPA cascade. Leave the existing `DECL_CHUNK_EX` macros in place
7. Build: `chiri pkg -- build --target main --no-compare` (fast, ARM9 only). **Always use `timeout: 1200000`.**
8. Compare function-by-function: `python3 tools/decomp_harness/objdiff.py /tmp/<name>_asm.o build/heartgold.us/main.nef.p/src_<name>.c.o` (path: `/` → `_` in the source path)
9. Verify: `chiri pkg -- compare` (the four sha1 tests: `main.sha1` lists the linked `.sbin` files, `rom.sha1` the final ROM)
10. If mismatch: use `objdiff.py --bytes <func>` to see byte diffs, adjust C, repeat

Do **not** delete the original `.s` file. Function order in the C file must match the asm. Accumulated matching knowledge lives in `tools/decomp_harness/patterns.json` (source of truth, query with `patterns.py query --grep <word>`, add with `patterns.py add`); `insights.md` is **generated** from it — never edit insights.md directly.

**Overlay splitting is a rename, not a decomp — the one exception to "do not delete the original `.s`".** `tools/decomp_harness/split_overlay.py` mechanically partitions a monolithic `asm/overlay_XX.s` into N address-ordered chunk files (`overlay_XX_<ADDR>.s` + per-chunk `.inc`) and rewrites the overlay's `main.lsf` block to the N objects in address order. Because the linker concatenates like-sections across an overlay's objects, a reference-clean, section-aligned split reproduces the ROM byte-for-byte. Gate: `chiri pkg -- compare` AND `chiri pkg -- build --game soulsilver` must both pass (even when the overlay has no version conditionals). Only then delete `asm/overlay_XX.s` + `asm/include/overlay_XX.inc` — the chunks collectively ARE the original bytes — and re-verify both ROMs after deletion (the monolith is assembled by the `asm/*.s` wildcard but never linked; the post-deletion build proves it was inert). Finish with `python3 tools/decomp_harness/triage.py --rebuild --top 0` to migrate the ledger/queue onto the chunk paths. Split manifests live in `tools/decomp_harness/split_manifests/`.

**Decomp harness scripts (`tools/decomp_harness/`):** `next_target.sh [--info]` prints the next asm file from the triage queue (easiest first; falls back to `main.lsf` order) and warns if someone else has claimed it — for an asm file hgify split into slices + generated C it serves one unit at a time, tagged `[SPLIT unit of ...]` (`split_units.py`; workflow in `SPLIT_TARGETS.md`: claim the original file, rewrite a generated file's inline asm in place, `compile_one.sh --ref`); `claim.py check|open|close asm/<name>.s` manages the `Claim asm/<name>.s` GitHub issues contributors open before starting a file (advisory: warns, never blocks; the decomp commit says `Closes #N`); `triage.py [--rebuild]` ranks pending files by expected cost into `triage_report.json`; `coverage_ledger.py` regenerates the function-level ledger (`coverage_ledger.json` + `COVERAGE.md`, includes blocker gating counts from `blockers.json`); `attempts_log.py add|query|summary` records per-function attempts and dead ends in `attempts_log.jsonl` — query it before attempting a file, log every distinct dead end; `sweep/` + `/decomp-sweep` run parallel read-only pre-analysis agents whose merged output is `knowledge.json` (signature/struct hypotheses per file); `revert.sh asm/<name>.s` undoes a decomp attempt (restores `main.lsf`, removes new C/H files, restores tracked ones from HEAD); `run.sh` is the automated outer loop that drives Claude Code per-file. `twins.py file|func|stats|prune` serves the Platinum twins (`platinum_twins.tsv`: 10,601 HG→pret/pokeplatinum function pairs from issue #1; `found_by` calls/called/same = high confidence, between/order = link-order guess, often shifted) and the behaviour-verified **non-matching** C drafts in `nonmatching/` (PR #2; clang-compiled, checked against ROM behaviour on random inputs, does not match bytes; `.notes.md` beside each records struct layouts and header declarations that disagree with the asm). `--show` needs a pokeplatinum checkout at `../pokeplatinum` (or `$POKEPLATINUM`) at commit `c248fb3f` — the revision every twin was verified to extract at; it warns if the checkout is elsewhere. Start from the twin/draft C, rename to HG names/types, then match; after a match, `twins.py prune asm/<name>.s` removes the obsolete drafts. `merge_sweep.py` folds the twins of still-pending functions into `knowledge.json` (`symbols[*].platinum_twin`, top-level `platinum_twin_files`). `prune` only drops drafts of functions now defined as real C in `src/<name>.c`; NONMATCHING asm fallbacks keep theirs. `emu/` is the DeSmuME dynamic-analysis harness for *naming* (not matching): `emu/symbols.py` (overlay-aware symbol table from `main.elf`), `emu/scenarios.py` (savestate graph under `build/<game>/emu/states/`), `emu/trace.py` (hook functions, capture args/callers/returns, emit JSON evidence); agent loop and pitfalls in `tools/decomp_harness/EMU_HARNESS.md`. Known harness and build-reliability issues (Wine `.d` flakiness, pending rodata/prototype fixes) are tracked in `tools/decomp_harness/TODO.md`; systemic matching blockers in `blockers.json`.

**Model delegation.** Keep judgment (C-shape choice, byte-diff diagnosis, IPA reasoning) on the session model; delegate bulk work down: spawn subagents with `model: sonnet` for mechanical checks (`decomp-verifier` defaults to it), and use `tools/decomp_harness/delegate.sh` to draft C from asm on local Ollama (`qwen3-coder:30b`). Local-model output is an untrusted draft — always review against the patterns DB and verify with build + objdiff. Full contract in `tools/decomp_harness/DELEGATION.md`.

**`.inc` files mix imports and exports.** `.public` declarations include both symbols defined in the `.s` file (true exports) and symbols referenced from other files (imports like `Heap_Alloc`, `memcpy`). Cross-reference with `thumb_func_start`/`arm_func_start` to distinguish which are defined locally (→ non-static in C, add to header) vs imported (→ extern declarations in C).

**NONMATCHING inline asm syntax differs from standalone asm.** Use `ldr rN, =0xVALUE` (not `ldr rN, label` + `label: .word VALUE`). Use `ldr rN, =FuncName` for function pointer loads. `.balign` directives are unsupported — remove them. Wrap in `// clang-format off` / `// clang-format on`.

**Both objdiff AND `chiri pkg -- compare` must pass.** Never accept a decomp based solely on `objdiff.py --summary`. Always run `chiri pkg -- compare` for the full ROM SHA1 check. The `objdiff.py` tool verifies individual functions; the SHA1 check catches section-level differences (alignment, padding, rodata layout) that objdiff may miss.

**IPA header discipline.** MWCC `-ipa file` cascades codegen changes when ANY declaration in a visible header changes — even adding new function declarations for functions the TU never calls. When a decomp adds declarations to a shared header, use the **split header pattern**: keep the public header frozen at the callers' matching-time state; the defining `.c` file includes `<name>_internal.h` with correct types. Files matched against a different header state must NOT include the changed header — use local forward declarations with the types they were matched with. The `// Called as matched` blocks the Meson sync added (R10) are the same idea for SDK functions: `#define F(...) ((RET (*)(PARAMS))F)(__VA_ARGS__)` calls `F` through the prototype the file was matched with, not the SDK header's. These are function-like macros, so a declaration of `F(...)` that comes after the block in the same TU (an `#include` added below it, say) gets macro-expanded and breaks: put new includes above the block.
