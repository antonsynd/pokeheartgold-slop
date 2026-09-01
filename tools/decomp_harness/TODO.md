# Decomp Harness TODOs

## recomp.sh dies silently when no .d files exist (2026-07-30)

`fix_d_files()` runs `grep -rl 'Z:\\' build/ --include='*.d' | wc -l` inside a
command substitution; with zero `.d` files grep exits 1, and under
`set -euo pipefail` the whole script exits before the tidy/rebuild phases —
with exit code 0 from the caller's perspective. Guard the pipeline with
`|| true`.

## RESOLVED: GNU Make 3.81 -j hang → project-local gmake 4.4.1 (2026-07-30)

Apple's bundled Make 3.81 spins indefinitely in its parallel dependency walk
after mass invalidation (90+ CPU-minutes, zero compiler processes; `-j1` on
the same tree compiles immediately). Fixed by preferring Homebrew GNU Make
4.4.1: `build_tools/bin/build_pokeheartgold::_make_bin()` picks
`/opt/homebrew/bin/gmake` (or `/usr/local/bin/gmake`) when present,
`MAKE_BIN` env var overrides, falls back to `make`. Sub-makes inherit via
`$(MAKE)`. Validated: full tidy rebuild `-j8` = ~6 min (vs ~55 min serial
3.81), all 990 objects fresh, rom.sha1 OK. Install prerequisite (macOS):
`brew install make`. Raw `make` invocations outside the wrapper still use
3.81 — go through chiri, or use `-j1` there.

Still true: with all `.d` files missing, header edits do NOT trigger
recompiles (deps come from `include $(wildcard $(DEPFILES))`), so after a
`.d` wipe only a tidy + full rebuild is trustworthy for the SHA1 gate.

## Build reliability: Wine/.d file flakiness

The filesystem build invokes Wine (mwasmarm.exe) hundreds of times. Transient Wine failures produce:
- Corrupted `.d` files with Wine `Z:\` paths that make subsequent builds spin at 100% CPU
- Random "mwasmarm.exe Usage Error" / "Driver Error" that require retrying the build
- `gsed: can't read *.d` errors after clean builds because the .d is created by a later step

### Possible fixes
- Add retry logic to the Makefile's assembly rules (retry Wine invocations up to 3 times)
- Limit parallelism for Wine-heavy filesystem targets (`make -j1 filesystem` vs `make -j4 main`)
- Post-build `.d` file validation: check for `Z:\` paths and delete bad files automatically
- Pre-build hook that runs `find build -name "*.d" | xargs grep -l 'Z:\\' | xargs rm -f`
- Consider caching filesystem .bin outputs so they don't need rebuilding unless source .s changes

### Current workaround
`./tools/decomp_harness/recomp.sh` kills stale processes and cleans corrupted .d files.

## objdiff: spurious SIZE mismatch on functions with inline jump tables

`objdiff.py` extracts per-function bytes by parsing `arm-none-eabi-objdump -d`
disassembly *text* (`get_functions`). When a function embeds a Thumb jump table
in `.text` (MWCC dense switch: `add pc, rN` followed by a halfword offset table),
the two objects render that data region differently:

- Hand-written asm `.o`: the assembler emits `$d` mapping symbols, so objdump
  prints the table as `.word`/`.short` data. The byte-extraction regexes in
  `get_functions` (which expect 4-hex-digit Thumb columns) capture these lines
  inconsistently — 8-digit `.word` rows are dropped.
- MWCC C `.o`: no `$d` mapping symbol, so objdump disassembles the same bytes as
  bogus Thumb instructions (`movs`/`lsls`), which ARE captured.

Result: the C function appears larger and objdiff reports a false
`SIZE x vs y` mismatch even when the bytes are byte-identical (confirmed via
`objdump -d` side-by-side and `chiri pkg -- compare`). Seen on
`ov80_0222ACA0` (overlay_80_0222ACA0, 14-case getter jump table): reported
SIZE 172 vs 196 while fully matching.

### Fix (bigger refactor — deferred)
Extract function bytes from raw section contents (`objdump -s -j <section>` or
read the ELF directly) keyed by symbol address + `nm -S` size, instead of
parsing disassembly text. This makes extraction independent of `$t`/`$d`
mapping-symbol rendering. Higher risk (touches the core extraction path that
all comparison modes depend on), so it wants its own change + regression check
against a batch of already-matched objects.

### Current workaround
Documented in patterns `switch-jumptable-density` and
`objdiff-bl-placeholder-falsepos`: when objdiff flags only a SIZE diff on a
jump-table function, confirm with `objdiff --disasm` (bytes identical) and trust
`chiri pkg -- compare` (authoritative). The BL-placeholder false positive that
used to compound this was fixed (see `is_bl_halfword` byte-order fix).

## decomp-permuter scaffolding gaps (2026-09-01, ov18_021F831C job)

`emit_job.sh` produced a `base.c` the permuter could not parse and a splice the
compiler could not build, so the job never iterated:

- `make_base.py` copies file-local function-like macros verbatim but drops the
  leading `#` (`define DEX_SORT_FILE(member) ...`), and pycparser cannot expand
  macros anyway. It also leaves `GF_ASSERT(...)`, `FALSE`/`TRUE` and
  `DEX_SEARCH_*` constants unresolved (it declared `typedef struct FALSE FALSE;`
  as an opaque type). Workaround used: hand-substitute numeric constants,
  `GF_AssertFail();`, and `#define FALSE 0` in `base.c`.
- After that, `compile_wrapper.sh`'s spliced `*.full.c` failed with a
  `declaration syntax error` on every case-body line plus
  `undefined identifier 'fileList'`, i.e. the pycparser-regenerated function
  text is not accepted by MWCC once spliced back into the seed TU (likely the
  regenerated declarations/labels). Needs a look at `fn_extract.py` /
  `compile_wrapper.sh` with this job as the repro:
  `scratchpad/permuter_jobs/overlay_18_021F7ED4_ov18_021F831C`.
- Proposed fix: have `make_base.py` run the target function through the real
  preprocessor (`mwcc -E` or `cpp` with the project include path) so `base.c`
  is macro-free, and make the splice re-indent/normalise before compiling.
