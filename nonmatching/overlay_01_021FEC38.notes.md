# overlay_01_021FEC38

Started from the unlinked attempt in src/field/overlay_01_021FEC38.c, which was correct except for the points below.

- ov01_021FED4C: the original is `mov r0, r1` then a tail jump (`bx r3`) to sub_020698D0. It returns void, so the unlinked attempt's BOOL was wrong. The C is `sub_020698D0(&work->unk0)`, which is equal by inspection (unk0 is at offset 0, so the argument is r1). check.py reports FAIL "only one side returned": the lifted original jumps out of the unit and never reaches the return address, while the compiled C calls and returns. This is a tail-call limit of the gate, not a difference in behaviour. A `musttail` form would make both sides unfinished, which only gives a vacuous "0 trials agree", so it was not used.
- ov01_02209110 (the 0x80 + four callbacks template in .rodata) is declared `extern const` instead of defined. ov01_021FECA0 passes its address to ov01_021F1620, and a second copy defined in the C would sit at a different address and fail the call comparison.
- The four callbacks (ov01_021FED14, 4C, 58, 80) are not `static`. With the template gone nothing references them, and clang drops unused static functions, so check.py could not find them.

## Status

With the current tools, every function these notes describe as failing or inconclusive passes the check.
`VERIFIED.tsv` gives the verdict of each, and the file that holds its verified C.
