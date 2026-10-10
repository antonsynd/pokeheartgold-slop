# overlay_85 part 05

26 of the 30 functions pass check.py (2000 trials; ov85_021E7D78 passes 1500 with 500 inconclusive, which the gate accepts).

Still failing:

- ov85_021E7E3C, ov85_021E7F74 and ov85_021E82F8: the same sandbox artifact as part 06. Each stores or memsets through `main + 0xB54`, `main + 0xBB8` or `main + 0xDC0` with a random main pointer (for example 0x237f954 + 0xB54 = 0x23804A8, 0x237ffa0 + 0xDC0 = 0x2380D60), which is inside the decomp's own image at 0x02380000. The decomp's literal pool is then zeroed (E3C and F74 pass 0 instead of the function address) or its code is overwritten (82F8 makes a different call count). In the game the main object is a heap allocation and never overlaps the overlay's code.
- ov85_021E815C: the state-1 path (Sprite_DeleteAndFreeResources(record->unk14), Heap_Free(record), SysTask_Destroy) reads a different sprite pointer on the two sides for the same record (original 0x30, decomp 0xea4c, trial 2). The record field is at 0x2370d3c, below the decomp image, so the cause is not clear from the asm. Given up after the table and heap fixes below.

Fixed on the way:

- `ov85_021EA528` is defined in the C with its ROM bytes `{ 0x5DD, 0x5DD, 0x5DD, 0x642 }` (the twin's 1603 is 0x643 in the ROM; the ROM is used). The `PlaySE` ids come from that table.
- ov85_021E81E0 allocates from HEAP_ID_102 (0x66). HEAP_ID_95 is 0x5F; the first attempt used it and failed on the return value.

Layout notes (main object, offsets from the asm):

- 0x30 `int` entry count; entries of 0xB0 bytes start at 0x2D0 (`unk00` active flag, `unk2C` and `unk50` VecFx32; y of `unk50` at 0x54).
- 0xD4: sub-object with `unk24` and `unk30` VecFx32 (ov85_021E8008 reads and writes their y fields at 0x28 and 0x34).
- 0xAB4: five 0x20-byte records (`unk00` active, `unk04` phase, `unk08` and `unk0C` counters, `unk10` and `unk14` fx32, `unk1C` entry pointer).
- 0xB54: five 0x14-byte records (`unk00` active, `unk04` phase, `unk0C` fx32, `unk10` entry pointer).
- 0xBB8: five 0x18-byte records (`unk00` active, `unk04` phase, `unk08` `unk0C` `unk10` fx32, `unk14` entry pointer).
- 0xC30: 0x14-byte block (`unk00` state, `unk04` done flag read by ov85_021E8144, `unk08` set flag read by ov85_021E8150, `unk0C` counter, `unk10` fx32).
- 0xC44: 8-byte block (`u16 unk00` state, `u16 unk02`, `int unk04`).
- 0xDB0, 0xDB4, 0xDB8, 0xDBC, 0xDC0: SysTask pointers of the tasks created here.
- ov85_021E81E0 builds a 0x34-byte ManagedSpriteTemplate on the stack (x 128, y 100, four resource ids 4 to 7, then -1, -1, vram type 2DMAIN).
- Where the asm zeroes memory with an inline loop (no call), the C uses a byte loop; where it calls memset, the C calls memset.
- ov85_021E7044, ov85_021E6DF0, ov85_021E6DFC and ov85_021E6E08 are declared locally from the asm (ov85_021E7044 returns ManagedSprite*).
- SysTask creators are SysTask_CreateOnMainQueue in every case; the twin's SaveData_Pokegear_Get renames are wrong here.

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C. These now have their verified C in another file, so their C here was not checked again:

- `ov85_021E7E3C`: `ghidra/overlay_85/ov85_021E7E3C.c`
- `ov85_021E7F74`: `ghidra/overlay_85/ov85_021E7F74.c`
- `ov85_021E815C`: `written/overlay_85/ov85_021E815C.c`
- `ov85_021E82F8`: `ghidra/overlay_85/ov85_021E82F8.c`
