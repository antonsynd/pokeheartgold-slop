# overlay_01_021FEA0C

All 14 functions pass.

- The callback table `ov01_022090FC` is declared extern. It lives in the asm file's .rodata and its address is passed to `ov01_021F1620`, so a copy defined in the C would fail the call-argument comparison. Its contents: size 0x24, then `ov01_021FEB3C`, `ov01_021FEB78`, `ov01_021FEB8C`, `ov01_021FEBC0`. The four callbacks are therefore non-static.
- `ov01_022090F0` (the 1.0 scale vector) is only read, so the C keeps its own copy.
- `ov01_021FEB3C`: the original copies the 20-byte work block as two `ldmia/stmia` pairs plus a final `ldr/str`, while clang copies it as 2+3 words. The two differ only when the source pointer is misaligned, which the sandbox produces from random call results and the game never does. The extra `work->data.mapObject = data->mapObject;` reproduces the original's last-word load.
- The header declares `ov01_021FEA0C`, `ov01_021FEA20`, `ov01_021FEAB0` and `ov01_021FEB30` with loose types (`void *`). `ov01_021FEB30` stores its second argument at offset 0xC of the work block returned by `sub_02068D74`.
- `ov01_021FEB78` has no meaningful return value: it returns whatever `ov01_021FEAA0` leaves in r0, so it is declared void.
