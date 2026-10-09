# overlay_45_thumb part 04

- ov45_0222AD80, ov45_0222AD90 and ov45_0222ADA8 are tail-call thunks (`r0 += 0x20C`, then `bx r3` to ov45_0222C4E4, ov45_0222C4FC and ov45_0222C5B4). They failed check.py with "only one side returned" before the gate learned to follow tail jumps and pass with the current tools. The C is `return callee(&a0->unk20C, a1)`.
- ov45_0222AED8 passes its second argument (r1, never touched by the asm) as the second argument of ov45_0222BE00 on the path that ends in ov45_0222EF4C(2, ...), so it is declared with two parameters; the callee stores r1 into +0x20 of the 0x1C0 structure.
- ov45_0222AE44 and ov45_0222AE54 send four uninitialised stack bytes (`ov45_0222EEF0(6 or 7, sp, 4)`); the argument is a dummy local, only its address matters to the gate.
- ov45_0222ADA0 returns the constant 0x4B0 (probably the size of the whole work struct, which this part does not define).
- Layout facts used: the work struct has a 0x4C-byte state block at +0x1C0 (+4 command id u16, +6 state u8, +7 flag u8, +8 u16, +0xA mode u8, +0xB u8, +0xC byte array of 0x14, +0x20 and +0x22 the 4-byte command buffer sent by ov45_0222EF4C, +0x24 and +0x26 counters) and a 9 by 3 table block at +0x20C that the ov45_0222C4xx to C6xx functions index.
