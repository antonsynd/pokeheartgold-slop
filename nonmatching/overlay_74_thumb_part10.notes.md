# overlay_74_thumb, part 10

ov74_022310DC .. ov74_022313F0. Accessors for the module global returned by ov74_0223105C (the address of ov74_0223D0C4),
and the packet helpers used by the wireless code.

- `UnkOv74Global` only names the offsets these functions use: +0x04, +0x0C (u16), +0x14, +0x18, +0x20, +0x28, +0x30, +0x38, +0x3C,
  +0x40 (settings: two words), +0x78, +0x90 (0x1C4-byte block, cleared by ov74_02231164, u16 at +0x1C0 set to 0x118), +0x254
  (byte at +0x18 cleared by ov74_02231194).
- The two settings words (+0x40, +0x44) and the first two packet words share one layout: bits 0-7, 8-11, 12-15, 16-31. Bits 12-15 == 1
  switch the payload scrambling on (ov74_0223127C, a two-step LCG stream xor, multiplier 0x5D588B65, increment 0x269EC3).
- ov74_022312C0 builds a packet: word0/1 from the settings (word0 top = low half of ov74_02231264, word1 top = 0), word2 = a4 | a3 << 8 | crc16 << 16,
  word3 = ov74_02231260() | length << 8, payload copied at the offset in word3, then the scrambling.
- ov74_022311CC reads the whole word at +0x44 and shifts it; clang otherwise narrows this to a halfword load, which behaves
  differently on a misaligned pointer in the sandbox (it aligns word loads down), so the word is read into a local first.
- ov74_0223127C passes 179 of 500 trials; the rest are inconclusive because a random size makes both sides run out of budget.
