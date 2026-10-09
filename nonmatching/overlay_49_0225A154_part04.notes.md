# overlay_49_0225A154 part 04

30 functions (ov49_0225B2C0 to ov49_0225B99C). 29 pass with check.py at 2000 trials. ov49_0225B518 (the state machine for the WiFi plaza screen) does not:

- It fails on trial 3 on the first call, `IsPaletteFadeFinished()` in states 2, 4, 7 and 10. The asm leaves the switch's jump offset in r0 at that call (0x40 in state 2); the C leaves something else there. The gate compares r0 at this call even though the callee takes no arguments, so no ordinary C form matches it. Not resolved.
- Offsets in this part follow the asm, not the Platinum twin: the object at +0x34 is the list pointer (v0), the sub-object passed as v1 is at +0x3C, the one passed as v2 is at +0x2DC, the one passed as "unk_37C" is at +0x318, the fx flag at +0x3D8 and the pointer at +0x3DC (the twin's +0x340/+0x37C/+0x43C/+0x440 are 0x64 larger).
- In state 5 (subcase 2) and state 8 (subcase 2) the asm keeps the offset passed to BBCC/B944 in a stack slot and adds 0x3C to it on each call of state 5 subcase 2. The C keeps that running offset in a local, as the asm does.
- The message-id table ov49_02269714 is {776, 777, 800, 766}. The Platinum twin's values (672, 673, 695, 662) are not what the ROM has.
- ov49_0225B444 writes 1 at +0x3D8; the twin says +0x43C.
