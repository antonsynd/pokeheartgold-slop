#include "global.h"

#include "pokewalker.h"

// The asm's u16[2] out-buffer is the stack slot that `push {r3, lr}` saved r3 into, so before
// sub_02032688 fills it, it holds the caller's r3, read here on entry.
BOOL ov112_021E9338(u8 *data) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u16 *vals = (u16 *)&slot;
    sub_02032688(*(POKEWALKER **)(data + 0x1E440), &vals[1], &vals[0]);
    if (vals[1] != 0) {
        return TRUE;
    }
    return FALSE;
}
