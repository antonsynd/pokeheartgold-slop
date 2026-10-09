# overlay_116

Camera and fade effect tasks (SysTask callbacks: `(task, work)`), a state machine in `work->unk0`.

## Status

- `ov116_0225F020`, `ov116_0225F054`, `ov116_0225F1BC`: PASS. Also passed 3,000,000 trials (see "Verification notes for the tool").
- `ov116_0225F364`, `ov116_0225F374`: check.py says FAIL on the file as it is, but only because of where the config table lives. Each is
  `r2 = &config; bx ov116_0225F1BC` (a tail call, which check.py now treats as a call). The original passes the ROM address of the table
  (`0x0225F384` / `0x0225F398`) and the C passes the address of its own copy of the table, which check.py cannot match. With the tables declared `extern`
  in a scratch copy (so they resolve to the ROM addresses) both pass 2000 of 2000 trials. The bytes of the tables in this file are identical to the ROM's.

## Findings

- `work` (`UnkStruct_ov116_Work`) has the same layout as `Work_overlay118` in src/overlay_118.c: state at 0x0, a flag filled in by
  `ov01_021EFCF8` at 0x4, a heap block at 0xC, the FieldSystem at 0x10 (`->camera` is at 0x24, as in field_system.h) and the completion flag pointer at 0x14.
- The heap block is 0x10 bytes in `ov116_0225F054` (index and timer for the 16-entry camera table) and 0x38 bytes in `ov116_0225F1BC`
  (handle, a tween at 0x8 for the perspective angle, a tween at 0x1C for the distance, a counter at 0x34).
- Rodata: `ov116_0225F3AC` is 16 entries of `{s32 distance; u16 angleX; u16 angleY; u16 perspective; u16 delay;}`. The asm label
  `ov116_0225F3B6` is the `delay` field of entry 0 (0x0225F3AC + 10). `_0225F384` and `ov116_0225F398` are 0x14 byte configs for `ov116_0225F1BC`.
  The compiled bytes of all three were compared with the ROM bytes and are identical.

## Verification notes for the tool

- Stack arguments (fifth and later) of calls are not compared by check.py, so the fade arguments `steps`, `framesPerStep`, `heapID` and the fifth
  argument of `ov01_021EFCF8` / `ov01_021EFEC8` were checked by reading the asm only.
- Pointers to data the C file defines (the tables) get the address of the C file's copy, so a call such as `ov116_0225F020(fieldSystem, &table[i])` differs
  from the original's ROM address as soon as a trial reaches it (it takes a few thousand trials; the default 500 do not). For the deep run the tables were
  replaced by `extern` declarations in a scratch copy (they then resolve to the ROM addresses) and 3,000,000 trials were run; the C file in this
  directory has the tables defined.
- Memory loads of pointers read from the random fill can be small and unaligned (ARM9 rotates an unaligned `ldr`). To agree on those, the C avoids
  reloading a field it just wrote (`--sub->unkC`, `++sub->unk8`) and avoids a narrowing `(u16)sub->unk8` load (it copies to an `int` first), as the asm does.
