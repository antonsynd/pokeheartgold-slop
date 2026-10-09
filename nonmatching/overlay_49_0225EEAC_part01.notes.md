# overlay_49_0225EEAC part 01

All 30 functions (ov49_0225EEAC to ov49_0225F260) are translations of Platinum twins (ov70_02262DA8.c and ov70_022630A4.c); the asm matched the twin's shape in every case.
28 pass check.py (2000 trials each). Two fail only on an input the game never gives them:

- ov49_0225F098: the `switch (a2)` has no valid case for a2 > 1. The asm calls GF_AssertFail and then goes on with `r4`, which was never assigned in this function (the caller's r4), and calls through it if non-zero. The C reads an uninitialised local there, so the call count differs from the original's whenever the gate draws a2 > 1 (most trials). For a2 = 0 or 1 the C is the same as the asm.
- ov49_0225F224: the `switch (a0)` has cases 0 to 3 (PAD_KEY_UP, DOWN, LEFT, RIGHT, tested against `gSystem.heldKeys`). For a0 > 3 the asm falls to `tst r0, r1` with `r1` still holding the caller's second argument register; the C reads an uninitialised local. The gate draws a0 > 3 in most trials, and the return value differs on them. Callers pass 0 to 3 only (it is a direction index).

Layout used (all offsets confirmed against the asm):
- Manager (0x2FC bytes): `u32` heap id at 0x0, owner pointer at 0x4, 20 slots of 0x24 bytes at 0x8, one more slot at 0x2D8 (the "current" slot used when it has a callback table).
- Slot (0x24 bytes): `u16` heap id at 0x0, `u8` enabled at 0x2, `u8` index at 0x3, state at 0x4 and a saved state at 0x14.
- State (0x10 bytes): pointer to a callback pair at 0x0, `void *` data at 0x4 (heap allocation owned by the slot), `void *` at 0x8, `u32` counter at 0xC.
- Callback pair (8 bytes): two `BOOL (*)(Slot *, void *owner, u32 index)` at 0x0 and 0x4, run by ov49_0225F098 for mode 0 and mode 1.
- ov49_0225F260 walks a table of 0x18-byte entries `{u8 ids[8] (0xFF ends); int kind; callback pair; void (*enter)(...)}` until `kind == 3`; kind 0 frees the slot's data and switches to the entry's pair, kind 1 calls `enter` first and switches the saved state, kind 2 returns without doing either.
- The callee tables ov49_02269B78 and ov49_02269BE0 (callback pairs) are declared extern; they belong to the data part of the file.
- ov49_0225A02C returns the slot index loaded with `ldrb`; it is declared `u32` here because the asm does not re-extend the returned value.
