# Decomp Finishing Roadmap — Tooling, Harness, and Pre-Analysis Plan

*Handoff document. Written 2026-07-01 from a 14-agent analysis (inventory, failure-mode
mining of attempts_log, harness audit, verified external-tool research, blocker deep-dives,
giant-overlay splitting). Any session can execute from this file without re-deriving context.
Mark items done with `[x]` and a one-line result + commit hash.*

## State snapshot (2026-07-01)

- Ledger: 19,930 tracked functions; **1,662 matched**, 17,214 pending in 135 pending files,
  1,054 in 57 blocked/WIP files. 306 asm/*.s on disk (~1.13M lines).
- Top 20 files hold **50.0%** of pending functions (9,135) — all overlays, all Thumb.
  Head: overlay_96 (Pokéathlon, 1,435 fns / 109k lines), overlay_07+08 (battle display pair),
  overlay_14 (PC Box), overlay_49/45 (Wi-Fi Plaza), overlay_18 (Pokédex).
- Failure classes (attempts_log, 135 non-matched records): **regalloc ties 82**,
  scheduler ties ~14, spill-choice ~13, CSE/hoist ~11, rodata/section 10 (mostly defeated),
  small absolute classes (copyprop-cmp, SROA, signedness). 73 NONMATCHING blocks in 27 C files.
- Soft-float: 2,542 call sites across 109 workload files (overlay_96 alone: 850).
- Sweep coverage of the pending queue: 2 of 135 files.
- Observed pace ≈ 45–50 matched fns/day single-session ⇒ 12+ months serial. Tooling below
  attacks per-iteration latency, search automation, and parallelism.

## Corrections to stale registry state (verified 2026-07-01 — act on these first)

1. **`ipa-shared-headers` "gates 97 files" is mostly false positives.** `compute_gating()`
   flags any pending file *importing* a symbol exported by a blocked file; the blocked files
   export the ubiquitous sound API (106 pending .inc import PlayBGM/PlaySE family) and
   palette-fade API (84 import BeginNormalPaletteFade family). patterns.json
   `ipa-blocked-files-can-call-sound-fns-without-cascade` and `false-ipa-gate-shared-imports`
   already document this. True gate ≈ the defining files only.
2. **`unk_0200FA24.s` is misfiled** under ipa-shared-headers; its own attempts_log lesson is
   `ipa-cse-literal-pool` (MWCC caches literal-pool addresses across calls — codegen shape,
   not headers). Its popular exports inflate the ipa gate count.
3. **`ext-data-section-split` has a proven counter-recipe that was never back-applied.**
   Commit `14a499941` matched src/unk_data_020FD978.c (17 exported const arrays) via the
   size-bucket permutation inversion, recorded in patterns.json
   `exported-const-fnptr-array-section-reorder` (8-byte Q=[2,3,0,4,5,1,9,8,7,6];
   0xc-byte Q=[0,1,3,4,2,5,6]). Never tried on battle_arcade_game_board_data.
4. **`param-copyprop-cmp` fix plan was never executed.** main.lsf:34 still reads
   `Object asm/unk_0200B150.o`; src/unk_0200B150.c does not exist; ~10 matched functions were
   reverted and lost. Real blast radius: entry-idiom scan finds **20 sites in 9 files**
   (overlay_102, overlay_112, overlay_48, overlay_96, unk_02004A44, unk_0200B150,
   unk_020517A4, unk_02058034, unk_02077678), not the ledger's 37.
5. **triage.py is NOT broken** — triage_report.json keys are {generated, weights, queue};
   135 populated queue entries. Do not rebuild it.
6. **Ledger semantics:** the 382 "upstream" entries are asm/ game files already decompiled by
   pret with their .s deleted — *not* lib/ SDK code. lib/ (99 .s) and sub/ (13 .s) are
   out-of-scope terminal asm unless explicitly decided otherwise. 17 on-disk .s files are
   invisible to coverage_ledger.json (post-split/WIP drift) — regen after Tier 0.

---

## Tier 0 — Registry hygiene + free wins (~3–4 days total; no new tooling required)

### T0.1 blockers.json / gating cleanup  `[x]`  (done 2026-07-01)
*Result: unk_0200FA24 split into `ipa-cse-literal-pool`; per-blocker `gate_mode` +
`gate_weight` in blockers.json, resolved by `asmscan.blocker_gates`; copyprop entry-idiom
scan added to asmscan (20 sites / 9 files confirmed, surfaced as `copyprop_funcs` in triage
rows, zero score penalty); data-label capture fixes import/export split for data-only files
(ext-data-section-split now gates 3 real pending files incl. unk_data_020FDB44); ipa gate
count dropped 97 → 0 predictive (defining file only). Queue head score 1708 → 1361.*
- Split `unk_0200FA24.s` into new blocker id `ipa-cse-literal-pool`.
- Add a `gate_kind` field: `defines-frozen-header-symbols` (real) vs
  `imports-blocked-file-symbols` (weak; near-zero triage weight).
- Refine `coverage_ledger.py compute_gating()` accordingly; add two shape scans to
  `triage.py`: (a) copyprop entry idiom (`push` … `adds r4-r7, r0, #0` … `cmp <same reg>, #imm`
  within ~3 insns of entry) → pre-flag function as NONMATCHING-candidate; (b) data-only files
  with multiple external const arrays → route to the rodata recipe (T0.3).
- Regenerate ledger + triage. Success: gate counts drop to defining-file level; queue order
  changes; `false-ipa-gate-shared-imports`-style deprioritizations disappear.

### T0.2 Re-land unk_0200B150  `[x]`  (0.5–1 day)
11 functions, 313 lines. 10 in C; `OamManager_Create` as NONMATCHING inline asm
(mechanics fully documented in pattern `nonmatching-inline-asm-mwasmarm-gotchas`; verified
end-to-end precedent: unk_02014A08). Serves as the pilot case for T1.5 nonmatch_fallback.

**Result (2026-07-02):** 11/11 objdiff match on first build; full ROM SHA1 OK. Frozen
`unk_0200B150.h` included as-is; NNS OAM API + `sub_02025C54`/`C98` declared as local
externs; the 5 non-`.public` functions are `static` (callback typedefs from
`g2d_RendererCore.h` matched exactly). `param-copyprop-cmp` now has `files_blocked: []` —
it is a routine per-function fallback, not a file blocker.

### T0.3 battle_arcade_game_board_data — run the three experiments  `[x]`  (≤1 day total)

**Result (2026-07-02): SOLVED — landed as C (`battle_arcade_game_board_data.c` + `data2.c`),
full ROM SHA1 OK.** All three planned experiments ran and each disproved the blocker's
premise: the "mwldarm size-bucket reorder" was actually **MWCC's own size-ascending
emission of file-scope external consts, in every mode** (per-symbol sections with `-ipa`,
merged without, pragma or not). Winning recipe (pattern
`ext-const-split-tu-size-ascending-recipe`): `#pragma section PARENT begin/end` merges each
TU's consts into ONE packed .rodata (odd-address packing preserved); **split the TU wherever
the retail layout breaks size-ascending order** (second `Object` line in main.lsf); fix
equal-size ties empirically via `nm` placed addresses (BgTemplate triple `[A,B,C]`→emits
`[C,A,B]`). Bonus discovery (pattern `asm-bss-space-may-be-ovt-alignment-fiction`): the
asm's `_0223FA20: .space 0x20` bss is split-time fiction — mwldarm dead-strips it even from
the asm .o, and the OVT `bss_size=0x20` is the consumer's 2-byte bss 32-aligned. Defining it
in C flips exactly ONE ROM byte (the OVT entry). `FORCE_ACTIVE { sym }` injected into the
generated lcf works if an unreferenced section is ever genuinely needed; `#pragma
force_active` does not survive to the linker. Application to the remaining gated files
(unk_data_020FDB44.s first) is follow-on work, tracked in blockers.json fix_plan.
1. Recover the old draft (`git show b530ce56f`), build, `objdump -h` the .o (check per-symbol
   section alignment — file needs odd-address packing: ov84_0223F904 is 7 bytes,
   ov84_0223F90B starts odd), `objdump -t` for placed order, apply the inverse Q-permutation
   (recipe above), rebuild, `chiri pkg -- compare`.
2. If alignment padding kills (1): wrap const defs in `#pragma section ... begin/end` —
   pattern `version-custom-section-data-unmatchable` incidentally observed const data inside
   such a block lands in merged .rodata, packed and in order.
3. If needed: factor `-ipa file` out of MWCFLAGS (common.mk:125) into `$(IPAFLAGS)` with a
   per-target override (precedent: Makefile:18 `EXCCFLAGS`) and compile this data-only TU
   without `-ipa`.
- On success: record winning recipe in blockers.json fix_plan + patterns.json; then apply to
  the ~5 other data-only pending files, **starting with unk_data_020FDB44.s** (96 .public,
  direct sibling of solved unk_data_020FD978 — same movement-command-table family). Others:
  overlay_01_sprite_data.s (47), overlay_44.s (30), overlay_12_battle_command.s (22),
  unk_02055BF0_data.s (16). unk_data_020FCBD8.s (1 array) is probably immune.
- Verification for data files is `chiri pkg -- compare` ONLY (objdiff --summary cannot see
  cross-section reordering).

### T0.4 Decompile unk_02005D10.s with split-header discipline  `[x]`  (1–2 days)
50 functions / 1,933 lines, mostly small sound wrappers. The 2026-06-10 blocked attempt
edited sound.h directly — that predates the now-standard split-header pattern (13+
*_internal.h precedents in-tree). Plan: defining .c uses **local prototypes with
codegen-correct types only**; sound.h stays frozen for its ~108 matched consumers.
Gate check: objdiff the first 5 functions vs the saved asm .o before committing to the rest.
Retires the biggest registered blocker.

**Result (2026-07-02): DONE — 50/50 in pure C (zero NONMATCHING), full ROM SHA1 OK, all
four frozen sound headers untouched.** Pipeline: asm-analyzer pre-report → decomp-drafter
first pass (40/50 on first build) → 5 fix rounds (all 5 gate functions matched
immediately). The `ipa-shared-headers` blocker is retired (`files_blocked: []`) — the
split-header/local-prototype discipline dissolves it completely. Notable levers: literal
`-1` args derived from a stored `1` (drafter misread), reverse-decl stack-slot ordering ×2,
`(u32)` casts for `bhi` range checks ×2, stack-param reload + separate local for
`sub_02006C14`, unrolled byte-zeroing + task temp, and new pattern
`const-arg-reuses-compare-register` (PlayCryEx chatot body passes `PlayCry(0x1B9, form)`).

**Known, deliberate header debt (do not "fix" casually):** the four frozen headers still
declare `void`/narrow signatures for 8+ of this file's exports (e.g. `void PlayBGM(u16)` vs
the true `BOOL`). Reconciling them is the exact edit that cascaded on 2026-06-10. With the
T0.5 no-ipa diagnostic, a controlled reconciliation experiment (edit headers → full clean
`compare`) is now cheap to attempt in a future session — file under T1.6/T2.4 hygiene. Until
then the defining `.c`'s local prototypes are the source of truth for these signatures.

### T0.5 30-minute disproof experiment  `[x]`
Recompile one already-matched code TU without `-ipa file`, `cmp` the .o. Expected: mismatch —
documents that the flag is load-bearing for code TUs (closes strategy (d) forever).

**Result (2026-07-02): strategy (d) closed, but NOT for the expected reason** (full detail in
pattern `ipa-file-flag-effects-and-removal-nonviability`):
1. Sampled codegen is byte-**identical** without `-ipa file` — `unk_0200B150` 11/11 and
   `unk_0202FBCC` 39/39 objdiff MATCH. The flag is not unconditionally load-bearing for
   codegen; cascade-prone behavior is narrower than assumed (IPA-only optimizations such as
   the `unk_0200FA24` literal-pool CSE). **New diagnostic**: before blaming IPA for a
   mismatch, recompile the TU without `-ipa` and objdiff.
2. Tree-wide removal is still non-viable because **rodata emission differs without `-ipa`**
   (T0.3 experiments: different .rodata section structure for external consts), so link
   layout shifts even where `.text` matches — e.g. `unk_data_020FD978.c` was matched
   against the `-ipa` emission shape. Split-header discipline stays in force as cheap
   insurance.
3. **Incidental find (fixed en route):** the tree did not build from clean —
   `frontier_cmd_arcade.c:375` had `illegal implicit conversion from 'int' to 'HeapID'`
   in BOTH ipa modes, introduced by c3c4576ee's typed header decls (2026-06-21) and masked
   ever since by a stale cached `.o` (the `.d`-deletion build recoveries erase header
   dependency tracking). Fixed with the proper enumerators (`HEAP_ID_FIELD2`,
   `NARC_a_2_0_2`). Validates T1.6 `verify_matched.sh` (periodic full clean rebuilds).

---

## Tier 1 — Iteration-speed multipliers (~1 week; do in this order — later items stack on earlier)

> **TIER 1 COMPLETE (2026-07-02).** All six items landed: T1.1+T1.2 in 55da79a95,
> T1.3+T1.5+T1.6 in 4256b94aa, T1.4 in this commit. The inner loop is now
> compile_one.sh + objdiff (~1.4 s vs 45–120 s), NONMATCHING fallback is one command,
> matched TUs are drift-guarded (verify_matched.sh 483/483), and 71 NONMATCHING blocks
> are queued-ready for the permuter. T1.6 hook wiring applied (pre-commit quick smoke,
> capture-on-attest, nightly launchd check). Open follow-up: overnight permuter queue on
> the regalloc-tiebreak class.

### T1.1 compile_one.sh — single-TU fast path  `[x]`  (2–4 h) **← everything else depends on this**

**Result (2026-07-02, delegated to Opus, verified by orchestrator):** shipped
`tools/decomp_harness/compile_one.sh <src/name.c> [--game soulsilver] [--no-objdiff]`.
Exact make flag set (common.mk:125 MWCFLAGS with WORK_DIR=".") minus DEPFLAGS; output
isolated at `build/<game>.us/compile_one/<subpath>.o`; auto-objdiffs vs the asm reference
when present. Flag-parity proof: **all 483 matched TUs recompiled standalone and byte-compared
against the make-built objects — 483/483 identical** (DEPFLAGS omission included). ~1.4 s
warm per compile vs 45–120 s full link (~30–85×). Subtlety worth keeping: the script uses
`pwd -L` (logical CWD) because MWCC/Wine embed the shell's `$PWD` as the DWARF build dir —
the green baseline was built through the `/Users/anton/github` symlink, so resolving symlinks
(`pwd -P`) makes every object differ in `.debug_line`/`.debug_info` only (never in
.text/.rodata; DWARF is stripped from the ROM). /decomp SKILL.md updated: compile_one+objdiff
is the inner loop; `--target main` + full `compare` reserved for finalization; final gate
unchanged (objdiff AND full-ROM SHA1). No src TU has per-file flag overrides (the MWCCVER /
EXCCFLAGS special cases are lib/ and nitrocrypto only).
Today every inner-loop cycle pays a full ARM9 link (~45–120 s: Wine mwldarm over 815 objects
+ make/.d/hook overhead) that objdiff never looks at. The standalone-compile recipe already
exists at `ipa_check.sh:22-23` (full expanded flag set: `-DHEARTGOLD -DGAME_REMASTER=0
-DENGLISH -DPM_KEEP_ASSERTS -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_FINALROM -O4,p ... -ipa file`).
Build `tools/decomp_harness/compile_one.sh <src/name.c>`:
- Replicate that invocation; **omit** make's DEPFLAGS (`-gccdep -MD` — also eliminates the
  Wine `.d`-corruption class from the inner loop); set MWCIncludes; run from the real project
  root (Wine cwd/symlink caveat in CLAUDE.md).
- Pipe the output .o straight into objdiff.py vs `build/heartgold.us/asm/<name>.o` (reference
  .o already exists for all 306 pending files — no /tmp copy step).
- Validation (one-time): recompile all matched src TUs standalone and byte-compare each
  against its **make-built src .o** (`build/heartgold.us/src/*.o`) — this is the flag-parity
  proof. (Do NOT plan on asm .o pairs: for matched files the asm .o is stale or absent.)
- Update /decomp SKILL.md: inner loop = compile_one.sh + objdiff; `--target main` + full
  `chiri pkg -- compare` reserved for finalization. **The final gate is unchanged:** both
  objdiff AND full-ROM SHA1 must pass before a file is called done.

### T1.2 objdiff.py raw-section rewrite  `[x]`  (0.5–1 day, medium risk — regression-gate it)

**Result (2026-07-02, delegated to Opus, verified by orchestrator):** objdiff.py now parses
the ELF directly (in-file `Elf` class, stdlib struct) and slices each function's bytes from
its own section by symbol (st_shndx + value/size — required because MWCC emits one `.text`
section per function), masking every relocated field from the real reloc tables
(THM_CALL/PC24/CALL/JUMP24/ABS32/REL32/etc; zero unlisted types across all 306 pending
objects / 20,193 functions). New ` PAD ` verdict for benign trailing `.balign 4,0` (≤3 zero
bytes). Old path kept behind `--legacy`. Regression (`objdiff_regression.py`, 310 pairs):
309/310 verdict-identical, 0 self-compare failures; the 1 flip is the trailing-pad class
correctly flipping to ALLMATCH. Jump-table false-SIZE class proven dead on
unk_0202FBCC (legacy: 5 false SIZE; new: 39/39 MATCH, exit 0). Found along the way: the
legacy text parser under-counted size for **77% of functions** (drops literal-pool `.word`
lines) — legacy sizes were only meaningful in symmetric compares; new sizes are authoritative.
Orchestrator hardening: injected-corruption test (unmasked body byte → DIFF/exit 1; reloc-
masked byte → OK) and `--summary` now returns exit 1 on any MISS/SIZE/DIFF/SECT (was always
0). T1.3 note: data sections in cmd_summary are still compared raw with NO reloc masking —
mask them in T1.3; `chiri pkg -- compare` remains the authoritative gate.
Per TODO.md spec: slice raw `.text` bytes by `nm -S` symbol ranges (in-file
`get_section_bytes()` at objdiff.py:217 already does raw extraction for cmd_summary); replace
the `is_bl_halfword()` heuristic (lines 74–97) with real relocation masking from `readelf -r`
(R_ARM_THM_CALL / R_ARM_PC22 / R_ARM_ABS32 / R_ARM_ABS32 literal words). Kills the
jump-table false-SIZE class (11 of 19 "tooling" patterns exist only to work around it) and
makes BL masking exact.
Regression harness: old-vs-new verdicts over every file that has BOTH a committed .s and a
matched .c (enumerate first — most matched files have no buildable asm .o); require identical
verdicts except the known jump-table false positives, which must flip to MATCH.

### T1.3 objdiff --score and --classify  `[x]`  (1 day, after T1.2)

**Result (2026-07-02, delegated to Opus, verified by orchestrator):** `--score [--json]`
(matched-halfword ratio; JSON schema documented in objdiff.py — the permuter fitness value is
`diff_halfwords`, minimize to 0) and `--classify [FN]` labeling mismatches
{register-rename-equivalent, schedule-equivalent, spill-slot-shift,
extra/missing-instructions, size-diff, logic-diff}, order/rename-tolerant (adjacent swap =
distance 1; pure rename/spill-shift = distance 0). Classifier decodes via the $a/$t/$d
mapping symbols. All six synthetic-mutation demos label correctly. Auto-feed:
`--classify --attempts-json --attempts-file asm/<n>.s | attempts_log.py add --json -`
(attempts_log gained optional `classify_label`, fully backward compatible). Data sections in
cmd_summary are now reloc-masked — and this exposed that `objcopy -O binary /dev/stdout` is
EMPTY on macOS under subprocess capture, so the old SECT check had been silently comparing
empty-vs-empty; bytes now come from the in-file ELF reader and the check is live for the
first time (proven both directions on crafted ELFs). Regression parity unchanged (309/310 +
known pad flip, 0 self-compare fails).
- `--score`: matched-halfword ratio per function (objdiff already computes real_diffs and
  throws the ratio away).
- `--classify`: one of {register-rename-equivalent, schedule-equivalent, spill-slot-shift,
  extra/missing-instructions (CSE/hoist), size-diff, logic-diff}. Score must be
  order/rename-tolerant so a 2-insn transposition ranks as distance-1.
- Auto-feed the label into attempts_log entries (replace free-text diff_signature); this is
  the permuter's fitness function and candidate filter.

### T1.4 decomp-permuter integration  `[x]`  (1–2 days, after T1.1/T1.3)

**Result (2026-07-02, delegated to Opus, verified by orchestrator):** integration
architecture is **option (a)** — decomp-permuter drives the search with its native
whole-object objdump scorer; our `score_candidate.py` (via `gate_win.py`) is the final
sibling-guard gate at win time (inner loop stays fast; the guard stays non-negotiable).
IPA-faithful by construction: per-job `compile.sh` splices the candidate's target function
back into the real full TU (`seed_full.c`, target's NONMATCHING C promoted, siblings on asm)
and compiles the whole unit with the make-equivalent flags; `target.o` is the full
retail-matching TU so siblings cancel in the whole-object diff and score 0 ⟺ target matches
retail. Shipped under `tools/decomp_harness/permuter/`: `score_candidate.py` (fitness =
target `diff_halfwords`; exit 5 on any baseline-matching sibling regression), `emit_job.sh`,
`make_seed.py`/`make_base.py`/`fn_extract.py`/`mwcc_compile.py`, `gate_win.py`,
`run_queue.sh` (serial overnight driver — one Wine/MWCC at a time), `permuter_settings.toml`
(`compiler_type="mwcc"`, `arm-none-eabi-objdump -drz`), README with full contract.
`nonmatching_registry.json`: 74 blocks classified, **71 permuter candidates**, 3 do_not_queue
(provably-not-a-search classes). Upstream clone pinned at 70d74f7 (gitignored,
`.venv` with pynacl/toml/Levenshtein; user-approved) — **zero local patches needed**.
**Pilot (bounded 40 min, unk_02014A08 `sub_02014CBC`, instruction-schedule class): 2264
iterations, base 485 → best 435 (one accepted improvement: a local's `s16`→`unsigned int`);
no full match, harness proven end-to-end.** `gate_win.py` on the pilot's best output:
full-TU recompile green, target `diff_halfwords=45/86`, all 18 guarded siblings
byte-identical, exit 0. Known wart (upstream, non-blocking): the randomizer typemap only
registers *defined* functions, so passes touching a call to a declared-only sibling throw
`KeyError` — 5 failures in 2264 iterations, counted and skipped by the permuter; no patch
needed for queue use. Next use: point `run_queue.sh` at the 46 regalloc-tiebreak + 2
instruction-schedule candidates overnight; a gated win still requires the standard finalize
(objdiff AND full `chiri pkg -- compare`) before its inline asm is deleted.

**Verified:** simonlindholm/decomp-permuter supports ARM32 (PR #127, merged 2022-06-17,
uses arm-none-eabi-objdump); MWCC-ARM wrapper precedent: SonicRushAdventure-Decomp's
permuter_settings.toml (`compiler_type = "mwcc"`). Pure Python — fine on macOS ARM64.
- compile.sh wrapper = compile_one.sh (hardcode real project root).
- **Fitness contract (non-negotiable, IPA):** compile the FULL TU and require every
  already-matched sibling function to stay byte-identical while scoring the target —
  otherwise the permuter will "fix" one function by silently breaking nine.
- Emit-job script: when a function scores ≥90% after N failed hand shapes, generate a job dir
  (isolated C + target bytes + wrapper); run the queue overnight.
- Mutation set: seed with the classes the patterns DB already names — declaration order, temp
  introduction/removal, block scoping, statement order, loop form, walker-vs-index,
  cache/reload flips (base+offset temp), spill-steering.
- Add a **NONMATCHING registry** (JSON): tag all 73 existing blocks with failure class +
  permuter-candidacy; each permuter success deletes committed inline asm. Copyprop/SROA-class
  blocks are tagged "provably unreachable — do not queue".

### T1.5 nonmatch_fallback.py — finish transcribe_nonmatching.py  `[x]`  (0.5–1 day)

**Result (2026-07-02, delegated to Opus, verified by orchestrator):** transcribe_nonmatching.py
git-mv'd to `nonmatch_fallback.py`; one command emits the complete paste-ready block
(extern decls from REFS incl. compiler-rt prototypes, `#ifdef NONMATCHING` C-doc stub,
`#else` + clang-format guards + `asm <sig> {...}`), sig priority include/*.h →
knowledge.json → --sig, decode_one named-`.hword` fallback instead of SystemExit,
multi-jump-table support. Validated byte-exact against committed hand-written blocks
(OamManager_Create instruction-for-instruction; ov01_02200A08 4-entry table exact), and the
orchestrator ran the multi-table case (ov86_021E7984: both tables — 4+8 entries — exact and
in order; trailing literal pool correctly folded to `ldr =` forms, incl. `=gSystem` symbol
refs). /decomp SKILL.md failure path now invokes it as one command. Limitations: Thumb-only
(ARM hits .hword fallback with WARN); statics without header/knowledge sigs need --sig;
data-symbol refs emitted as `// extern` hints for the operator to type correctly.
Existing script already folds literal pools (`ldr rN,=X`), fixes `[rN]`→`[rN,#0]`, strips
`.balign`, re-encodes jump tables from the assembled .o. Gaps to close:
- `--sig` is in the usage string but never registered with argparse (lines 160–162).
- Emit the complete paste-ready block: extern decls generated from REFS (the `_s32_div_f`
  undefined-label gotcha), `// clang-format off/on`, `asm <sig> { ... }`, wrapped in
  `#ifdef NONMATCHING` skeleton with the C-documentation variant stub.
- `decode_one()` (line 157): replace SystemExit with a named-halfword fallback; support
  multiple jump tables per function (track `$d` extents per address); delete dead
  `hw_to_instr()` stub (lines 39–43); ARM-mode support can wait (workload is 99.5% Thumb).
- Signature source: include/*.h → knowledge.json → `--sig`.
- Wire into the /decomp skill failure path: fallback becomes one command.

### T1.6 verify_matched.sh + ipa_map.py — regression guard  `[x]`  (1 day, after T1.1)

**Result (2026-07-02, delegated to Opus, verified by orchestrator):** `verify_matched.sh`
capture/check/`--file`/`--quick N` — fingerprints SHF_ALLOC sections only, by section index
(duplicate-name-safe; .bss as type+size), so the MWCC/Wine DWARF comp_dir CWD problem never
enters the hash. Manifest at `matched_manifest.json` (schema v1, per-section sha1s + rollup;
recapture after every green compare). **Full check pass: 483/483 clean, 0 drift, 0 compile
failures, 624 s serial (~1.3 s/TU).** `ipa_map.py`: header→consumer index from build/sub/
dsprot .d files with loud partial-coverage banner — currently 100% (483/483 matched TUs have
.d data); query by path/basename, `--matched`, `--stats`, `--json`. `ipa_check.sh` head-1 bug
fixed: iterates ALL matched includers of a changed header (source-grep based, .d-purge-proof).
Hook wiring APPLIED (user-approved 2026-07-02): pre-commit runs `verify_matched.sh check
--quick 20` on staged include/*.h changes (after ipa_check) and auto-stages
matched_manifest.json; `build_attestation.sh` recaptures the manifest after every green
compare; nightly full check via `nightly_check.sh` + launchd agent
`com.pokeheartgold.verify-matched` (03:30 daily, skips if MWCC busy, logs to
~/Library/Logs/pokeheartgold_verify_matched.log, drops a VERIFY_DRIFT marker on failure).
- `verify_matched.sh`: SHA1 manifest of `build/heartgold.us/src/*.o` captured after every
  green compare; check mode recompiles matched TUs via compile_one.sh and diffs. Wire as
  optional pre-commit + overnight loop.
- `ipa_map.py`: parse `build/**/*.d` into a header→consumer index.
- Fix `ipa_check.sh:46`: it currently tests only `head -1` of a changed header's includers —
  iterate ALL matched includers. This turns IPA-cascade debugging from ROM-level bisection
  into a named-TU diff, and makes coordinated header-fix commits safe (path to un-freezing
  the known wrong-signature headers cluster by cluster).
- Companion (cheap, later): frozen-header signature ledger — cross-check every header decl
  against asm-inferred truth (return value used? param narrowed?) so wrong-signature locks
  are known before an attempt, not at function 9 of 11.

---

## Tier 2 — Scaling into the giants (weeks 2–3)

### T2.1 split_overlay.py  `[ ]`  (2–4 days incl. pilot)
Top 20 files = 50% of pending functions; they cannot be attacked incrementally as monoliths.
- **Precedent:** upstream commit `706fa629a` ("Split Overlay 80") shipped its xMAP splitter as
  `Untitled.ipynb` (MIT, luckytyphlosion), deleted next commit. Recover:
  `git show 706fa629a:Untitled.ipynb`. Today's map file: `build/heartgold.us/main.elf.xMAP` —
  but the .s files carry authoritative `; 0xADDR` comments, so xMAP is cross-check only.
- Pipeline: parse functions (thumb_func_start + addr comments) and tail symbols
  (.rodata/.data/.bss); build the reference graph (text→tail `=sym` literal loads, tail→tail
  `.word sym`, tail→text fnptr tables, text→text bl); compute valid cut points
  (prefix-max/suffix-min consistency of tail positions); emit `overlay_NN_<addr>.s` chunks +
  per-chunk .inc (`#include <nitro/fs/overlay.h>` + `#pragma once` + .public for cross-chunk
  refs); rewrite the single main.lsf Object line into N lines **in address order**
  (order is load-bearing for mwldarm).
