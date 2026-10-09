# overlay_49_022595CC part 02

Passing: ov49_0225A04C, ov49_0225A064, ov49_0225A06C, ov49_0225A084, ov49_0225A10C, ov49_0225A120.

Not provable with the sandbox (C is complete and believed correct): ov49_0225A08C, ov49_0225A09C, ov49_0225A0AC, ov49_0225A0BC, ov49_0225A0CC, ov49_0225A0DC, ov49_0225A0EC, ov49_0225A0FC, ov49_0225A134, ov49_0225A144.

Each of these is a tail call: the asm adds a constant to r0 and ends in `ldr r3, =callee; bx r3`. The lifter treats `bl` as a recorded call but a `bx r3` to an address outside the function as a jump out of the unit, so the original side stops with "returned=0, calls=0" at the jump while the C (which uses `bl` and returns) finishes: the check reports "only one side returned" on every trial. Nothing in the C can change that without inline asm, which is not C.

What each one does (the offset is the sub-object inside the 0x338+ byte context):
- A08C -> ov49_0225AB44(ctx + 0x2F8, a1)
- A09C -> ov49_0225ABA4(ctx + 0x2F8, a1)
- A0AC -> ov49_0225AC5C(ctx + 0x2F8), returns its BOOL
- A0BC -> ov49_0225AC08(ctx + 0x2F8)
- A0CC -> ov49_0225AC24(ctx + 0x2F8)
- A0DC -> ov49_0225AC4C(ctx + 0x2F8), returns its BOOL
- A0EC -> ov49_0225AC74(ctx + 0x2F8)
- A0FC -> ov49_0225ACC4(ctx + 0x318, a1)
- A134 -> ov49_0225AEE0(ctx + 0x338)
- A144 -> ov49_0225AEF8(ctx + 0x338, a1, a2)

Context layout used: u8 array of 0x14 at 0xC, u8 array of 0x14 at 0x20 (both indexed with an assert `index < 0x14`), three sub-objects at 0x2F8, 0x318 and 0x338.
