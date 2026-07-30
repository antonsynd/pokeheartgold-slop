# Decomp Harness TODOs

## recomp.sh dies silently when no .d files exist (2026-07-30)

`fix_d_files()` runs `grep -rl 'Z:\\' build/ --include='*.d' | wc -l` inside a
command substitution; with zero `.d` files grep exits 1, and under
`set -euo pipefail` the whole script exits before the tidy/rebuild phases —
with exit code 0 from the caller's perspective. Guard the pipeline with
`|| true`.

## GNU Make 3.81 hangs with -j4 after mass invalidation (2026-07-30)

Observed during the upstream merge (378 files changed + full `.d` wipe):
`make -j4 main` spins in its dependency walk indefinitely (90+ CPU-minutes,
zero compiler processes spawned), while `make -j1` on the identical tree
starts compiling within seconds. Stack samples show update_file/check_dep
recursion. Until root-caused, use `-j1` for post-merge / cold rebuilds.
Candidate real fix: project-local GNU Make 4.4 (`brew install make`,
wire `gmake` through build_tools/bin/build_pokeheartgold without touching
PATH) — likely also much faster at the big-graph walk. Note: with all `.d`
files missing, header edits do NOT trigger recompiles (deps come from
`include $(wildcard $(DEPFILES))`), so after a `.d` wipe only a
tidy + full rebuild is trustworthy for the SHA1 gate.

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
