# overlay_49_0225A154 part 03

31 functions of the part (ov49_0225AC5C to ov49_0225B284). 30 are in the C file; 29 pass with check.py at 2000 trials. ov49_0225AEA8 still fails (see below).

- ov49_0225AEA8 (count, heapID, value fill of a ListMenuItem array): the failure is at trial 1739 with 54440 entries. The first differing byte is 0x216d9f2, inside the item array, one byte of an element's `value`. Three variants fail the same way: `int` loop index, `u32` loop index, and the `value` store written through a `u8 *` pointer. The C and the asm do the same loop as far as I can read it, so the cause may be in the trial setup for that size rather than in the code, but I did not confirm it.
- The Platinum twin's rename map says Options_GetTextFrameDelay for ov49_0225ACC4. That is wrong for HeartGold: the call is AddTextPrinterParameterized (font 1, speed from the struct, callback NULL), as the asm shows.
- ov49_0225B148 has no Platinum twin. It is written from the asm (AddTextPrinterParameterizedWithColor with font 0, speed 0xFF, color 0x0001020F, then ScheduleWindowCopyToVram) and takes its holder as a plain Window *.
- Rodata defined here under its asm name: ov49_022696E8 (u8 table 0x14, 0x88, 0x00, 0x00) and ov49_022697AC (a ListMenuTemplate with count 2, maxShowed 2, item_X 8, cursorPal 1, fillValue 15, cursorShadowPal 2).
- Holder layouts used: text printer holder (Window at 0, printer id u32 at 0x10, speed u32 at 0x14, String at 0x18); list menu holder (ListMenuTemplate at 0, Window at 0x20, ListMenu at 0x30, items at 0x34, count u16 at 0x38, template count u16 at 0x3A, BOOL at 0x3C, sprite resources at 0x40, sprites at 0x50); the gfx argument has bgConfig at 0, SpriteList at 4 and GF_2DGfxResMan *resMan[4] at 0x130.
- ov45_0222D7CC, ov49_0225AAC8, ov49_0225AB14, ov49_0225AC38, ov49_0225B388 and ov49_0225B3A8 are in other parts; declared extern from how this part calls them.
