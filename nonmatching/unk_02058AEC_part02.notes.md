# unk_02058AEC part 02

All 30 functions pass check.py (2000 trials each).

Header findings (shared headers not edited):

- `include/unk_02058AEC.h` declares sub_0205A408, sub_0205A40C, sub_0205A410 and sub_0205A430 as `void f(void)`. The asm takes four arguments (the last two are the SysTask-style pointers, and sub_0205A410 and sub_0205A430 read the FieldSystem from r3), so this file does not include that header and defines them with the four-argument form.
- `include/unk_02037C94.h` declares sub_02037F64, sub_0203894C, sub_0203898C, sub_02038918 and sub_02038C1C with `s8` parameters. The asm passes the full `unk18` int to the first four, so sub_02059EBC calls them through an `int`-typed function pointer (same target, same argument). sub_02038C1C is given the constant 2 and is called directly.
- `struct UnkStruct_02059E1C` is defined here (it is only forward-declared in `script.h`): 0x190 bytes, with the callback at 0x10, the counter at 0x14, state at 0x1C, the connection index at 0x18, the WMBssDesc-like pointers at 0x110 and a 0x40-byte sub-struct at 0x150.
- The Platinum twins matched by name order were wrong for most of this part; the asm was used throughout. sub_02059E1C had no twin.
- `_021D41CC` is declared as a struct of { int unk0; ptr unk4; int unk8 } (the counter, the current profile pointer and a byte copy); `_021D41D8` as a `void *[16]` array.
