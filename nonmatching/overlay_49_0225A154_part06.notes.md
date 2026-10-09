# overlay_49_0225A154 part 06

All 9 functions pass (ov49_0225C78C to ov49_0225CAD4), 2000 trials each. Eight of them follow Platinum's ov70 twins; the shapes match the asm, only the offsets differ.

- The sprite/resource context (ov49_0225C78C) has its 2D gfx resource managers at +0x130, +0x134, +0x138, +0x13C (Platinum: +0x194), and the touch panel state (ov49_0225C844 and on) has a Window at +0x0C, the hitbox controller at +0x1C, the screen buffers at +0x20 and the NNSG2dScreenData pointers at +0x2C.
- The rodata used only by this part is defined here under its asm name: ov49_022696EC, ov49_022696F0, ov49_022696F4 (TouchscreenHitbox), ov49_0226970C (WindowTemplate), ov49_02269764 (2 entries) and ov49_022699AC (24 entries). The entry is {u8, u8, u16, s16, s16}; ov49_0225C828 returns a pointer into one of the two tables.
- ov49_0225CB50 (the hitbox callback) and ov49_0225BB14 are in other parts and are declared extern; ov49_0225CAD4 is also called only from this part.
