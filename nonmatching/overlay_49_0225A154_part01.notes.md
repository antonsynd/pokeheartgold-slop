# overlay_49_0225A154 part 01

All 30 functions of the part pass (ov49_0225A154 to ov49_0225A478), 500 trials with check.py and 2000 trials with an earlier private sandbox that treated tail calls as calls.

- Context layout used (offsets from the first argument): a pointer at 0x34 (its target is an ov45 object), sub-objects at 0x3C (BgConfig holder passed to the window code),
  0x184, 0x2DC (starts with a MessageFormat pointer), 0x338 (a list menu holder, 0x6C bytes), 0x3A4 (a 0x20 byte list menu template) and 0x3C4 (a window).
- Stack arguments (fifth and later) are not compared by check.py. They were checked against the asm by reading clang's output for ov49_0225A1A4, ov49_0225A204,
  ov49_0225A24C and ov49_0225A31C: the narrow ones are `u8` (A1A4 a4 to a6, A204 a4) and `u16` (A24C a4) as the asm reads them with `ldrb` / `ldrh`.
- Callees in this file (ov49_0225AF04 and onwards) belong to other parts of the file; their prototypes are declared here from how the asm uses them.
- ov49_0225B014 is called as `(obj, 0, 0)` by ov49_0225A2F8 and with the caller's r1/r2 passed through by ov49_0225A1E4, so it is declared with three parameters although its body reads only the first.
