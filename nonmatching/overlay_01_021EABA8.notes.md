# overlay_01_021EABA8

No earlier C existed for this file.

- ov01_021EAC64 is `ldr r3, =Heap_Free; bx r3`, a tail call. check.py reports FAIL "only one side returned": the lifted original jumps out of the unit and never reaches the return address, while the compiled C calls and returns. The C `Heap_Free(state)` is equal by inspection. Tail-call stubs cannot pass this gate.
- ov01_02206478 (17 camera type entries of 0x24 bytes), ov01_02206464 (0x14-byte shift entries) and ov01_02209B60 (a u32 in .bss) are declared `extern` instead of defined. The asm indexes the tables with unchecked values (FieldCamera_Create keeps going after its assert, ov01_021EACBC and ov01_021EAC6C index by a caller-supplied type), so a copy defined in the C would be read at a different address and out of bounds. ov01_02209B60 is read and written, so it has to be the real global.
- ov01_02206464 has a single 0x14-byte entry in the asm .rodata, but the functions index it with `type - 1` for larger types as well, so it is probably an array of several entries whose later members are not in this dump. Left as an unsized extern array.
- FieldSystem offsets used: 0x24 is `camera`, 0x28 is `unk28`, a 0x34-byte FieldCameraState allocated here (defined locally as FieldCameraState).
- The u8 on ov01_021EAE50's fifth parameter comes from `ldrb` on the stack argument; its numerator (r3) is used as a full word.

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C.