- Measured cut counts: ov96=22, ov07=8, ov40=11, ov14=273, ov49=293, ov18=73, ov83=69,
  ov70=3 — clean. ov112=1 and ov74_thumb=0 → **pooled mode** (overlay-80 fallback: pool
  un-attributable rodata into one designated chunk, promote its symbols to .public).
- **Required amendments (critique findings):**
  - Emit a rename/split manifest (old path → chunk paths + function ranges) and migrate ALL
    path-keyed harness data: attempts_log.jsonl, knowledge.json, triage queue, ledger keys.
  - Validate each split by rebuilding and byte-comparing the ROM **before any C work**, under
    BOTH `GAME_VERSION`s — overlay_74_thumb.s has 4 `#ifdef HEARTGOLD` sites,
    overlay_02_02248728.s has 3.
  - Decide the monolith-retention policy explicitly: upstream precedent deletes the original
    .s after split; CLAUDE.md's "do not delete the original .s" rule was written for asm→C
    flips. Recommendation: treat a byte-verified split as a rename (delete monolith, keep
    manifest), and document the exception in CLAUDE.md.
  - Before splitting each giant, check whether upstream pret has started it (T3.3).
- **Pilot: overlay_83** (smallest giant, 69 clean cuts, Frontier records subsystem). Then
  batch; each split is its own commit. Target chunk budget ~4k lines ⇒ ~80–100 chunk files
  from the 10 giants.
