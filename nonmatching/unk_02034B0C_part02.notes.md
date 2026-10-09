# unk_02034B0C part 2 (sub_020353B8 .. sub_020358D0)

All 26 functions PASS (2000 of 2000 trials each). 25 had Platinum twins (unk_02033200.c, the wireless "comm server client"), but twin.py paired many of them by neighbour order only and the HeartGold asm differs from the matched Platinum function in several places, so most bodies were read from the asm; the twin gave the shape of sub_0203540C, sub_020355DC, sub_02035610, sub_02035724 and the thin wrappers.

## Layout recovered (local structs)

- `_021D4134` (bss, 0xC bytes, extern) is `{ u16 tgid; u16; u32; CommServerClient *client; }`. Almost every function tests `client` against NULL first.
- CommServerClient offsets used here: +0 a 0x54-byte block that sub_020358B8 overwrites; +0x114 eight 0xC0-byte WMBssDesc records (the user game info starts 0x50 into each: sub_02035798 returns record + 0x60, sub_020358D0 record + 0x58, sub_02035754 the record itself); +0xD14 eight 6-byte BSSIDs; +0xD44 eight u16 "slot in use" values; +0xD68 an 8-byte block (the EasyChat sentence copied by sub_02035838); +0xD78 and +0xD7C pointers (sub_02035784 and sub_02035878 return them; sub_02035854 copies a LinkBattleRuleset into the +0xD7C buffer); +0xD80 pointer and +0xD88 pointer to the 0x5C-byte beacon game info (byte +6 is a connection count); +0xD8C u16 channel, +0xD8E u16 (0xFFFF when unset), +0xD90 u8 last channel, +0xD91 u8 countdown (5 frames), +0xD92 u8 state (1, 2, 3; 3 is "in closed secret base" for sub_02035630) and the flag byte +0xD95: bit 0 error, bit 1 "check channel/limit" (sub_020356EC), bit 2 (sub_020356C0), bit 3 "advance tgid", bit 4 (sub_0203581C/sub_020357FC), bit 5 passed to sub_02033668.
- sub_02035784 ignores its argument and has no NULL check (it returns the +0xD78 pointer); sub_02035798 also indexes the client without a NULL check.
- sub_0203567C returns `sub_02033250() & 0xFFFE` (declared u32, not BOOL, so the gate compares the full mask).
- sub_02035724 asserts `a0 < 41` (the asm compares with 0x29) and divides the beacon period by 4 for types 9, 10 and 13.
- The header include/unk_02034B0C.h is included; every prototype in it agrees with the definitions here.
