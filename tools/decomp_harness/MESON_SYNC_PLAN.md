# Plan: sync mainline with pret master (the Meson migration)

Tracking issue: #22. Written 2026-10-14 against `mainline` 3022428f9 and `upstream/master` 9c5fe7344 (pret/pokeheartgold).

## 0. Summary

- **What:** merge pret master into `mainline`. That is 120 commits since our last sync point 9d8b7591f (2026-09-21), 15 merged PRs: #511 "Swap to Meson" plus 14 follow-ups in #518–#532 (#523 is still open). Afterwards the fork builds with Meson like upstream, both ROMs still match, and the decomp harness, CI and wrapper work on the new build.
- **There is no new decompiled code upstream.** It is all build plumbing, library relocation and mechanical source edits.
- **The textual merge is small:** 40 conflicts, each with a recipe (§4).
- **Most of the work is on our side:**
  1. converting `main.lsf` (16,966 objects) to Meson object names, and generating the Meson source lists;
  2. rewriting fork-only files (rules in §5): ~290 with the required rules R2–R4, ~350 with R6–R9 added, and ~1,400 if the cosmetic R1/R5 are applied too;
  3. **removing local SDK stand-ins from ~840 fork files** (mostly hgify pieces): types and prototypes the old pret headers lacked but the real SDK headers now define (R10);
  4. porting the harness, CI and wrapper (§6).
- **Estimate:** 3–4 working days. Integration PRs are frozen from the start until the PR lands.

## 1. Facts this plan rests on

All verified on 2026-10-14 against `upstream/master` and our tree, unless marked *estimate*.

### Upstream build

- **Entry points.** The top-level `Makefile` is now a thin driver:
  - it clones meson 1.12.0 into `subprojects/meson-1.12.0`;
  - it downloads metroskrew 0.1.3 into `tools/metroskrew`;
  - `make` = `all: release check`, and `check` = `meson test`, which runs 4 sha1 tests: Main, Sub, Filesystem and ROM;
  - build dirs are `build/heartgold.us` / `build/soulsilver.us`, one configured dir per game (`-Dgame_version=`).
- **Toolchain by OS.**
  - **Linux:** metroskrew runs MWCC natively.
  - **macOS:** `SKREW_SYS := wine`, the metroskrew-wine bundle. **Wine (and so Rosetta) is still needed on macOS**, but only for the MW compiler, assembler and linker.
  - **makelcf** is built natively from the NitroSDK subproject; **nitrorom** replaces makerom/makebanner/fixrom; **compstatic** is native. CI therefore needs no Wine at all.
  - **macOS prerequisites:** `native_macos.ini` hard-codes `gcc-14`, and makelcf needs bison and flex (NitroSDK `tools/makelcf/meson.build` calls `find_program('flex')` / `find_program('bison')`). Locally we lack `gcc@14`; ninja, libpng, pkg-config, xz, arm-none-eabi-gcc, wget and Wine are present.
- **Libraries come from pinned git wraps.**
  - NitroSDK, NitroSystem, NitroWiFi, NitroDWC and libvct come from `ntrtwl/*` decompiled repos. The MSL comes from metroskrew.
  - `lib/NitroSDK`, `lib/MSL_C`, `lib/include/{nitro,nnsys,MSL_C}` and most of `lib/asm` are gone.
  - ARM7 is NitroSDK's `ichneumon_sub`; `sub/` is unused.
  - dsprot is a committed prebuilt `lib/dsprot/libdsprot.a`.
- **`main.lsf` is still the link-order source of truth.**
  - It is fed to makelcf to produce `main.lcf`.
  - Objects are named by Meson: `main.nef.p/<path relative to repo root, '/' → '_'>.<ext>.o`, e.g. `main.nef.p/src_field_fieldmap.c.o`. Meson hashes a path only when it has more than 5 components *and* the dropped prefix is over 41 characters. Simulated over all 16,966 of our objects, nothing is hashed, the names are unique, and the longest is 94 characters.
  - Upstream keeps `src/meson.build` (398 files) and `asm/meson.build` (287 files) in sync with the LSF **by hand**: 686 `Object` lines = 398 + 287 + 1 lib object.
  - Lib code appears as `Library libX.a` lines.
- **Link.** Meson 1.12's `MetrowerksLinker.get_accepts_rsp()` returns True, and ninja switches to a response file above 16 KB. Upstream's own 686-object link already exceeds that, so the rsp path is exercised. Ours is ~950 KB of paths.
- **Flags.**
  - Core MWCC flags are unchanged: `-O4,p -ipa file -enum int -lang c99 -inline on,noauto -char signed -interworking -gccext,on`, and `-gccinc` (we had it already). `warning_level=0` becomes `-warnings off`. Asm gets `-16 -DPM_ASM`, and include dirs are passed as `-I` (ours used `-i`).
  - Upstream **drops** `-W all … -W error`, and adds `-nosyspath -stdinc -D_MSL_RESTRICT=`.
  - Include order changes to `include, asm/include, lib/include, files, src, asm` plus the subproject include dirs. Ours puts `src` first.
  - No forced includes; `global.h` itself changed.
  - The per-file override that built nitrocrypto with MWCC 1.2/sp2p3 is gone.

### Upstream's source edits (they apply to our files too)

- **Generated-header includes gain `files/`:** `"msgdata/msg.naix"` → `"files/msgdata/msg.naix"`, and the same for `msgdata/msg/msg_NNNN.h` and every `*.naix`.
- **NARC member constants are renamed per NARC:** `NARC_msg_msg_0002_bin` → `msg_0002`, `NARC_resdat_resdat_00000010_bin` → `resdat_00000010_bin`, … The prefix rule differs by NARC.
- **3,663 address-named symbols are gone.** Overlay 0/13/38 DWC library code got real names (`ov00_021EC9D4` → `DWC_…`), and 12 `ov12_*` symbols from dead asm went too.
- **Asm:**
  - `.include "asm/macros.inc"` → `.include "macros.inc"`;
  - `#include <nitro/fs/overlay.h>` is dropped from `asm/include/*.inc`;
  - `FS_OVERLAY_ID(OVY_n)` → `SDK_OVERLAY_OVY_n_ID`;
  - `global.inc` moves to `asm/global.inc`, and `charmap.txt` to `tools/msgenc/`.
- **SDK header paths:** `<nitro/fx.h>` → `<nitro/fx/fx.h>`, `<nitro/os/…h>` → `<nitro/os.h>` (NitroSDK 4.2 layout).

### Exposure in fork-only files

These are files that exist only in our tree: 16,566 in `src/`, `include/` and `asm/`.

