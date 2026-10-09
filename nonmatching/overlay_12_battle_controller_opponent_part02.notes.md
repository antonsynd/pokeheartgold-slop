# overlay_12_battle_controller_opponent part 2 (ov12_022590A0 .. ov12_02259658)

- All 30 functions pass; all 30 started from Platinum twins (battle_io_command.c, the BtlIOCmd_* handlers). Sixteen are the same wrapper
  (`display_call(battleSystem, opponentData, message); ov12_02259928(opponentData);`), three take no message.
- The fork's OpponentData (include/battle/battle.h) is used as is. Offsets from the asm: +0x20 pokepic, +0x28 hpBar, +0x94 the command
  message (reached as &unk8C[8]; byte 0 of it is the command number handed to ov12_0226430C), +0x194 battler (unk194), +0x195
  battlerType, +0x196 boot state (0 = normal).
- ov12_02259358 passes with 766 of 2000 trials inconclusive (the random party size makes the original loop past the budget); the
  1234 conclusive trials all agree.
- ov12_022591F4 reads an update message with a nibble pair in byte 1 (party slot low, mimicked-move mask high) and the transform
  volatile bit 0x200000 at +0x1C; layout: +2 curHP, +4 status, +8 knocked-off items mask, +0xC held item, +0xE moves[4], +0x16 pp[4],
  +0x20 form, +0x24 ability, +0x28 updateStats, +0x2A updateForm.
- ov12_022592D0 simplifies the twin's dead `(battleType & MULTI) == 0` test: the call is made when the battle is multi or the battler
  type is not player slot 2.
- ov12_022593FC treats the template's fourth halfword (named `species` in PokepicTemplate) as the spinda spots argument of sub_02014540.
- The narc ids in ov12_02259514 are written as 7 and 8 (the battle background and object narcs); the fork has no constant for them.
