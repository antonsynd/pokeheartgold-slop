# overlay_45_thumb part 06

All 30 functions of the part pass (ov45_0222BC3C to ov45_0222BF98), 2000 trials each. Platinum's ov66 twins fit 28 of them; ov45_0222BCB8 and ov45_0222BD24 got the wrong twin (the same `unk_02 = 1` body) and were written from the asm: ov45_0222BCB8 decrements a positive s16 counter, ov45_0222BD24 sets the byte at +2.

- ov45_0222BC3C and ov45_0222BC84 work on a small state block: byte 0 holds six bit fields (1, 1, 2, 1, 2, 1 bits, each cleared with its own read-modify-write), bytes 1 to 3 are 1, 7 and 11, the four halfwords at +4, +6, +8, +A are -1, and byte +0xD selects the volume (42 when it is 1, else 127, player 7).
- The 0x28-byte block that ov45_0222BD40 to ov45_0222BE94 work on is the state block at +0x1C0 of the overlay's work struct (part 04 calls it `unk1C0`): u32 bit mask at +0 (20 bits), u16 at +4, bytes at +6 and +A, a 20-byte counter array at +0xC, the 4-byte command buffer at +0x20/+0x22, a mode at +0x24 and a frame counter at +0x26 (capped at 900).
- The work struct fields these functions need: +4 a pointer passed to ov45_0222D940, ov45_0222D990 and ov45_0222D9EC, +0xE8 an array of four PlayerProfile pointers, +0x528 the heap id. ov45_0222A578 returns a pointer to the 0x94-byte profile record (declared as such here; part 04 declares it as `int`).
- The request record read by ov45_0222BE9C, ov45_0222BF18 and ov45_0222BF98: four u32 ids at +0, a count byte at +0x10, a byte at +0x12 and a byte at +0x13 that holds a 7-bit value in bits 0 to 6 and a flag in bit 7. The structs built on the stack for ov45_0222D940, ov45_0222D990 and ov45_0222D9EC were checked against the asm offsets by hand, because the gate does not look at the stack frame.
- ov45_0222BD30 is an inlined byte-clear loop in the asm (not a call to memset), written as a plain loop; ov45_0222BD40 tail-calls memset and is written as `memset`.
- ov45_0222BCE4 calls MIi_CpuCopyFast through the `MI_CpuCopyFast` inline wrapper and passes.