- Subsystem IDs for naming/prioritizing: ov96 Pokéathlon course engine; ov07+ov08 battle
  display/anim pair (shares structs with unk_02014DA0); ov40 VS Recorder/Battle Video;
  ov14 PC Box; ov49+ov45 Wi-Fi Plaza; ov112 Pokéwalker; ov74 main menu/Mystery Gift/AGB
  migration; ov70 GTS-like script app; ov18 Pokédex; ov83 Frontier records.
  Cleanest first targets after pilot: ov14, ov18.

### T2.2 Sweep top-up as standing process  `[ ]`  (1–2 h of skill/process change)
Sweep coverage is 2/135 pending files; every session re-derives signatures — also the top
feeder of IPA header trouble. Add to /decomp + loop skills' on-success checklist (or a Stop
hook): if fewer than N of the top-N triage targets have knowledge.json entries, run
/decomp-sweep for the gap (sweeps are read-only; run them during compare builds).
**After each T2.1 split lands, immediately sweep the new chunks** (chunks are sweep-sized;
the monoliths never were).

### T2.3 Soft-float codegen pattern pack  `[ ]`  (1–2 days, before attacking overlay_96/92)
2,542 soft-float runtime call sites (_dadd/_fmul/_f2d/_ll_*) across 109 workload files:
ov96=850, ov92=276, ov49=120, ov07=100, ov74=98. Harvest C-expression → exact MWCC call +
register-marshalling sequences (r0–r3 args, double register pairing, result moves) from
already-matched C/asm pairs into a patterns.json section; optionally a small annotator that
marks a .s function with reconstructed float expressions.

