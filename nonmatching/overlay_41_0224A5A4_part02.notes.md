# overlay_41_0224A5A4, part 2

ov41_0224AE78 .. ov41_0224B118. Seven of the eight came from Platinum twins (ov22_0225A8B4, A914, AA10, AA34, AAC0, AAF4, AB54); the asm differs from the twins in two places:

- ov41_0224AF8C is not Platinum's ov22_0225AF34 (a trivial BOOL function). It walks the twenty sprites of the dot row between the old count (+0x60) and the new one, playing animation 0 on the ones passed going up and animation 1 going down, then stores the new count.
- ov41_0224AFF8 loads the character resource with AddCharResObjFromOpenNarc, not a GfGfxLoader call.

`UnkOv41DotRow` (ov41_0224AED8/AF8C/AFD4): +0x00 four SpriteResource pointers, +0x10 twenty Sprite pointers, +0x60 current count.
`UnkOv41Counter` (ov41_0224B118): +0x00 four SpriteResource pointers, +0x10 two Sprite pointers, +0x18 Window, +0x1C value, +0x20 value*30, +0x2C pointer to `UnkOv41CounterShared` (+0x00 and +0x08 both set to value), +0x90 word set to 0. Only the fields touched here are named; the struct size is not known from this part.
The stack SimpleSpriteTemplate of ov41_0224AED8 and ov41_0224B118 never sets position.z (the asm does not either).
ov41_0224AD0C, ov41_0224AE24 (other parts) and ov41_0224B298 (overlay_41_0224B21C) are declared extern with the prototypes the asm implies.
ov41_0224AF8C has many inconclusive trials (large random counts), 614 agree.
