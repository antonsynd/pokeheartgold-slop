# overlay_45_thumb part 8 (ov45_0222C8C8 .. ov45_0222CD90)

All 30 functions PASS (2000 of 2000 trials each); 29 were seeded by Platinum twins (overlay066 ov66_0222DDF0.c and ov66_02230C44.c), ov45_0222CD90 (the plaza app manager's per-frame run) had none and was written from the asm.

- twin.py's renames in ov45_0222CA10 are wrong for HeartGold: the asm calls `WallpaperPasswordBank_GetCount` and `WallpaperPasswordBank_GetWordAtIndex` (declared in easy_chat.h), not the EasyChat message-bank functions.
- Work structs recovered (local, named after their first function):
  - C8C8/C900: nine u8 weights at +0, 20 u8 "used" flags at +0xC (C8C8 halves the weight of group `a1 / 3` once per flag; C900 draws a group by weight with MTRandom and returns group * 3).
  - C944/C95C: 20 u8 flags. C978/C994/C9A0/C9D0/C9EC: 20 flag bytes at +0, 20 four-word entries (8 bytes each, filled by CA10 from the bank) at +0x14, the WallpaperPasswordBank pointer at +0xB4, size 0xB8 (cleared with MI_CpuClear8).
  - CA7C..CB40: a timer with active flag +0, an s64 start time at +4 (only word aligned, so the struct is under `#pragma pack(push, 4)`), frame counter +0xC, frame total +0x10, state +0x14, state timer +0x18. CAA0 reads the clock through ov45_0222ECB8(&s64), raises the counter to `elapsed * 30` if it is behind, maps `counter * 256 / total` through the table `_02254A28` (five {state, weight} u16 pairs, defined here) and after the total is reached waits 120 frames in state 5 before going idle.
  - CB44..CCDC: a ring of 13 s32 ids at +0, 13 u8 values at +0x34, read index +0x41, write index +0x42, SaveData * at +0x44, a CRC16 of the first 0x44 bytes at +0x48 and a "CRC was bad" flag at +0x4A (CCB8 checks, CCA4 rewrites). The invalid id is -1 and the empty value is 24.
  - CCE4/CD04: the plaza's 16-entry trainer appearance table `ov45_02254A84` ({u16 graphicsID, u16 flag}), defined here and checked against the ROM; CCE4 maps a graphics id to its index (16 if absent), CD04 the reverse (0xFFFF if out of range).
  - CD1C/CD68/CD84/CD90: constructor, destructor, "enter state 5" and the per-frame run of UnkStruct_ov45_Manager (same 0x48-byte manager as parts 9 and 10). The two pointer arguments of CD1C land in +0x3C and +0x44; the fifth (heap id) comes from the stack.
