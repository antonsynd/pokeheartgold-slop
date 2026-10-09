# overlay_39_thumb part 02

All 30 functions of the part pass (ov39_02227B1C to ov39_022280D4), 2000 trials each (ov39_0222801C had 745 inconclusive trials). Platinum's ov61 twins fit; the offsets were taken from the asm.

- The work struct has the save data pointer at +0, a callback at +4 with its argument at +8 (ov39_02227D50 calls `unk4(unk8, string)`), ten pointers at +0x154 to +0x178, a four-int status block at +0x17C (ov39_02227D44 hands out its address and returns its first word), counters at +0x3BC, +0x3E8 and +0x3EC, a message data pointer at +0x3F4, a MessageFormat at +0x3F8, a String at +0x3FC and the reply block at +0x400 (pointer at +0, callback at +0xC).
- The request returned by ov39_0222A2B4 is `{u16 id, u16 sub, payload...}`; the payload begins at +4. ov39_02227B5C dispatches on the id (20000/20001, 21000/21001, 22000/22001, 23000 to 23003) and stores the matching +0x154..+0x178 pointer in the reply block. The per-id "sub" check functions all reduce to `sub == 0`.
- Entry layout used by ov39_0222801C and ov39_022280D4: `{u32, u32 lo, u32 hi, item}` with the item at +0xC (0xE4 bytes: a 0x58-byte area at +0x80, the 64-bit stamp at +0xD8/+0xDC, a u16 CRC at +0xE0 that is recomputed when the stamp differs). List payloads start with a count and have 0xF0-byte entries here, 0xEC-byte entries (item at +0xC) in ov39_02227E8C and 0x22C-byte entries (item at +0x10) in ov39_02227F14.
- ov39_02227B24 passes the first two payload words as two separate u32 arguments (r1 and r2) to ov40_02244B70, not as one 64-bit value, so it is declared that way; ov39_02227FEC returns the same two words as a u64.
- `_0222AB80` (the OS heap handle set by ov39_02227DEC) is a bss variable defined here under its address name.