### T2.4 Asm-derived type/idiom oracle at sweep time  `[ ]`  (1 day)
Scan .s at sweep time for: blt/bge vs bcc/bhs → signedness constraints; lsl/lsr truncation
pairs → width constraints; _s32/_u32/_ffix helper names → exact types; copyprop-cmp entry
signature + dead-store stack buffers → pre-flag NONMATCHING-inevitable in knowledge.json.
Each of these currently costs a build-diff cycle to discover per function.

### T2.5 Parameterize the rodata pipeline  `[ ]`  (1–2 days)
gen_rodata.py:12, gen_rodata_blob.py:18-25, verify_rodata.py:11-16 hardcode one overlay.
Generalize to `gen_rodata_pass.py <asm/name.s>` (base addresses derivable from symbol names);
fold verify_rodata's symbol-addressed byte comparison into `objdiff --rodata`. Longer-term:
a pre-build rodata layout **emulator** encoding MWCC's rules (first-pinned-rest-reversed,
static size-sort, anon @NNNN templates first, dropped trailing .balign) so layout is
validated before any compile.

### T2.6 m2c as a third draft channel  `[ ]`  (0.5 day to wire)
m2c supports `--target arm`; in-tree tools/m2ctx already generates its context input. Output
will NOT match as-is (no MWCC-ARM tuning) — treat exactly like delegate.sh output: untrusted
draft, full build + objdiff verification. Best on large mechanical functions (soft-float
math, sprite managers). Note: the Qwen long tail is exhausted (≤5-fn files hold only 26
functions total) — after T2.1, point the delegate loop at chunk files instead.

