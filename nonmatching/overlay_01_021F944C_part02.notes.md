# overlay_01_021F944C part 2

ov01_021F9A18 .. ov01_021F9E9C. The Platinum twins (overlay005/ov5_021ECE40.c) fit all 30 functions, with three differences: the empty marker of the
model and sprite slot arrays is 0xFF here (0xFFFF in the twin; only the third array, at +0x60, uses 0xFFFF), `ov01_021F98CC` takes the table
`ov01_022072CC` as a fifth argument, and the asserts are plain `GF_AssertFail` calls without arguments.

- `UnkStruct_Ov01_021F944C` is the same local view as in part 3. Three slot arrays hold free/used ids: +0x20 and +0x40 (8 entries each, 0xFF marks a free
  slot) and +0x60 (32 entries, 0xFFFF). Each array has two ranges inside it: the first `ov01_021FA20C` (+0x08) / `ov01_021FA21C` (+0x10) /
  `ov01_021FA22C` (+0x18) entries, and the next `ov01_021FA214` (+0x0C) / `ov01_021FA224` (+0x14) / `ov01_021FA234` (+0x1C) entries after them.
- ov01_021F9AAC (fill) and ov01_021F9AD0 (search) are hand-written assembly whose entry label carries no `; 0x...` address comment.
  They FAIL with the default symbol table although the C is right: `symbols.py` gives them the address of the previous function's end plus 2
  (`thumb_func_end` is counted as an instruction), so `ov01_021F9AAC` starts at 0x021F9AAE instead of 0x021F9AAC and `ov01_021F9AD0` at 0x021F9AD2
  instead of 0x021F9AD0. The first instruction (`stmia r0!, {r1}` / `ldr r3, [r0]`) is cut off and the loop's `bne` back to the entry is lifted as a call to
  an address outside the function window ("only one side returned", the original makes one call to itself). With a copy of symbols.json corrected for the
  two addresses (and the `end` of ov01_021F9A8C and ov01_021F9AB4), `check.py --symbols <copy>` prints PASS (482 and 1126 conclusive trials) for both.
- ov01_021F9BD4, ov01_021F9CF8 and ov01_021F9E30 print INCONCLUSIVE: they loop `do { ... } while (--count)` over a count that comes from an `int` getter
  (`ov01_021FA214`, `ov01_021FA224`, `ov01_021FA234`), and the harness answers calls with random 32-bit values, so the original never finishes within its budget.
  In a scratch copy of the file with those three getters declared `u8` (so the stub value is masked to 8 bits; the getters really return `int`) they PASS
  (218, 234 and 225 of 300 trials, the rest inconclusive).
- ov01_021F9AB4 and ov01_021F9AE4 have inconclusive trials for the same reason (a random count that is too large for the budget); the ones that finish agree.

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C. These now have their verified C in another file, so their C here was not checked again:

- `ov01_021F9AAC`: `ghidra/overlay_01_021F944C/ov01_021F9AAC.c`
- `ov01_021F9AD0`: `ghidra/overlay_01_021F944C/ov01_021F9AD0.c`
- `ov01_021F9BD4`: `ghidra/overlay_01_021F944C/ov01_021F9BD4.c`
- `ov01_021F9CF8`: `ghidra/overlay_01_021F944C/ov01_021F9CF8.c`
- `ov01_021F9E30`: `ghidra/overlay_01_021F944C/ov01_021F9E30.c`
