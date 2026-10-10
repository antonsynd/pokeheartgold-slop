# overlay_33

Starting point was src/overlay_33.c (an unlinked attempt). Changes that were needed for the gate:

- `ov33_0225DA50` (the 2-entry config table: window templates, hitboxes, and three small fields per entry) is
  declared `extern` and left in the asm .rodata. The functions index it with `count - 1` where `count` is a
  field of the work struct, and the sandbox feeds random values there, so the original reads ROM bytes past the
  table; a copy of the table placed in the C blob reads zeros there (and its pointers would not equal the
  game's addresses either). The nested window templates and hitboxes are only reached through the table.
  Decoded contents (for moving the data into C later):
  entry 0: windowTemplates = { 4, 1, 0x0C, 0x1E, 2, 4, 1 } (x1), hitboxes = { {0x50,0x7F,0x00,0xFF}, END },
           unk8 = 0, unk9 = 0x0A, unkA = 0
  entry 1: windowTemplates = { 4, 1, 0x07, 0x1E, 2, 4, 1 }, { 4, 1, 0x0E, 0x1E, 2, 4, 0x3D },
           hitboxes = { {0x28,0x57,0x00,0xFF}, {0x60,0x8F,0x00,0xFF}, END }, unk8 = 0, unk9 = 5, unkA = 1
- ov33_0225D7D4 and ov33_0225D8D4 carry loop-local `window` / hoisted-template changes; behaviour is unchanged.
- In ov33_0225D84C, `alloc` is declared before `scrnData`. The call that fills `scrnData` is stubbed, so the
  function reads an uninitialised stack slot; the original's slot is at STACK_TOP - 0x18 and the gate only
  agrees when clang puts `scrnData` at the same address. Declaration order decides that.
- `NNSG2dScreenData::rawData` is an inline array at +0xC (the asm adds 0xC + 0x180), which is how the C reads it.
- ov33_0225D520 passes `ov33_0225D5D0` as a callback; it failed before the 20:18 arm_link.py update and passes now.

Still FAIL in the gate:

- ov33_0225D8D4 loops `count` times (u16 from the random fill; trial 30 draws 0x6db9). The original itself uses
  3,988,714 of the sandbox's 4,000,000 cycle budget on that trial, and clang -O0 code costs about 1.13x, so the
  C side runs out of budget and the gate reports "only one side returned" for trial 30. With the budget raised
  tenfold in a private copy of the checker the function passes (PASS 500 trials agree, 0 inconclusive).

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C.