| What | Files | Refs | Notes |
|---|---:|---:|---|
| Old generated-header includes | 158 | 262 | none in `src/hgify/` |
| Old NARC member constants | 8 | 9 | only the `NARC_msg_msg_*` uses are renamed upstream. `zukan_data`/`zukan_gra` (the other 74 refs) keep their names; the (NARC, index) join will show them as identity rows. |
| Symbols upstream renamed | ≈112 | ≈467 | ~102 hgify pieces, 9 asm, 1 src; mostly `ov00_*`. The verifier measured 113/471; the gap is tokenizer boundaries. |
| `.include "asm/macros.inc"` | 1,238 asm | | our chunks and slices |
| `<nitro/fs/overlay.h>` in `.inc` | 46 | | |
| `FS_OVERLAY_ID(` in asm | 18 | | |
| SDK header paths missing in NitroSDK 4.2 | 16–18 | | `<nitro/fx.h>` ×12, `<nitro/os/{interrupt,system,ownerInfo}.h>` |
| Bare `"spl.h"` / `"spl_emitter.h"` includes | 2 | | `include/library` is no longer an include dir |
| **Local SDK stand-ins the real SDK now defines** | **~840** | | ~563 type stand-ins, ~286 prototype or inline stand-ins (rename-scope agent). Spot check: 542 hgify pieces define `NNSGfdFrmTexVramState` or `GXPolygonAttrMisc`, which NitroSystem `gfd_FrameTexVramMan.h` and NitroSDK `gx/g3.h` now define. These become redefinition errors. Concentrated in overlay_07, overlay_74_thumb, overlay_10_trainer_ai and overlay_12_battle_controller. |

### `main.lsf` reconciliation (`lsf_recon`, sync point vs upstream vs ours)

- **Blocks:** names, `After` graph and addresses are identical across all 132 blocks (1 Static, 2 Autoload, 129 Overlay).
- **Objects:** every upstream `Object` missing from our LSF (278) is one our fork split or decompiled since the sync point. Nothing new appeared upstream.
- **Libraries:** upstream turned all lib `Object` lines into `Library` lines. Our lib lines are unchanged since the sync point, apart from the case fix `lib/MSL_c` → `lib/MSL_C`.
- **Game-side objects that moved into libraries:** only two.
  - `asm/middleware.s`: we never touched it.
  - **`asm/overlay_13_thumb_2.s` → `Library libdwcutil.a`:** our fork split it into 121 C pieces plus 29 asm slices (150 LSF objects). See decision D2.

### Our three library edits are moot

| Edit | Why it is moot |
|---|---|
| `player.h` `u8` → `int volume` | NitroSystem@d636fb5 already declares `int volume` |
| `libVCT.s` pointer symbols (189e3551b) | libvct is now decompiled C |
| `overlay_13_arm_2.s` symbols (189e3551b) | now `libdwcutil.a` |

### nitrocrypto (from #26, rounds 27–28)

- #26 turns 59 of nitrocrypto's 67 functions into C pieces (`src/hgify/nitrocrypto/`) plus asm slices (`asm/nitrocrypto_*.s`). They must be built with **MWCC 1.2/sp2p3, ARM, and no `-ipa`**: `common.mk` spells `-ipa file` as `$(IPAFLAGS)` so the `Makefile` can empty it for them.
- Upstream keeps `asm/nitrocrypto.s` as one plain asm game object (`main.nef.p/asm_nitrocrypto.s.o`, last in OVY_74), and its per-file 1.2 override is gone.
- **Resolved (2026-10-14):** metroskrew ships 1.2/sp2p3 (`-wrap:sdk 1.2/sp2p3` runs `mwccarm-2.0-82.exe`). A `static_library` can't drop the global `-ipa file`, which 1.2 rejects, so the top-level `meson.build` (a fork edit) has a `generator()` that calls metroskrew's `mwccarm` with the Make build's flags for these objects. Its objects are `main.nef.p/<file>.c.o`; `meson_names.MWCC12_RE` knows that naming and `lists` emits them as `pokeheartgold_c_mwcc12`. Three pieces checked with objdiff against upstream's assembled `asm/nitrocrypto.s`: identical.
- #26 also edits `Makefile` and `common.mk`. Both become merge conflicts: take upstream's, as in §4.

### Already broken against today's upstream

- `tools/update_readme_progress.py` reads upstream's `main.lsf` expecting `src/` prefixes. It now gets the `main.nef.p/…` form, so its upstream set is empty.
- `scripts/find_x86_failures.sh` checks out upstream's `main.lsf` into the Make build.

## 2. Decisions

Each comes with a recommendation.

