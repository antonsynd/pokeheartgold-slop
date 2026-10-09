# overlay_114

- Both functions are one-frame state machines of the same field transition (work->unk_00 is the state, 0 to 7). The work struct argument has the state at +0x00, a done flag written by `ov01_021EFCF8` at +0x04, the heap block at +0x0C, a `FieldSystem *` at +0x10 (its `unk4->hBlankSystem` is stopped and restarted), an optional `int *` finished flag at +0x14 and a resource pointer at +0x20. `src/overlay_118.c` uses the same layout.
- The first function allocates 0x1A4 bytes: a counter (0x14 bytes), a tween (0x18), a renderer (`ov01_021F05C4`, 0x13C) and one sprite at +0x19C. The second allocates 0x1B0 bytes: a renderer, four sprites at +0x170 and two tweens at +0x180 and +0x198.
- `ov01_021F074C` returns a `VecFx32` by value (hidden result pointer in r0).
- The `ov01_*` helpers have no shared header, so they are declared locally with the prototypes the asm implies.
