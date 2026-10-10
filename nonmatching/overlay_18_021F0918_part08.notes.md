# overlay_18_021F0918, part 8

ov18_021F67D0 .. ov18_021F69E8 (Pokedex app, the "compare two mons" screen). include/application/pokedex/pokedex_internal.h
cannot be used here: it includes application/zukanlist/zkn_data/zukan_data.naix, which only exists after a build, so the
clang run of check.py stops with a missing-include error. The file declares a minimal `PokedexAppData` (args at +0x0,
bgConfig at +0x4, curSpecies at +0x18A2) and the prototypes it needs; the real struct in that header has the same offsets.

Findings:

- Byte 0x18C7 of PokedexAppData is declared `u8 unk_18C7_0 : 5; u8 unk_18C7_5 : 2; u8 unk_18C7_7 : 1;` in the header, but the asm
  reads bit 5 and bit 6 as two separate one-bit flags (ov18_021F684C toggles them), so this file reads the byte through a local
  bitfield `UnkOv18Flags { low:5, bit5:1, bit6:1, bit7:1 }`. The header should split unk_18C7_5 into two 1-bit fields.
- ov18_021F3CA8(app, idx, &form, &gender) writes the form number and the gender of the shown mon (not declared in the header).
- ov18_021F69E8 takes (app, species, form, gender, facing) with `facing` on the stack; species is compared with SPECIES_SPINDA
  (0x147) and the Spinda personality is looked up in that case. ov18_021FA338 (rect 0,0,10,10) and ov18_021FB5B4 (tilemap
  rect data) are rodata of the asm file and are referenced as extern.
- Stack arguments are not compared by check.py (only r0-r3 of each call); the stack arguments of ov18_021F1A7C
  (facing, sprite index, a3), ov18_021F1294 (flag), sub_02014510 and BG_LoadCharTilesData were taken from the asm by hand.
- ov18_021F6844 is a pure tail call to ov18_021F5FFC; it passes with the 20:18 tools (it failed with the earlier ones).

Still FAIL in the gate, and why:

- ov18_021F684C: for a1 other than 1 or 2 the asm leaves the x/y arguments of ov18_021F1294 unassigned (it passes the caller's r7
  and an uninitialised stack word), which C cannot reproduce; the game only calls it with 1 or 2. The gate draws other values and
  reports a call difference (r7 = 0x40000007 in the original). `form` and `gender` are also read from the out-parameters of the
  stubbed ov18_021F3CA8, i.e. uninitialised stack words, whose addresses differ between clang's frame and the original's.
  In a private copy of the checker with a1 forced to 1 or 2 and uninitialised stack reads fixed at zero: PASS 500 trials agree.
- ov18_021F69E8 reads `template.narcID` / `charDataID` after the stubbed GetMonSpriteCharAndPlttNarcIdsEx fills it, so it also
  reads uninitialised stack words; clang puts `template` 16 bytes lower than the original (the original has no spilled arguments).
  In a private copy of the checker with uninitialised stack reads fixed at zero: PASS 500 trials agree.

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C. These now have their verified C in another file, so their C here was not checked again:

- `ov18_021F684C`: `written/overlay_18_021F0918/ov18_021F684C.c`
