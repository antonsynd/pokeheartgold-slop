#include "global.h"

typedef int (*Ov70Handler)(void *, void *, u32, u32);

extern Ov70Handler ov70_022466F8[];
extern void sub_02019934(void *a0);

int ov70_02242144(u8 *work) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u32 *)(work + 0x4C);
    Ov70Handler fn = ov70_022466F8[idx];
    int ret = fn(work, fn, idx << 2, callerR3);
    sub_02019934(*(void **)(work + 0x1C));
    return ret;
}