| # | Decision | Recommendation |
|---|---|---|
| D1 | Who drives? Arvind offered (#22). | **We drive** the merge, build, CI, wrapper and harness, since they are ours. Arvind ports `integrate.py` (external; it bulk-writes `main.lsf`) to the new format and reviews the PR. Integration PRs are frozen from Phase 0 until the PR lands. |
| D2 | `overlay_13_thumb_2` pieces vs upstream's `libdwcutil.a` | **Drop our 150 pieces**, and take upstream's `Library libmb.a` / `Library libdwcutil.a`. It is NitroDWC SDK code. Upstream links `libdwcutil.a` as a **prebuilt binary** from `ntrtwl/NitroDWC` (`libraries/util/prebuilt/libdwcutil.a`); only `libmb.a` is built from C. The ledger loses those rows. |
| D3 | Format of `main.lsf` | **Adopt upstream's `main.nef.p/…` names in `main.lsf`**, and *generate* `src/meson.build` / `asm/meson.build` from it. The alternative was to keep our old-format LSF as the source and generate upstream's from it. Adopting means future upstream flips map 1:1, and the LSF parsing lives in one place (`asmscan.LSF_OBJ_RE`). |
| D4 | Warnings (`-W error` is dropped upstream) | **Follow upstream.** A warnings lint job can come later if wanted. |
| D5 | macOS toolchain | **Adopt upstream's metroskrew-wine.** Close #11 (CI no longer needs Wine). Re-scope #12 to "wibo instead of metroskrew-wine". |
| D6 | How it lands | **PR into `mainline`, merged with "Create a merge commit"**, never squash or rebase: upstream ancestry must survive. The ruleset allows merge commits; check that the PR's merge button is set to it. |
| D7 | `meson test` can pass on a stale ROM (§11.1) | **Carry a 4-line fix in the top-level `meson.build`:** `depends : rom_nds` on each sha1 `test()`. Then every entry point (bare `meson test`, the wrapper, CI, attestation) rebuilds the ROM before checking it. **Decided 2026-10-14: carry it permanently.** pret doesn't take AI-generated code, so it won't go upstream. This is the only edit we make to upstream's top-level file, so expect it in future sync conflicts (§9). |

## 3. Phases

### Phase 0: Prepare and freeze (≈30 min)

1. Reply on #22 with the D1–D6 answers and the freeze window. Ask Arvind to land or park any open integration round first.
2. `git pull --ff-only` and `git fetch upstream`.
3. Unload the nightly job for the window: `launchctl unload ~/Library/LaunchAgents/com.pokeheartgold.verify-matched.plist`, and reload it after landing. It runs `nightly_check.sh` → `verify_matched.sh` at 03:00, which would test a half-ported tree.
4. Until the pre-commit hook is ported (P0), commit on the branch with `--no-verify`. The hook's attestation check fails any commit touching `main.lsf`/`src`/`asm`/`include`, and its `ipa_check` gate keys on `build/heartgold.us`, which Meson also creates. The gates in §7 replace it in the meantime.
5. Record a baseline on `mainline` (Make build), so later steps can be compared against it:
   - Build HG and SS and confirm both match.
   - Save every object: `cp -R build/heartgold.us/{src,asm} <scratch>/baseline_hg/`, and the same for SS.
   - Save `build/<game>/main.elf.xMAP` for each game.
   - Save every generated `files/**/*.naix` **after each game's build**. They are generated in-tree and overwritten per game, and some NARCs (`zukan_enc`, `files/arc`) differ between HG and SS.
   - Run `tools/update_readme_progress.py` and `tools/decomp_harness/coverage_ledger.py`, and save their counts.
   - Run `dupglobals.py build/heartgold.us` (§11.5): it lists every global defined by two linked objects. Cross off the ones whose files the merge makes `static` (upstream did this for its own); the rest need a fix in Phase 3.
6. **Do all branch work (Phases 2–5) in a fresh worktree**, e.g. `git worktree add ../pokeheartgold-slop-sync -b sync/meson mainline` (314 MB). The main checkout keeps its Make build as the parity baseline.
   - This removes the generated-file hazard instead of relying on a cleanup step. The main checkout's `files/` holds 57 stale `.naix` and 829 `msgdata/msg/*.h` with the old `NARC_*` names, on Meson's include path, plus ~8,950 other generated files. Their 35 per-directory `.gitignore` files are deleted by the merge, because upstream has none, after which those files would be untracked, unignorable and one `git add -A` away from a commit. A fresh worktree has none of them.
   - If the work must happen in the main checkout after all, run `git clean -fdX files/` **before** the merge, and never `git add -A` on the branch.

### Phase 1: Spike, upstream on this Mac (≈2–3 h, mostly build time)

1. **Prerequisites:** `brew install gcc@14 bison flex`. Check that Rosetta is present (memory note: macOS 27 removed it once).
2. **Build upstream as-is.** `git worktree add <scratch>/phg-upstream upstream/master`, then `make GAME_VERSION=HEARTGOLD check` and `make GAME_VERSION=SOULSILVER check`, with `NINJA="ninja -j8"`. Upstream deliberately sets `-j4` on Darwin; fall back to it if Wine misbehaves at `-j8`.
   - Don't use `make soulsilver check`: the `soulsilver` target runs a whole sub-make, and the trailing `check` then builds and tests HG as well.
   - Record the wall time, that metroskrew-wine works on macOS 27, and that the subproject wraps download.
3. **Derive the rename maps** from the two builds, for **both games**. Both are throwaway data under `<scratch>/sync/`.
   - **NARC map:** old `.naix` (Phase 0 baseline, `NARC_<narc>_<member> = idx`) vs new `.naix` (`build/<game>/files/**`, `member = idx`), joined on (NARC, index) → `narc_map.tsv`.
     - Key on the NARC, not the `.naix` file name, because two names change: `headbutt.heartgold.us.naix` → `headbutt.heartgold.naix`, and `zukan_enc_gold.naix` → `zukan_enc.naix`.
     - Only `.naix` files matter for R2. The msg ID headers need only R1: the JSON conversion did rename 1,350 IDs in 9 banks (0237, 0286, 0288–0291, 0721, 0735, 0751; e.g. `msg_0237_bulbasaur` → `msg_0237_00001`), but no code references them today. Remember this for future decomps.
   - **Symbol map:** `build/<game>/main.elf.xMAP` (baseline) vs `build/<game>/main.nef.xMAP` (spike: mwldarm writes `<output>.xMAP`), joined on **(overlay, address)** parsed from the xMAP block headers. A (section, address) join would be unsound, because overlays share address ranges. Use it only as a **cross-check** of the primary map.
     - **Primary map:** the **sync point → upstream** renames from upstream's own diffs, 118 entries (seed `sym_map_full.py`).
     - **Do not use "baseline vs upstream, keep differing names".** Our baseline carries names the fork introduced since the sync point (`sBillboardLists`, `sFishingRodStateFuncs`, ~50 more), and R3 would rename them back to upstream's address labels. Bytes wouldn't change, so parity wouldn't catch it.
     - Filter the xMAP join to names that fork files reference, that no fork file defines, and that are absent from upstream's xMAP. Skip `$…`, `@…`, `.…` and C++ names, and resolve aliases: 36 addresses carry several names, mostly MSL `_d_add`/`_dadd` pairs.

**Exit:** both upstream ROMs pass their 4 tests locally, and both maps exist. If metroskrew-wine fails on macOS, continue on CI (Linux) and in a Linux container; that CI job must upload `main.nef.xMAP` and the generated `.naix` files as artifacts. Local builds then wait for #12.

### Phase 2: The merge (≈1–2 h)

1. In the fresh worktree from Phase 0 step 6 (branch `sync/meson`, created from `mainline`):
2. `git -c merge.renameLimit=20000 merge --no-ff --no-commit upstream/master`.
3. Resolve the 40 conflicts per §4.
4. Commit the merge with only the conflict resolutions. The message notes that the tree does not build until the conversion commits that follow; the PR is what lands, so the only cost is `git bisect skip` on those intermediate commits.

### Phase 3: Convert the fork's content (≈half a day)

Write `tools/decomp_harness/meson_port.py`. It must be idempotent, because Arvind and any open branch will rerun it. Subcommands:

- **`lsf`:** rewrite `main.lsf`.
  - For each block, emit three parts:
    1. upstream's lines before its run of game `Object`s;
    2. **our** game objects, minus lib objects, `asm/middleware.o` and the D2 pieces;
    3. upstream's remaining lines (`Library` lines, plus OVY_39's kept `lib_NitroDWC_asm_overlay_39_arm.s.o`).
  - Assert that upstream's game Objects are contiguous in every block. The stress test found this holds in 132 of 132.
  - Emit the ITCM/DTCM blocks verbatim; they contain only upstream `Library … (.itcm/.dtcm)` lines.
  - Why not map one upstream object to one run of ours: in 38 of 148 changed gaps, consecutive upstream objects became a single merged run of ours. For §9's future flips, attribute objects by split manifests or names, not by LSF position.
  - Convert names with Meson's own `canonicalize_filename`, copied verbatim.
  - **Asserts:**
    - block headers equal upstream's;
    - the object sequence equals ours minus the lib objects, `asm/middleware.o` and the D2 pieces;
    - no duplicates;
    - the mangled names are injective over real files.
- **`lists`:** generate `src/meson.build` (`pokeheartgold_c`) and `asm/meson.build` (`pokeheartgold_asm`) from `main.lsf`.
  - Skip `lib_*` objects; those are owned by `lib/*/meson.build`. Assert that each one is produced by some lib meson file; today there is exactly one, `lib_NitroDWC_asm_overlay_39_arm.s.o` from `nitrodwc_asm`.
  - Upstream's lists are exactly its non-lib LSF objects (398 + 287), so nothing else feeds `main`.
  - `--check` mode is for CI and pre-commit.
- **`rewrite`:** apply rules R1–R9 (§5) to every file still in the old form. It prints a per-rule count.
  - **Scope: only files whose content differs from `upstream/master`** (fork-only or fork-modified; `git diff --name-only --diff-filter=AM upstream/master HEAD`). Never edit a file that is byte-identical to upstream's. Upstream kept stale headers that still declare old names (`include/overlay_00_thumb.h`: `ov00_021EC11C`, …; `lib/include/string.h`: the real `strspn`), and rewriting them would create fork diffs and wrong renames (§11.2).
  - Before applying R3, `sym_map_guard.py 9d8b7591f upstream/master <merge tree> sym_map.tsv` must report 0 hard violations (§11.2).
  - Then run `./format.sh` (clang-format 19) on the touched files. R1 and R4 change include spellings, and `.clang-format` sorts and regroups includes, so `pr-lint` fails without the re-sort.
