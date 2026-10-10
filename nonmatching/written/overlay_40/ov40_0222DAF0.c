#include "global.h"

// The original copies a 7-word table to its stack and indexes it with an unchecked byte.
// Entries 7..9 are the r3/r4/r5 it pushed first; beyond that is the caller's stack.
u32 ov40_0222DAF0(u32 *param0) {
    u32 callerR3, callerR4, callerR5;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);
    u32 table[10] = { 0x1642, 0x357f, 0x3def, 0x31f, 0xbc, 0x131, 0x23f, callerR3, callerR4, callerR5 };
    u32 i;
    if (param0[0] != 0) {
        return 0x7e05;
    }
    i = ((u8 *)param0)[0x5c];
    if (i < 10) {
        return table[i];
    }
    return entrySp[i - 10];
}
