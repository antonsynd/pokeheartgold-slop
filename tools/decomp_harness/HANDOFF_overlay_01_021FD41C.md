# Handoff: `asm/overlay_01_021FD41C.s` (camera/3D-effect map-object effect, 24 funcs)

**Status:** 20/24 functions matched in C; 4 holdouts remain. `src/field/overlay_01_021FD41C.c`
is committed (builds clean, 20/24 byte-match) but `main.lsf` is LEFT ON `asm/...` so the ROM
stays matched via asm. A focused session flips `main.lsf` to `src/field/overlay_01_021FD41C.o`
and finishes the 4 holdouts, then `chiri pkg -- compare`.

Asm reference: `cp build/heartgold.us/asm/overlay_01_021FD41C.o /tmp/overlay_01_021FD41C_asm.o`.

## What's done (committed in the .c)
- All structs: `UnkOv01_021FD41C_Work` (0x1C8), `_sub` (0x14), `_InstanceWork`, `_Data`, `_Template`.
- Cluster-head externs declared locally (do NOT include overlay_01_021F1348.h — placeholder-type conflict).
- **Rodata consolidated** into one `static const struct sRodata` (8 contiguous symbols: arr_e90 s32[4],
  tmpl_ea0, arr_eb4 fx32[5], tmpl_ec8, tmpl_edc, arr_ef0 VecFx32[3], arr_f14 VecFx32[3], arr_f38 VecFx32[5]) —
  byte-identical .rodata confirmed. Templates reference this file's cb1/cb2 fns.
- Fixes already applied (matched): enum-flag casts `(MapObjectManagerFlagBits)8` / `(MapObjectFlagBits)0x00100200`;
  ov01_021FD458 `priority = GetPriority(...) - 1` (subtract immediately, then pass); ov01_021FD4F4 rewritten as
  `switch (work->unk0) { case 0:...return; case 1: if(...)return; unk0++; /*fallthru*/ case 2: {...} break; }`.

## The 4 holdouts
1. **ov01_021FD498** (fx32 round helper, 2 real byte diffs): asm keeps the sum in r1
   (`adds r1,r0,r1; asr r0,r1,#12`); MWCC puts it in r0 (`adds r0,r1,r0; asr r0,r0,#12`). Tried
   `r1 = a0 + r1; return r1 >> 0xc;` — still r0. A 2-byte regalloc tie (like the 264 case in
   overlay_80_02236B78). Likely NONMATCHING (tiny) or a known FX round macro.
2. **ov01_021FD7D4** (cb2, SIZE 96 vs 92 as C): matrix-copy + sub_02068DB8 + sub_020699AC.
   Camera-family cb2 holdout (mainWork reload / scheduling).
3. **ov01_021FD838** (cb2, 39 diffs): same family, larger.
4. **ov01_021FD980** (cb2, 21 diffs): early-vs-late `idx * 0x54` multiply + operand order
   (`muls r4,r1` idx-first vs MWCC `muls r0,r4`); mainWork load timing.

## NONMATCHING gotcha (IMPORTANT — learned the hard way)
NONMATCHING the cb2s via inline `asm` FAILS here because:
- 7D4/838 load the matrix rodata, originally `ldr rN, =ov01_02208EF0/F14`. After consolidation those
  are `sRodata` MEMBERS, not standalone symbols. Rewriting to `ldr rN, =sRodata + 0x60 / 0x84` does NOT
  fold the offset into the single literal-pool word — it inflates the function (+4 bytes: extra
  align nop before the pool), changing the function size.
- The size change made the MWCC linker REORDER the per-function .text sections (observed: 7D4 placed
  before 784 in field.sbin), cascading address shifts into other files (diffs at unrelated offsets).
So: do NOT NONMATCHING 7D4/838 while the rodata is one consolidated struct. Options for the focused session:
  (a) MATCH the cb2s in C (preferred — they reference sRodata.arr_ef0/arr_f14 cleanly as C). The diffs are
      scheduling/aliasing (mainWork reload, index-multiply timing) — apply hoisting / reuse-just-stored-member
      ([[reuse-just-stored-member-avoids-source-reread]]) and the read-order tricks.
  (b) If NONMATCHING is unavoidable, pull arr_ef0/arr_f14 OUT of sRodata as separate named const symbols so
      `ldr =arr_ef0` works as a single pool word — but verify the .rodata still lays out byte-identically
      (size-sort! the two 36-byte matrices vs the rest) via cmp of --only-section=.rodata.
- 498 NONMATCHING is safe (no rodata ref) — `static asm s32` with the 4 transcribed insns + `bx lr`.

## Diagnostic recipe used
asm-baseline cmp: flip main.lsf→asm, `chiri compare` (EXIT 0), `cp build/heartgold.us/field.sbin /tmp/field_good.sbin`;
flip→src, build, `cp .../field.sbin /tmp/field_src.sbin`; `cmp -l`. Map file offset→function via the file's
prologue bytes (`objcopy -O binary -j .text asm.o; xxd; python find`) → base, then within-file offset, then
nm -n of the asm .o. This is how the reorder was found.
