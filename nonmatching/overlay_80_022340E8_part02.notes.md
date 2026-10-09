# overlay_80_022340E8 part 2 (ov80_02234E98 .. ov80_02235364)

- All 25 functions pass; 25 started from Platinum twins (overlay104 battle_arcade.c, the Battle Arcade effects). They are HeartGold's
  effect table: ov80_0223DCB8 has 32 entries (the nine status/item/level effects twice, then weather, roulette speed, cursor, and four
  empty effects; the last entry repeats ov80_02235318), defined here and checked against the ROM.
- The twins' accessor names do not matter; the asm names are GetMonData/SetMonData/Party_GetMonByIndex. The fork's ArcadeContext
  (include/frontier/overlay_80_022340E8.h) is used with its own field names: type +0x10, randomFlag +0x12 (the twin's cursorRandomized),
  weather +0x14, winStreak +0x18, unk1A +0x1A (the current round), cursorSpeed +0x1C (roulette speed), unk1F +0x1F (immune to the
  effect), unk20 +0x20 (random index), playerParty +0x70, opponentParty +0x74. Weather values written: 1 rain, 1001 harsh sun, 7 sand,
  4 snow, 9 fog, 1002 trick room.
- ov80_02235324 returns u32 as the header says (the value is the bp, at most 20).
- ov80_0223DCA0 is the table of six item pools (berries for rounds 0-2, 3-5, 6+, then the other items for the same ranges) with 8, 20,
  10, 11, 13 and 11 entries; the pools (ov80_0223BEA8 ...) and the two bp tables ov80_0223C01C/C028 live in the overlay's rodata and
  are only declared. ov80_0223DCA0 is defined here and compared with the ROM.
- LowerHP uses double arithmetic (`maxHP * 1.2`); it compiles to the same ROM helpers the original calls.