### T2.7 struct_solver.py  `[ ]`  (2–4 days; DEFER until sweep coverage is meaningful)
merge_sweep.py already aggregates per-offset struct_accesses/hypotheses into knowledge.json;
nothing consumes them. Solver: union of (offset, width, signedness) constraints + asm access
widths → ranked candidate layouts written back as hypotheses (advisory only, never
auto-emitted headers). Value scales with T2.2.

---

## Tier 3 — Infrastructure and process (parallel to Tiers 1–2)

### T3.1 CI on the fork's branch  `[ ]`  (0.5–1 day)
`.github/workflows/build.yml` (inherited from pret) triggers only on push to `master` /
pull_request — the fork works on `mainline`, so **no automated SHA1 verification runs on any
fork commit**. Add mainline to the triggers (or a fork-specific workflow): nightly + on-push
`COMPARE=1` builds of BOTH games. Use **wibo** on a Linux runner instead of Wine — verified:
decomp.me's production backend runs every NDS ARM9 MWCC compiler under wibo
(`MWCCARM_CC = '${WIBO} .../mwccarm.exe ...'` in decomp.me compilers.py) and zeldaret/ph uses
it by default for mwccarm/mwldarm. This sidesteps the Wine `.d`-corruption class entirely in
CI. Locally on macOS: keep Wine (wibo-macos is x86_64-under-Rosetta, experimental — curiosity
experiment only). Mind the CLAUDE.md Docker caveat: CI must not write Linux tool binaries
back into a shared volume.

