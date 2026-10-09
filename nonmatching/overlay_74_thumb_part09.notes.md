# overlay_74_thumb, part 9

ov74_02230D18 .. ov74_022310D0. Platinum twins (main_menu/ov97_02232DC8.c and ov97_02233408.c) fit all 30 functions.

- ov74_0223105C returns ov74_0223D0C4 (the module global, 0x274 bytes); ov74_02231054 returns ov74_0223C920 (WMParentParam, channel u16 at +0x32).
- ov74_02231154/ov74_0223115C return the same block (+0x90 of the global) in two views: 8 peers of 0x38 bytes plus a nibble pair at +0x1C3
  (parent), or 8 entries of 0xC bytes plus a state byte at +0x60 (child, byte +0xA is the entry flag).
- ov74_02231184 returns the transfer block (+0x254 of the global): data pointers at +0/+4, size words at +0x10/+0x14, bytes +0x18..+0x1C.
- ov74_02230F40 and ov74_02230F6C are byte-identical.
