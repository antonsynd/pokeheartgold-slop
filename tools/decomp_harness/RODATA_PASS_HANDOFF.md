# overlay_02_02248728 — rodata pass handoff (finalize the flip to src)

**State (HEAD c9d1ab224):** all 364 *functions* are defined in
`src/overlay_02_02248728.c` and byte-match (346 C + 18 NONMATCHING `asm`,
verified). `main.lsf:572` still on `asm/overlay_02_02248728.o`; ROM matches
retail. The ONLY thing left to flip to src is the **rodata/.data pass**.

## What the flip needs
Flipping `main.lsf:572` asm→src fails the link with **24 undefined rodata
symbols** (`ov02_022534B8 .. ov02_02253DD8`). The `.c` declares ~73 rodata
symbols `extern` but **defines none** — they live only in the asm `.s`
`.rodata` (lines 17507-17968) and `.data` (17969-EOF). Must define them in C,
byte-exact, type-correct, in a layout that matches retail.

## Scope (measured)
- 83 rodata/data symbols, **2260 bytes** total (76 rodata, 7 data).
- Forms: **45 pure-`.byte`**, 1 pure-`.word` numeric, **37 with symbol refs**
  (function-pointer / cross-rodata `.word sym` tables), 0 mixed.
- Declared types in the .c externs: 21 `VecFx32`, 11 `Field3dObjectTaskTemplate`,
  7 `MovementScriptCommand`, 4 `u16`, 2 `u8`, 2 `fx32`, 1 `u32`, ~24 untyped/`const`.

## Approach (pure-C, user-chosen)
1. **Types must match the existing externs** — do NOT retype to `u8[]`; matched
   functions access these via the typed extern and retyping changes their
   codegen (breaks their match). Define each symbol with its declared type:
   - `VecFx32` → `{ x, y, z }` (3 fx32 from the 12 bytes; fx.h).
   - `u8/u16/u32/fx32` arrays → element lists.
   - symref tables (e.g. `ov02_FieldTaskFunc const X[]`) → list the `.word`
     operand symbols verbatim (they're real relocations; the funcs are declared).
   - `Field3dObjectTaskTemplate` / `MovementScriptCommand` structs → need the
     struct layout (find the typedef; if absent, reverse from the byte pattern +
     a using-function). 11+7 of these — the main effort.
2. **Verify per-symbol WITHOUT flipping**: after defining, `chiri build
   --target main --no-compare` (still on asm, ROM stays matched), then compare
   each symbol's bytes in `build/heartgold.us/src/overlay_02_02248728.o` vs
   `…/asm/…o` via `arm-none-eabi-objdump -s -j .rodata` (or nm offset + dump).
   When ALL rodata bytes match between the two .o's, the layout is correct.
3. **Layout / ordering**: MWCC may reorder separate const objects
   ([[static-const-tables-must-be-one-array-not-separate-objects]]). After all
   are defined, do the **address-sort** (Task #4): reorder every top-level
   definition (functions + rodata) in the .c by asm address. If MWCC preserves
   source order, address-sorted source → matching `.rodata`/`.text` layout. If
   the byte-compare in step 2 still mismatches on ordering, group the offending
   run into ONE array.
4. **Flip** `main.lsf:572` → `src/overlay_02_02248728.o`, `chiri pkg -- compare`
   (main.sha1 = ELF, rom.sha1 = ROM). Then convert `WIP_LOCAL`→`static` for
   file-local funcs (watch DCE on the asm functions — keep them referenced or
   non-static), re-verify.

## Tooling already built
- `tools/decomp_harness/transcribe_nonmatching.py` — function→inline-asm (done).
- A rodata transcriber should: read each symbol's `.byte`/`.word` from the .s,
  read its extern type from the .c, emit a typed initializer. The 45 pure-byte
  and 37 symref tables are mechanical; the 18 structs are the careful part.

## Key facts learned this session
- **Soft-float IS inline-asm-callable** with `extern void _fadd/_fsub/_fflt/_ffix(void);`
  — overturns old lore; this is how E828/EB48 were transcribed.
- 508B4's frozen void-vs-return cascade is solved by `asm void` (asm sets r0=1).
- Externs already added for the asm functions: `_s32_div_f`, `_fadd/_fsub/_fflt/
  _ffix`, `Field3dObject_SetXRotation`, `sub_020548C0`, `GF_DegreeToSinCosIdxNoWrap`,
  `Save_VarsFlags_CheckFlagInArray`, `ov02_022538EC`, `ov02_02253A4C`, + WIP_LOCAL
  fwd decls for AAD4/D5B4/DB9C/F108/D488/E828/EB48. (Camera_*/FieldSystem_GetSaveData
  /Field3dObject_SetActiveFlag are already visible via included headers.)