### T3.2 SoulSilver dual-version gate  `[ ]`  (0.5 day)
The harness has zero SS awareness and `chiri pkg -- compare` aliases compare_heartgold only.
Tag version-conditional files (today: asm/overlay_74_thumb.s 4× `#ifdef HEARTGOLD`,
asm/overlay_02_02248728.s 3×, plus 5 src files — the grep is cheap, wire it into triage) so
their finalization requires `chiri pkg -- build --game both` with COMPARE=1. T2.1 splits of
version-conditional overlays must validate under both versions.

### T3.3 Upstream pret sync  `[ ]`  (0.5 day for the script, then weekly)
pret/pokeheartgold is actively landing decomps of the same files (the 382 "upstream" ledger
entries are their finished work; local upstream ref was ~3 weeks stale at analysis time).
Build a ~30-line weekly report: `git fetch upstream` + diff upstream src/ against the local
pending queue → "files upstream already matched" (retire for free) and "files upstream is
working on" (don't collide). Define a merge policy for split-renamed files using the T2.1
manifest. Check before starting any giant.

### T3.4 Parallel-session capacity  `[ ]`  (1 day)
At ~45–50 fns/day serial, the remaining 17k functions take 12+ months. The structural fix:
- Target-claim lockfile in next_target.sh (prevents two sessions picking the same file).
- Topology: N drafting sessions in separate worktrees using ONLY compile_one.sh + objdiff
  (no main.lsf edits, no full builds — this is what makes parallelism safe given the
  one-shared-build-dir constraint), plus ONE integrator session that owns main.lsf flips,
  full builds, and both-ROM compares.
