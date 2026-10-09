# overlay_41_02246B34, part 2

ov41_022475D4 .. ov41_022476E0. `UnkOv41App` is only the part of the app struct these functions touch: +0x40
BgConfig, +0x44, +0x48 (array start, address passed on), +0x180, +0x368 board (the UnkOv41Board of
src/overlay_41_02248400.c, kept opaque here), +0x4E0, +0x568 (object set, first argument of ov41_0224AA08 and
ov41_0224AB40), +0x6B0 (current page, 0 or 1). `UnkOv41FadeTask` (0x10 bytes) is the SysTask environment of
ov41_022476E0: app, pointer to a done flag, counter, state.

- ov41_022476A8 is a pure tail call (`add r0, #0x568; bx ov41_0224AB40`; ov41_0224AB40 returns nothing, so the C is void).
  ov41_022476B8 passes `ov41_022476E0` as a callback. Both failed with the tools as they were when this part was written
  (the sandbox did not follow a `bx` tail call, and a callback resolved to the placed copy); with the 20:18 update to
  check.py / arm_link.py all seven functions PASS.
- The struct built on the stack in ov41_0224765C is not compared by the gate (stack writes are ignored and the callee
  is stubbed); its field offsets were taken from the asm: +0x00 bgConfig, +0x04, +0x08 &app->unk_48, +0x0C argument,
  +0x10 = 10, +0x24 app->unk_180, the rest zero (0x28 bytes).
