# overlay_45_thumb part 10

29 of the 30 functions PASS (2000 of 2000 trials each); ov45_0222D500 is INCONCLUSIVE and shows as FAIL in the ledger. 30 of 30 had a Platinum twin (ov66 slot callbacks and the ov66_02231428 time helpers) and all were rewritten from it.

## ov45_0222D500: the gate cannot run the original

The original does `ldmia r3!, {r2, r3}` (load the s64 `*seconds` into r2:r3, with the base register inside the register list). nug-recompile-nds reports "18 instructions, 2 left to the interpreter" for it, so the sandbox marks the original side unsupported on every trial: `INCONCLUSIVE 0 trials agree, 2000 inconclusive`. The C is equal by inspection: `RTC_ConvertSecondToDateTime(&date, &time, *seconds)` with r0 = the RTCDate at sp+0xC and r1 = the RTCTime at sp+0, then the three `strb` of time.hour, minute and second into bytes 0 to 2 of the destination. Needs the lifter to handle a Thumb `ldmia` whose base is in its list.

## Layout recovered

- The manager is the same `UnkStruct_ov45_Manager` as part 9 (13 slots of one pointer at +4, last-state byte +0x38, heapID u16 +0x3A, `unk_3C` the Wi-Fi club work +0x3C, saveData +0x40). Each slot's work struct is allocated by the create function and freed by the destroy one.
- Slots 7 and 8 start with a `UnkStruct_ov45_0222CEB0` (0x34 bytes, the four PlayerProfile pointers etc.); slot 7's work is 0x40 bytes (D20C in part 9), slot 8's is 0x3C bytes with `saveData` at +0x34 and two bytes at +0x38, +0x39 set to 0 and 1. Slots 3/4 (D354) have an 8-byte work (+0 `unk_3C`, +4 a 0/1 flag that the enter functions D3B0/D3C4 set), slots 9 to 12 a 12-byte work (saveData, `unk_3C`, a BOOL at +8: D41C/D428 pass 0/1 to D434, D44C/D484 store 0/1 directly).
- The overlay manager templates ov45_02254B04, B14, B24, B34, B44 and BA4 are defined here (their lone users are in this part); B54 to B94 are in part 9. Overlay ids are plain numbers (46, 89, 89, 93, 47, 92): `FS_OVERLAY_ID(OVY_n)` is `(u32)&SDK_OVERLAY_OVY_n_ID` in C, and the gate stops with `no address for SDK_OVERLAY_OVY_90_ID` (tried). For the same reason `HandleLoadOverlay(90, ...)` and `UnloadOverlayByID(90)` use the number (90 is the overlay the asm lists as OVY_90).
- Slots 7 and 8 load OVY_90 (HandleLoadOverlay type 2, OVY_LOAD_ASYNC) before starting their sub-application and unload it again in the update function; the Platinum twin does the same with overlay 114.
- The 4-byte time struct (hour, minute, second, one more byte) is copied as a whole word by D524/D594, so it is declared 4 bytes wide with an unknown fourth byte. D524 is a time-of-day addition (seconds/minutes/hours with carries, hours mod 24) and D594 a subtraction with borrows (hours wrap by 24 only); both use signed division by 60 or 24 on the byte values, as in the twin.
- ov45_0222D638 inserts (country, region, flag) into a 50-entry table of 4-byte records {u16 country; u8 region; u8 flag:4, valid:4}, rejecting country 0 and regions above LocationGmmDatRegionCountGetByCountryMsgNo(country) (unsigned compare, so the count is held in a u32); an existing identical record is overwritten only when the flag is not 1. D6B0/D6D4/D6FC read the country, region and flag of an entry, asserting index < 50 and valid == 1.
- The functions that clear a work struct with a run of `strb` (D354, D3D8, D44C, D484) are written with `memset(..., 0, sizeof)`: the gate does not count memset as a call, so it agrees with the inlined byte stores.

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C. These now have their verified C in another file, so their C here was not checked again:

- `ov45_0222D500`: `ghidra/overlay_45_thumb/ov45_0222D500.c`