- **`refs`:** emit the **reference-object targets** that Meson would otherwise not build, since Meson compiles only listed files:
  - `asm_ref`: all unlinked `asm/*.s`, i.e. originals of split and matched files (320 today);
  - `c_unlinked`: the ~20 C files that are compiled but not linked (e.g. `src/unk_02054648.c`).
  - Both are `static_library(..., build_by_default: false, pic: false)`.
    - Without `pic: false`, Meson adds MWCC's `-pic` to static libraries; upstream passes `pic: false` on every library.
    - Build them from **the same kwargs as `main`**: c_args `-DPM_KEEP_ASSERTS -D<game>`; nasm_args `-DPM_ASM -DSDK_ASM -D<game>` plus `asm_args`; `public_includes` and `lib_asm_includes`; the same dependencies; and `naix_headers` in `sources`. Otherwise the references silently differ from the linked objects.
  - Declare them in the **generated** `asm/meson.build` and `src/meson.build`, not in upstream's top-level `meson.build`, which would be a permanent fork edit. Objects then land at e.g. `asm/libasm_ref.a.p/<name>.s.o`, because Meson names objects relative to the target's subdir and adds a `lib` prefix.
  - Tools resolve object paths through `meson introspect --targets` and build single objects with `ninja -C build/<game> <path>`. Never build the archive itself: `mwldarm -library` over 320 originals full of duplicate symbols would fail.
  - This way objdiff and compile_one keep their references.
  - **Canaries, so drift can't be silent:** also list one linked C file and one linked asm file in `c_unlinked` / `asm_ref`. `refs --check` builds both canaries and asserts they are byte-identical to their `main.nef.p/` twins, and that each ref target's `compile_commands.json` entries equal `main`'s apart from the `-o`/dependency-file paths. Any kwarg drift (a missing define, `-pic`, include order) then fails loudly (§11.3).

Then:

- Delete the D2 pieces and slices.
- Keep the original `.s` files, as the policy requires; `asm_ref` assembles them.
- Apply D7: `depends : rom_nds` on the four sha1 tests (set `rom_nds` in the existing `HEARTGOLD`/`SOULSILVER` branches).
- **R3 prototypes:** 25 fork C files (28 before D2 drops three) call a renamed DWC symbol with no declaration of their own. Today they get it from upstream's stale `overlay_00_thumb.h` / `overlay_00_arm.h`, which keep the old names. After R3 they would call `DWC_ClearError` and the others undeclared. Upstream's own `unk_02037C94.c` does exactly that and builds only because warnings are off. Give each file a file-local prototype under the new name with the stale header's signature, so the TU sees the same declaration it was matched with. `r3_decls.py upstream/master <merge tree>` lists them (§11.2).
- **Duplicate globals:** drop `.public _0223B330` from `asm/overlay_72_pdata.s`. Nothing outside that file references it; overlay 74's chunks use their own copy. Make one copy local for each remaining Phase 0 `dupglobals.py` hit (§11.5).

**Exit:**

