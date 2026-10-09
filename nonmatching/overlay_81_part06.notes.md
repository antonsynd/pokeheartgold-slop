# overlay_81 part 6 (ov81_02242DAC .. ov81_022430E8)

29 of 30 functions pass, including the ten that are tail calls through `ldr r3, =X; bx r3`
(ov81_02242DCC, DD8, DFC, E08, EB8, F30, F48, F54, FB0, FBC); here the sandbox does record them as calls.

## Failing: ov81_02242EC4 (check.py limit, not a known difference)

It returns a VecFx32 by value (hidden pointer in r0) and copies 12 bytes twice from the pointer that
Sprite_GetMatrixPtr returns, with `ldmia`/`stmia` for the first 8 bytes and a plain `ldr` for the last 4.

- With the natural `VecFx32 ov81_02242EC4(data, dx, dy)` the report is "the return value differs": check.py
  compares r0, but an sret function leaves r0 unspecified (the original ends with the last loaded z, clang with
  something else).
- Written as `void f(VecFx32 *ret, data, dx, dy)` the return value is not compared, and the remaining failure is
  the sandbox's unaligned mock pointer: `ldmia` ignores the low address bits for the first two words, while the
  last `ldr` goes through the written-back base (still unaligned) and rotates. clang -O0 uses `ldr` for all three
  words, so the bytes of the copy differ in the unaligned trials. Masking the pointer to a multiple of 4 does not
  help either: the original rotates only the last word. Not expressible in plain C; the natural form is kept.

## Data and types

- ov81_022435A8 (18 WindowTemplates, 8 bytes each) stays in the asm .rodata and is declared extern, as its
  address is handed to AddWindow.
- Two sprite wrappers: UnkOv81_SpriteHolder has the Sprite * at +8 (ov81_02242DAC .. ov81_02242E14);
  UnkOv81_SpriteData (0x10 bytes, allocated by ov81_02242E50) has a u16 flag at +0, two ints at +4/+8 (the
  position it was created with) and the Sprite * at +0xC. Sprite positions are shifted by 12 and the sub-screen
  offset is (2 << 20).
- ov81_02243068 and ov81_022430B4 load the font id from a stack argument as a full word and pass it on unchanged,
  so the font id is a u32 here and AddTextPrinterParameterizedWithColor is declared locally with a u32 font id
  (text.h declares it with the u8 FontID, which makes clang truncate the argument).
- ov81_02243068 aligns the text: align 1 subtracts the string width from x, align 2 half of it.
- ov81_02242E50 clears the allocation with an inlined byte loop in the asm; memset gives the same bytes.
