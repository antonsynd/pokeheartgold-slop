# overlay_41_0224B21C part 01

- ov41_0224B270 fails check.py on trial 523 ("memory differs" at a0+0x1e, arguments a0 = 0x2111934), with calls=0 on both sides. Three variants were tried (a local `int v` copy, the direct re-reads of `*a0->unk_2C`, and a reduced body without the B374/PlaySE branch, which fails on the call count as expected). The store to a0+0x1c is the asm's `str r2,[r0,#0x1c]` (only written when the value changes), and the C writes the same word. The difference is in one byte of that word, so the value read through the `unk_2C` pointer on trial 523 is the suspect. Not resolved.
- ov41_0224B780 passes with 519 of 2000 trials inconclusive (the gate's stubs for the sprite-accessory calls); 1481 agree.
- The Platinum twin (ov22_0225A428.c) is not reliable for this part: its ov41_0224B250 calls sub_02095C60, which the asm does not, and its ov41_0224B270 drops the ov41_0224B374 call.
- ov41_0224B958 is called by ov41_0224B938 but is not in this part's list; it is declared only.
