# Decomp Harness TODOs

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

## unk_0201010C rodata ordering

The `static const` arrays in `src/unk_0201010C.c` need reordering to match the asm's `.rodata` section layout. All 127 functions byte-match but the ROM SHA-1 fails due to rodata order.

## Pre-existing prototype conflicts

5 files have local declarations conflicting with headers from prior decomps (unk_02004A44, render_window). Fixes are staged in working tree — need to commit alongside the rodata fix once ROM SHA-1 passes.
