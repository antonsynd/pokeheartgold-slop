# overlay_01_021FED9C

Same family as overlay_01_021FEC38 (identical manager and work layouts, different model and animation ids), so the types follow that file.

- ov01_021FEE9C: the original is `add r0, r1, #0` then a tail jump (`bx r3`) to sub_020698D0, so it is `sub_020698D0(&work->unk0)` (unk0 is at offset 0, so the argument is r1). check.py reported FAIL "only one side returned" for this tail call until the gate learned to follow tail jumps; with the current tools it passes.
- ov01_02209124 (the 0x80 + four callbacks template in .rodata) is declared `extern const` instead of defined. ov01_021FEE04 passes its address to ov01_021F1620, and a second copy defined in the C would sit at a different address and fail the call comparison.
- The four callbacks (ov01_021FEE64, 9C, A8, D0) are not `static`. With the template gone nothing references them, and clang drops unused static functions, so check.py could not find them.
- ov01_021FEE04 returns the result of ov01_021F1620 (`bl` then `pop {pc}` with r0 untouched), which the header include/overlay_01_021F1348.h declares as `void`. It is declared `void *` here, as in src/overlay_01_021FE590.c. The header was not included for that reason.
- ov01_021FEE9C is the template's second slot, which other files type as a BOOL callback; it returns nothing here (sub_020698D0 is void), so the slot is typed `void` in the local template struct.
- Layout facts: manager is 0x3C bytes (unk0 owner, 0x14-byte model set at +4, 0x24-byte animation set at +0x18); work is 0x80 bytes (0x24-byte animation instance, NNSG3dRenderObj at +0x24, owner at +0x78, manager at +0x7C).

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C.