- `meson_port.py lists --check` passes.
- No old-form tokens remain (grep each R-rule's pattern).
- `meson setup build/heartgold.us` succeeds. Record the configure time, and the regenerate time after touching `src/meson.build`.

### Phase 4: First green build and object parity (≈1 day, mostly build time)

1. **Fast pre-check.**
   1. Configure.
   2. Build only the generated headers: `naix_headers` is a Meson variable, not a ninja target. List the custom targets whose outputs end in `.naix` or `.h` with `meson introspect build/heartgold.us --targets` (a small python filter), and pass them to `ninja -C build/heartgold.us …`.
   3. Run the clang `-fsyntax-only` sweep from memory (`project_upstream_merge_491_499`; an ad-hoc command, not a script), with include dirs from `compile_commands.json`. Add metroskrew's MSL include path by hand: under `-stdinc` it is implicit and missing from `compile_commands.json`. The msg bank headers are side effects of the msgenc run, not declared outputs, so build `msg.naix` to get them.

   It finds missing headers, renames and the R10 SDK stand-in redefinitions before the slow Wine compile. Clear R10 here: delete each stand-in the SDK provides, and re-run until clean.
2. **Build HG.** `meson test -C build/heartgold.us`. With D7 applied it builds the ROM first. `make GAME_VERSION=HEARTGOLD check` works too.
   - Without D7, never run plain `ninja` followed by `meson test`: the ROM and the compressed `.sbin` files are `custom_target`s without `build_by_default`, so plain `ninja` skips them, and `meson test` rebuilds only test prerequisites, which upstream's sha1 tests don't declare. It would then check stale files and could pass (proven in §11.1). Upstream's own `check: rom` builds the ROM first for this reason.
   - *Estimate:* 17k compiles × ~2.9 s under Wine / 8 jobs ≈ 1.5–2 h. In parallel, push the branch so CI's native Linux build gives an answer in about 10–15 min per game.
3. **Object parity.** Compare every baseline object (Phase 0, the pre-merge Make build) with its Meson twin (old path → mangled path), using `parity.py --pairs pairs.tsv --sym-map sym_map.tsv --exclude-list no_twin.txt`. It is written and tested (§11.4). What it does:
   - Compare **only allocated (SHF_ALLOC) sections**, keyed by name plus position among same-named sections (MWCC objects carry ~2 `.text` each). Ignore `.debug*` (absolute Wine paths), `.comment`, `.dwarf*`, STT_FILE, and the `$a`/`$t`/`$d` mapping symbols.
   - Match local symbols by (section, offset, size, type), not by name: MWCC's anonymous locals (`@9258`, …) are numbered per preprocessed TU, and the new headers will renumber them in most TUs.
   - Compare relocations by (offset, type, target), where the target is the global name after `sym_map`, or section plus addend for locals. `narc_map` is irrelevant here, since NARC constants are immediates;
   - **exclude objects with no twin by design:** the lib objects (now `Library` lines) and the D2 `overlay_13_thumb_2` pieces, about 300 objects. Without the exclusion they show up as noise;
   - expect zero unexplained diffs. The explained ones are global → local binding changes from the duplicate-global fixes in Phase 3, and nothing else;
   - a diff here pins header or flag drift to a single TU long before the ROM sha1 would (memory: `feedback_reloc_aware_verify`).
   - Fix drift with local declarations or `#define` shims (the split-header pattern), never by editing shared headers.
4. **Repeat for SS.**

**Exit:** HG and SS each pass all 4 Meson tests locally and in CI, and the parity report is clean.

### Phase 5: Port the tooling (≈1 day)

Checklist in §6. P0 items must be done before landing; P1 before the next `/decomp` session.

### Phase 6: Land and unfreeze (≈1 h, plus CI)

1. Open the PR "Sync with pret master: Meson build (#511–#532)" and link #22.
2. CI must be green; the aggregator check is named `build` because the ruleset requires that name.
   - The ruleset also needs **1 approval**, and a later push dismisses it. Ask Arvind to approve last, or use the admin bypass.
   - Just before the final merge, merge `mainline` into the branch. The update-progress bot keeps committing README and ledger changes during the freeze, and a conflicted PR runs no `pull_request` workflows, so `build` never reports.
   - Don't let the PR head be a `[skip ci]` bot commit.
3. Merge with a **merge commit**: `gh pr merge <N> --merge`. Ruleset 24857433 allows merge, squash and rebase, so nothing enforces this. Either merge from the CLI, or temporarily set `allowed_merge_methods: ["merge"]` (admin) and revert it afterwards.
4. Check `git merge-base --is-ancestor upstream/master mainline`.
5. Unfreeze. Arvind reruns `meson_port.py` on any in-flight branch, plus his updated `integrate.py`.
6. Close #11, re-scope #12, and comment on #22.
7. Update memory: the upstream-merge playbook, the CI metroskrew note, and the build-workflow note.

## 4. Conflict recipes (40)

| Conflicts | Count | Recipe |
|---|---:|---|
| Make files upstream deleted that we edited: `common.mk`, `platform.mk`, 20 `files/**/*.mk`, `tools/msgenc/Makefile`, `lib/syscall/Makefile` | 24 | Accept the deletion. Our edits (PWD pin, Z:\ `.d` purge, `$(MWWINE)`, `SKREW=`, msg.mk mtime, tool `.d` touch) have no Meson counterpart. |
| `asm/overlay_14.s`, `overlay_41.s`, `overlay_49.s` and their `.inc`, plus `asm/include/overlay_18.inc`: we split them, upstream edited them | 7 | Keep our deletion. Upstream's edit was R5–R7 only (`macros.inc`, `<nitro/fs/overlay.h>`, `FS_OVERLAY_ID`), which `rewrite` applies to the chunks. |
| `asm/overlay_18_021F0918.s`, `asm/overlay_83_0223DD60.s` (content) | 2 | These are rename-detection artifacts: git paired one of our chunks with the deleted monolith. Take ours, then `rewrite`. |
| `.github/actions/calcrom/action.yml` (we deleted, upstream bumped) | 1 | Keep it deleted. Our progress comes from `update-progress.yml`. |
| `lib/asm/libVCT.s`, `lib/asm/include/libVCT.inc`, `lib/NitroDWC/asm/overlay_13_arm_2.s`, `lib/include/nnsys/snd/player.h` | 4 | Accept the deletion; all moot (§1). |
| `main.lsf` | 1 | Take upstream's version, then `meson_port.py lsf` rebuilds it from ours (Phase 3). |
| `INSTALL.md` | 1 | Take upstream's, then re-add the fork's notes (wrapper/chiri, macOS specifics). |

## 5. Rewrite rules (`meson_port.py rewrite`)

| Rule | Change | Scope |
|---|---|---|
| R1 | `#include "X"` → `#include "files/X"`, where X is `*.naix` or `msgdata/msg/*.h`. **Cosmetic:** `files` is on the include path, so the old spelling still resolves, and upstream still has a few. Apply it for consistency. | C, H |
| R2 | NARC member constants via `narc_map.tsv` (word boundary). The regex fallback reproduces upstream exactly: `NARC_msg_msg_(\w+?)_bin` → `msg_\1`; for NARCs built with nitroarc `--index` (no namespace) drop `NARC_<n>_` where `n ∈ {scr_seq, preview_graphic, resdat, legend, mmodel, sbox_gra, camera_viewfinder}` and the next token starts with `<n>_`; NARCs built with `--index-namespace` keep their names. `zukan_hw_data_1` becomes per-version (`…_gold_bin` / `…_silver_bin`). No fork-only file uses the per-version ones. | C, H, asm |
| R3 | Renamed symbols via `sym_map.tsv`, as whole-word identifier matches, in fork-differing files only, and only after `sym_map_guard.py` passes. On the trial merge tree, 74 of the seed's 121 entries (these 118 plus the 3 R9 API renames) are live: 501 refs in 125 files; the mislabel entries below have no fork refs left after the merge, so they are no-ops. Built from upstream's diffs this is 118 entries (108 `ov00_`/`ov13_` → `DWC_*`/`DWCi_*`, plus `_02108FC0/8` → `WCM_Bssid_Any`/`WCM_Essid_Any`, `_021D4670` → `CPSMyIp`, `_02110A0C` → `NNS_G3dFuncAnmMatNsBtaDefault`). It also includes old mislabels at unchanged addresses: `TP_CheckBusy` → `TP_CheckError`, `atol` → `atoi`, `strnicmp` → `strcasecmp`, `strspn` → `strcspn`; apply those only to references of that address. Fork-only exposure: ~116 hgify pieces (442 refs), 8 asm slices, `src/unk_020192D0.c`. After the merge deletes the dead `overlay_12_0226*` and `middleware` files, about 110 files / 424 refs remain, all `ov00_*`. | C, H, asm, `.inc` |
| R4 | `<nitro/fx.h>` → `<nitro/fx/fx.h>`; `<nitro/os/{cache,interrupt,system,ownerInfo}.h>` → `<nitro/os.h>`; `<nitro/hw/common/io_reg.h>` → `<nitro/hw/ARM9/ioreg_OS.h>`; `"spl*.h"` → `"library/spl*.h"`; drop `<MSL.h>` | C, H |
| R5 | `.include "asm/macros.inc"` → `.include "macros.inc"`. The reviewers disagree on whether the old form still resolves, since Meson's implicit include dirs add the project root. Apply it regardless: it matches upstream, it is harmless, and the first assemble settles the question. | asm |
| R6 | Drop `#include <nitro/fs/overlay.h>` | `asm/include/*.inc` |
| R7 | `FS_OVERLAY_ID(X)` → `SDK_OVERLAY_X_ID` for **any** overlay name, not just `OVY_n`. `asm/unk_020957B0_p12.s` uses `FS_OVERLAY_ID(field)`, which becomes `SDK_OVERLAY_field_ID`; `asm/global.inc` declares the named ones. | asm only (C keeps `FS_OVERLAY_ID`) |
| R8 | Drop root `global.inc` / `charmap.txt` in favour of upstream's moved copies | tree |
| R9 | SDK API renames that aren't address-based: `OS_IE_VBLANK`/`OS_IE_HBLANK` → `OS_IE_V_BLANK`/`OS_IE_H_BLANK`, `MATH_CRC16InitTable` → `MATH_CRC16CCITTInitTable`, field `mapingType` → `mappingType`. Fork-only hits: one (`src/hgify/unk_02015DD8/unk_02015DD8_p03.c`, `mapingType`). | C, H |
| R10 | **Remove local SDK stand-ins** (not regex-able). In each fork file, delete each local `typedef`/`struct`, prototype or `inline` that the SDK headers now provide: `NNSGfdFrm{Tex,Pltt}VramState`, `GXPolygonAttrMisc`, `inline void G2_ChangeBlendAlpha`, … Drive it by compiling: the clang pre-check (Phase 4.1) lists the redefinition errors. Then the object parity check (Phase 4.3) confirms codegen is unchanged, because an SDK inline body or parameter width may differ from the stand-in (cf. the `player.h` `u8`/`int` case); where it does differ, keep a renamed local. Seed: `shims.py` (§10). Estimate: half a day to a day. | C, H |

## 6. Tooling port checklist

Paths are in the inventory behind this plan; the central LSF parser is `asmscan.py:12`.

### P0: needed to land

- **`build_tools/bin/build_pokeheartgold`.**
  - Keep the CLI (`build/compare/test/tidy/clean/format`, `--game`, `--target`, `--no-compare`, `-j`, `--` passthrough) and drive `meson`/`ninja`.
  - Map `--target main` to `main.nef`, `filesystem` to the nitrofs targets, and `sub` to `ichneumon_sub`.
  - `compare` = `meson test -C build/<g>`, which rebuilds the ROM thanks to D7.
  - `chiri_config.json5` is unchanged.
- **`build_tools/bin/container_build.sh` and `Containerfile`.**
- **`.github/workflows/build.yml`.** Write it from scratch: upstream's own `build.yml` is still the old Make/Wine workflow, so there is nothing to copy.
  - Per-game matrix plus the `build` aggregator; keep that job id.
  - `make skrew`, with the metroskrew, `subprojects/` and meson clone cached.
  - No Wine install.
  - The `push` path filters gain `meson*`, `**/meson.build` and `subprojects/**`. Keep `pull_request:` without path filters, or the required check never reports on some PRs.
- **`update-progress.yml` filters.**
- **`tools/build_attestation.sh`.** Hash the Meson files. Run `meson test` (never with `--no-rebuild`) and parse its result.
- **`asmscan.LSF_OBJ_RE`.** Make it parse `main.nef.p/…`, with a reverse map from mangled name to path. That fixes `coverage_ledger`, `triage` and `split_units`.
  - Several tools parse `main.lsf` themselves and need their own fix (P1): `next_target.sh:48,69`, `twins.py:378-381` (`c_file_for`), `ipa_map.py:91`, `ipa_check.sh:46`, `verify_matched.sh:106`, `revert.sh:29-35`, `run.sh:148,207`, `split_overlay.py:486-494` (writes).
- **`tools/update_readme_progress.py`.** Port **both** sides: upstream's Meson-format LSF (already broken today) and ours under D3. `:53` and `:151-153` (`startswith("src/")`), `asm_function_count`, `nonmatching_by_object` and `generated_counts` all assume `src/…o` names.
- **Hooks.**
  - `.claude/settings.json` matchers gain `meson`/`ninja`.
  - `prebuild_guard.sh`: process names, and drop the `.d` logic.
  - `.githooks/pre-commit` triggers on `meson.build` and runs `lists --check`.
  - `hooks/block_generated.sh` guards the generated lists.
- **`lsf_flip.py asm/X.s src/X.c` helper** (flip the LSF line, then regenerate the lists), and use it in the `decomp*` skills, step 4–5.
- **`update-progress.yml`.** It runs on push to `mainline` **and on a daily schedule**, and it commits to `mainline`. So its two generators must be ported in this same PR, or the first post-merge run commits garbage numbers. See G8.
- **Containers.** The merge brings upstream's Meson `Dockerfile` next to our `Containerfile`. Either adopt upstream's and delete ours, or port ours and say in INSTALL.md which one is canonical.
- **Docs.** The `CLAUDE.md` build section and manual workflow; `INSTALL.md`; `CONTRIBUTING.md` (`make compare`); `README.md`'s make table; `.github/pull_request_template.md`.

### P1: before the next decomp session

- `compile_one.sh` (flags from `compile_commands.json`, refs from `asm_ref`)
- `revert.sh`, `recomp.sh`, `run.sh`
- `verify_matched.sh` (and recapture `matched_manifest.json`)
- `ipa_check.sh`, `ipa_map.py` (`ninja -t deps`)
- `objdiff.py` (`_autodetect_s`), `objdiff_regression.py`, `verify_rodata.py`, `nonmatch_fallback.py`
- permuter (`score_candidate.py`, `mwcc_compile.py`, `emit_job.sh`, `run_queue.sh`, `compile_wrapper.sh`, `gate_win.py`, `gen_nonmatching_registry.py`, and the ref paths in `tools/decomp_harness/nonmatching_registry.json`)
- the `decomp` skill's own build paths (`SKILL.md:74-81,157`: `build/heartgold.us/asm/X.o`, `…/compile_one/X.o`)
- docs that say "main.sha1 checks the ELF": it lists the `.sbin` files. Upstream's sha1 files now use names relative to the build dir and add `arm7.sha1`, so any `sha1sum -c` from the repo root breaks. `build_attestation.sh:144` still works.
- CLAUDE.md's pointer to `tools/asmdiff/asmdiff.sh`: that tool is stale upstream as well (`sub/build`, `make -q`). Drop the pointer or port the tool.
- `split_overlay.py`, `twins.py`
- `emu/symbols.py`, `emu/harness.py` (the ELF is `main.nef`)
- `nightly_check.sh`
- agents: `decomp-verifier` (scope rule now includes `meson.build`), `build-diff-analyzer`, `asm-analyzer`
- the `fix-blocker` skill (`main.lsf`, `make main`)
- `gen_rodata.py` (its `main.elf.xMAP` hint)
- `patterns.json` entries (regenerate `insights.md`), and the harness docs (`SPLIT_TARGETS`, `TODO`, `EMU_HARNESS`, `DECOMP_AGENT`, `ROADMAP`, `permuter/README`)
- Arvind's `integrate.py`

### P2: retire

- `hooks/clean_bad_deps.sh`, and the `.d` handling everywhere
- `scripts/setup-ubuntu.sh`, `scripts/bundle-tools.sh`
- `scripts/find_x86_failures.sh`: rewrite it or retire it
- the fork's leftover Make files. Some of these survive the merge because upstream kept the file: `files/data/resdat.mk`, `tools/{compstatic,csv2bin,gen_fx_consts,nitrogfx,o2narc}/Makefile` and `lib/dsprot/Makefile`. Reset each to upstream's version, so our now-pointless edits don't linger.
- **Not ours to port:** upstream's own stale leftovers (`Dockerfile` vs our `Containerfile`, `.devcontainer`, `tools/asmdiff`, `tools/py_scripts/get_scrcmd_args.py`, `scripts/rename_header.sh`, `CMakeLists.txt`, `rom.rsf`, `sub/`). Leave them to upstream.
- **User-level, outside the repo:** `.claude/settings.local.json` (gitignored) allows `make` and `wine` but not `meson` or `ninja`, so expect permission prompts until Anton adds them.

## 7. Gates before landing

| Gate | What must hold |
|---|---|
| G1 | HG: `meson test -C build/heartgold.us` passes all 4 tests locally and in CI, with D7 applied so the ROM is rebuilt first. |
| G2 | SS: the same for `build/soulsilver.us`. |
| G3 | The object parity report (`parity.py`, Phase 4.3) has 0 unexplained diffs. |
| G4 | `meson_port.py lists --check` passes, the LSF invariants hold, and no tokens remain from the **required** rules (R2–R4, R6–R10). R1/R5 leftovers are cosmetic: Meson puts the source and build roots plus `files` on the include path, and upstream itself still builds some old-form includes. `sym_map_guard.py` reports 0 hard violations; `git diff --stat upstream/master HEAD` shows no file the rewrite should have left alone (upstream-identical files stay identical). |
| G5 | A fresh clone builds from scratch (`git clone …`, then `make GAME_VERSION=HEARTGOLD check` and the same for SOULSILVER). This catches untracked or generated-file dependencies. Our `.gitignore` already ignores `tools/metroskrew/**`; upstream's `subprojects/.gitignore` covers the wraps. |
| G6 | Harness smoke test: `refs --check` (canaries byte-identical to their `main.nef.p` twins, flags equal); `compile_one.sh` + `objdiff.py` on one C file against `asm_ref`; `next_target.sh`; a `revert.sh` round trip on a scratch file; ledger counts equal the baseline minus the D2 rows; README numbers sane. |
| G7 | `upstream/master` is an ancestor of `mainline`. |
| G8 | In a clean checkout of the PR head (no build dir, as CI sees it), `tools/update_readme_progress.py` and `coverage_ledger.py` reproduce the Phase 0 counts, less the D2 rows. The `update-progress` bot runs them on `mainline` right after the merge and pushes with the deploy key, which bypasses the ruleset. The README script fetches pret's live `main.lsf`, so its output also depends on upstream at that moment. |

## 8. Risks

| Risk | Mitigation |
|---|---|
| Header or flag drift changes the codegen of fork-only TUs under `-ipa file`. Causes: SDK 4.2 headers vs pret's old `lib/include`, new include order, `-nosyspath -stdinc`, and the changed `global.h`. | Object parity (Phase 4.3) localizes it. Shim per TU. |
| Scale: 17k sources in one Meson target (configure and regenerate time, a ~950 KB rsp under metroskrew-wine, makelcf on a 17k-line LSF). | Measure in Phase 3/4. If the rsp breaks under Wine, debug skrewrap's `@file` path handling; CI on Linux is unaffected. |
| Every asm→C flip edits `meson.build`, which triggers a Meson regenerate. | Measure; acceptable if under ~30 s. |
| macOS toolchain: metroskrew-wine on macOS 27, `gcc@14`, bison/flex, Rosetta. | Phase 1 proves it before the merge. Fallback: CI or a Linux container. |
| Network-dependent setup (meson clone, ntrtwl wraps, wrapdb, metroskrew). | Revisions are pinned; cache them in CI. |
| Integration pipeline downtime. | Freeze window; `meson_port.py` is reusable for in-flight branches. |
| Intermediate commits on the branch don't build. | Land as one PR merge commit; bisect skips them. |
| Local SDK stand-ins (R10) are ~840 files of compile-driven edits. Some SDK inlines may generate different code than the stand-ins. | Clang pre-check first (fast), then object parity. Keep a renamed local wherever the SDK version changes bytes. |
| Duplicate globals across overlays. The old Make link tolerated them; upstream had to remove its own when it first linked under Meson: two asm labels in 47f43706c "Link arm9 binary", and `static` on duplicated C tables such as `sListMenuTemplate`, which the merge brings. Ours: `_0223B330` (`overlay_72_pdata.s` and `overlay_74_thumb_qdata.s`), plus whatever `dupglobals.py` finds on the Phase 0 baseline. | Fixed up front in Phase 3, not after a failed link (§11.5). |
| Renamed C `extern`s (R3) may clash with real DWC/SDK prototypes in files that include those headers, or lose their prototype where it came from an upstream stale header. | `r3_decls.py` lists the latter (25 files); clang pre-check finds the former; parity confirms both. |
| Ledger and README numbers shift (D2 removes 150 objects). | Say so in the PR. |

## 9. Merging upstream after this

- **`src/meson.build` / `asm/meson.build` conflict:** take ours, then run `meson_port.py lists`.
- **Top-level `meson.build` conflict:** keep our D7 `depends : rom_nds` lines on the sha1 tests.
- **`main.lsf` conflict:** upstream's asm→C flips are now line-for-line in the same format. For a file we split, translate the flip onto our pieces.
- **Recon:** `git merge-tree --write-tree --name-only mainline upstream/master` and `lsf_recon.py`; the lsf_recon check belongs in `upstream_sync.py`.

## 10. Verification log (2026-10-14)

Three independent read-only reviews checked this plan after the first draft.

- **Fact-check of §0, §1 and §4 against git, upstream and the ntrtwl wraps.**
  - All claims confirmed. The re-measured counts match (symbols: 113/471 vs 112/467, within tokenizer noise).
  - One claim was unverified: makelcf's bison/flex dependency. It has since been confirmed in NitroSDK `tools/makelcf/meson.build`.
- **Stress test of the mechanics (Phases 1–4, §5).**
  - It dry-ran the `lsf` skeleton conversion over all 132 blocks: every upstream `Object` maps to a contiguous run of ours, with 0 ambiguous cases, and the `Library` lines anchor cleanly.
  - Corrections applied:
    - declare the reference-object targets at the repo root;
    - join the symbol map on (overlay, address);
    - build the NARC map per game from `.naix` only;
    - give a concrete command for building the generated headers;
    - exclude no-twin objects from the parity check;
    - use `make GAME_VERSION=SOULSILVER check`, not `make soulsilver check`;
    - assert that the `lib_*` LSF objects are owned by lib meson files.
- **Checklist audit (§6, landing).**
  - Applied:
    - the `fix-blocker` skill, `asm-analyzer` agent, `CONTRIBUTING.md`, `ROADMAP.md` and `gen_rodata.py`;
    - upstream's `Dockerfile` vs our `Containerfile`;
    - the ruleset not restricting merge methods;
    - `update-progress` running on `mainline` after the merge (new gate G8).
  - Rejected after checking: the audit named five scripts that don't exist (`build_ref.sh`, `clang_precheck.sh`, `check_overlay_split.py`, `symbolize_lib_ptrs.py`, `permuter/run_permuter.sh`), and it wrongly called `permuter/emit_job.sh` missing.

**Late addition (the rename-scope agent's full report).**

- It tested the rules by applying them to each upstream-changed file's base version and comparing with upstream: the C rules reproduce 110 of 166 files, and the asm rules 576 of 592. The remaining files are hand edits: SDK copies deleted, data moved into `struct_defs/*_narc_struct*.h`, `static` added to duplicated tables, and include re-sorts.
- Added from it: rules R9 and R10, the regex fallback for R2, the extra R3 and R4 entries, and two new risks. I spot-checked the stand-in claim myself (542 hgify pieces, two types, both defined in the real SDK) and the `include/library` claim (2 files).
- **Seed scripts** for `meson_port.py` live in `tools/decomp_harness/meson_sync/` (index in its `README.md`): `lsf_recon.py`, the stress test's `lsfconv.py`, `rules.py`, `verify.py`, `sym_map_full.py` (118-entry map plus 3 R9 renames), `shims.py` and `exposure3.py`.

**Late addition (the checklist audit's full report).**

- Its first summary invented five scripts (rejected above). Its full hand-back was accurate, and I spot-checked each item applied:
  - `next_target.sh` and `twins.py` parse `main.lsf` directly;
  - the pre-commit hook blocks the plan's own commits;
  - the nightly launchd job exists;
  - the ruleset requires 1 approval and dismisses it on push;
  - `build.yml` has no `pull_request` path filter;
  - 57 stale `.naix` and 829 msg headers sit in `files/`;
  - upstream tracks `lib/dsprot/libdsprot.a` despite `*.a` in `.gitignore`. Tracked files are unaffected by that.
- Applied from it:
  - Phase 0 steps 3–4 (launchd unload, `--no-verify` until the hook is ported) and the `files/` clean;
  - the format re-sort after `rewrite`;
  - the Phase 6 approval and pre-merge sync notes;
  - a corrected P0 parser scope (`LSF_OBJ_RE` doesn't cover `next_target` or `twins`) and the `update_readme_progress.py` scope;
  - more P1 items (the permuter scripts, the decomp skill's paths, sha1-format docs, asmdiff);
  - P2 entries for fork-edited Makefiles that upstream keeps, and for upstream-owned stale files;
  - G8 run in a clean checkout.

**Late addition (the fact-check's full report).**

- Every headline number reproduced: 120 commits, 40 conflicts, the 278-object reconciliation, 3,663 symbols, and the exposure rows.
- Corrections applied, the first two spot-checked:
  - R7 must accept any overlay name (`FS_OVERLAY_ID(field)`);
  - `libdwcutil.a` is a prebuilt binary in NitroDWC, not built from source (D2);
  - only `NARC_msg_msg_*` among our NARC refs is renamed upstream (8 files / 9 refs);
  - R1 is cosmetic and R5 disputed, so G4 now checks only the required rules;
  - the corrected Meson hashing rule (no object of ours is hashed);
  - the flag nuances (`-warnings off`, `-I` vs `-i`, asm `-16 -DPM_ASM`);
  - the `lsf` assert must also exclude `asm/middleware.o` and the D2 pieces;
  - 132 LSF blocks, not 130;
  - "#518–#532" contains 14 merged PRs (#523 is open);
  - after the merge, R3 exposure is ~110 files, all `ov00_*`.

**Late addition (the mechanics stress test's full report).** No blockers. Applied:

- **Major:**
  - always build the ROM target before `meson test --no-rebuild`. Plain `ninja` skips the ROM, and `meson test` doesn't rebuild, so it can pass on stale files (Phase 4.2, wrapper, attestation, G1/G2);
  - `pic: false` and the same kwargs as `main` for the reference targets;
  - a concrete parity normalization spec;
  - `sym_map` from sync point → upstream, so our own names aren't reverted.
- **Minor:**
  - the three-part LSF algorithm with a contiguity assert;
  - reference targets in the generated `meson.build` files instead of the top-level one;
  - `narc_map` keyed on the NARC;
  - the msg ID renames noted;
  - the MSL include path and `msg.naix` for the clang pre-check;
  - CI artifacts if Phase 1 moves to CI;
  - the `git clean` ordering (before the merge deletes 35 `.gitignore` files);
  - `-j4` as a fallback.
- Spot-checked: upstream's `meson.build` has no `build_by_default`, our tree has 35 `files/**/.gitignore` vs 0 upstream, and `sBillboardLists` is fork-introduced.

## 11. Hardening: from "remember to" to "fails loudly" (2026-10-14)

The review findings above were first written in as instructions. Each now has a guard or a structural fix instead, and each guard was tested before the merge exists. The scripts are in `tools/decomp_harness/meson_sync/`: `meson_test_staleness.sh`, `sym_map_guard.py`, `r3_decls.py`, `parity.py`, `parity_selftest.py`, `dupglobals.py`.

1. **`meson test` passing on a stale ROM: proven, fixed by D7.**
   - `meson_test_staleness.sh` builds a toy project with meson 1.12.0 (the version upstream pins). It mirrors upstream's shape: a `custom_target` without `build_by_default`, and a `test(sha1sum, args: ['-c', files(...)])`.
   - Result: after building the "ROM" and then changing its input, a plain `meson test` reports `Ok: 1`, a pass on stale output.
   - The cause is in meson's `mtest.rebuild_deps`: a full test run builds only `meson-test-prereq`, which holds just the tests' own target arguments and `depends`. Upstream's sha1 tests have neither, so `meson test` builds nothing at all.
   - Same sequence with `depends : ct` on the test: `Ok: 0, Fail: 1`, correctly. A fresh build dir with `depends` builds the ROM itself and passes.
   - Fix: D7, `depends : rom_nds` on all four tests. The ROM depends on `main`, `main_lz`, `ichneumon_sub` and `nitrofs_files`, so one dependency covers every checksum.
2. **R3 reverting fork names, and renames leaking into the wrong files: guarded.**
   - `sym_map_guard.py SYNC UPSTREAM OURS [map]` fails (exit 1) on any entry whose old name is absent at the sync point (a fork-introduced name), whose new name is absent upstream, or which renames a real name to an address label.
   - Negative test: the bad `sBillboardLists → _0210F6B4` entry is rejected on all three counts. The 121-entry seed passes with 0 hard violations against the trial merge tree (`git merge-tree --write-tree`).
   - It counts references only in files that differ from upstream. That found the scope rule now in Phase 3: upstream's stale headers (`include/overlay_00_thumb.h`, `overlay_00_arm.h`, `overlay_13_arm_2.h`, `lib/include/string.h`) still use old names and must stay byte-identical. It also showed that `atol`/`strspn`/`strnicmp` have no fork references after the merge.
   - `r3_decls.py` found what neither reviewer did: 28 fork C files (25 after D2) call renamed DWC functions whose only declaration is in a stale upstream header. Each gets a file-local prototype (Phase 3).
3. **Reference objects silently differing from linked ones: canaries (Phase 3 `refs`, G6).** One linked C and one linked asm file are built through the ref targets too, and must be byte-identical to their `main.nef.p` twins. This can only run once the merged tree configures.
4. **Parity normalization: implemented and tested.**
   - `parity.py` is a stdlib-only ELF reader. All 16,505 objects of today's HG build parse in 5 s, with no errors and only RELA relocations.
   - HG vs SS over the 1,022 pairs both builds have: 995 byte-identical; 26 DIFF, all version-specific code (pokedex, credits, the AGB data); 1 equal after normalization (`map_header.o`, one byte in `.debug_line`).
   - `parity_selftest.py` mutation tests, 7/7 on two objects:
     - counted as equal: a renumbered anonymous local, a changed debug byte, and a global renamed with its `sym_map` entry;
     - counted as a diff: a flipped `.text` byte, a moved relocation, a moved local, and a global renamed without a map entry.
   - It found one gap in the spec, now fixed: MWCC objects carry several sections of the same name (30,405 `.text` in 16,505 objects), so sections are keyed by name and ordinal.
5. **Duplicate globals: confirmed real, fixed up front.**
   - At the sync point there were two cross-overlay duplicate asm globals, `_0223DD40` and `_0223F900`. The old link accepted them, and upstream removed exactly those two in the commit that first linked ARM9 under Meson. It also made `sListMenuTemplate` (two overlays) `static`. That makes it a property of the new link, not a style choice.
   - `dupglobals.py` checks the linked objects, C included, where the old seed only scanned asm. On the stale Oct 11 build it already found `sListMenuTemplate` and `_0223F900` (the merge resolves both), so the full list needs the Phase 0 rebuild.
6. **Generated files in `files/` after the merge: designed out.** Branch work happens in a fresh worktree (Phase 0 step 6), which has no generated files to orphan. Measured: 314 MB tracked, Meson writes only to `build/`, which upstream's `.gitignore` covers.

Still open by nature, so they stay as Phase 1/4 measurements: metroskrew-wine on macOS 27, the ~950 KB response file under Wine, regenerate time per asm→C flip, and the R10 stand-in removals, which are compile-driven.