- Deprecate or rewrite run.sh: it uses raw `make` (line 172, violates chiri-only rule,
  bypasses hooks), its prompts (lines 232–266) predate and ignore attempts_log / knowledge /
  patterns, its model string is stale, MAX_RETRIES=100 full builds. Either regenerate its
  prompts from the /decomp SKILL.md or delete it in favor of /decomp-loop.
- Measure and record funcs/day per channel (Claude solo / Sonnet draft / Qwen draft / m2c
  draft / permuter reclaim) so investment follows throughput.

### T3.5 Knowledge-asset protection + misc  `[ ]`  (0.5 day)
- JSON-schema validation + pre-write lint in attempts_log.py / patterns.py / merge_sweep.py
  (these files are the project's accumulated brain; one malformed write corrupts them).
- attempts_log.py: add fuzzy `--grep` over approach/lesson/diff_signature (cross-file lessons
  currently surface only by exact file/function match).
- next_target.sh: auto-run `triage.py --rebuild` when triage_report.json is older than
  progress.json.
- Ledger: annotate the 382 "upstream" entries as `upstream-decompiled (asm deleted)`; add the
  explicit scope statement for lib/ and sub/; fix the 17-file drift.
- decomp.me policy note: the exact compiler is available (platform `nds_arm9`, id
  `mwcc_30_137` maps to package dir `mwccarm/2.0/sp2p2`) — legitimate human-in-the-loop
  escape hatch for stubborn functions, but scratches are PUBLIC; post only what's acceptable
  to publish, and re-verify any community match locally with build + objdiff + compare.

---

## Execution order (dependency-driven)

```
Week 1:  T0.1 → T0.2 → T0.3 → T0.5   (registry truth + two free wins)
         T1.1 → T1.2 → T1.3          (fast loop + trustworthy differ)
         T0.4                        (unk_02005D10 with split headers, using the fast loop)
Week 2:  T1.4 (permuter) + T1.5 (nonmatch fallback) + T1.6 (regression guard)
         T3.1 (CI) + T3.2 (SS gate) + T3.3 (upstream sync) in parallel — independent
Week 3+: T2.1 splitter (pilot ov83) → T2.2 sweep top-up → T2.3 soft-float pack
         → giants in order: ov14, ov18, ov83 chunks first; ov96 after T2.3
         T3.4 parallelism once compile_one-based drafting is proven
Ongoing: permuter queue overnight; verify_matched nightly; weekly upstream sync
```

## Hard rules that every item above must respect

- Matching gate is ALWAYS two-part: objdiff per-function AND `chiri pkg -- compare` full-ROM
  SHA1. Data-heavy files: compare only (objdiff cannot see section reordering).
- MWCC `-ipa file` cascade: split-header discipline on every new decomp; permuter fitness =
  whole-TU with siblings byte-frozen; never edit a frozen public header without T1.6 tooling.
- Never accept generated/drafted C (Qwen, Sonnet, m2c, permuter) without local build+verify.
- One build at a time; `timeout: 1200000`; prebuild guard stays.
- Function order in C files matches asm; original .s files are kept for asm→C flips
  (T2.1 splits are the explicit, manifest-tracked exception once byte-verified).
