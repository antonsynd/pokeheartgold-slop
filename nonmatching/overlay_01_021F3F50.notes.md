# overlay_01_021F3F50

Started from the unlinked attempt in src/field/overlay_01_021F3F50.c. One function was wrong.

- ov01_021F4048 read the label message ids as `ov01_02206AE4[-1..2]`. The asm's .rodata splits at ov01_02206AE4, but the word just before it (the 0xD at 0x02206AE0, listed as the last word of ov01_02206AD8) is the first of four message ids {0xD, 0xE, 0xF, 0x10}. So ov01_02206AD8 holds two colour words only, and the label table is a separate array starting at 0x02206AE0. The C now has `ov01_02206AD8[2]` and `ov01_02206AE0[4]`.
