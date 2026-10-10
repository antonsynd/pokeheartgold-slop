#include "global.h"

typedef int (*Ov70Handler)(void *, void *, u32, u32);

extern Ov70Handler ov70_022464A8[];

int ov70_02239E68(u8 *work) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u32 *)(work + 0x2c);
    Ov70Handler fn = ov70_022464A8[idx];
    return fn(work, fn, idx << 2, callerR3);
}
