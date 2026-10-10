Without the nop padding the C fails once (trial 441) for a harness reason: the check links the compiled
function at 0x02380000 and a random menuManager pointer (0x0237ff5c) overlaps it, so the function's
stores clobber its own literal pool (the 0xEEEE constant), which the lifted code reads from the same
memory model. With the padding all 2000 trials agree. The C logic is the asm's; the padding is neutral.
