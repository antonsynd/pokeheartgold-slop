#include "global.h"

typedef BOOL (*ov95_021E6300_Fn)(void *, void *, u32, u32);

extern ov95_021E6300_Fn ov95_021E7810[];

BOOL ov95_021E6300(void *param0) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u32 *)((u8 *)param0 + 0x5c);
    ov95_021E6300_Fn fn = ov95_021E7810[idx];
    return fn(param0, (void *)fn, idx * 4, callerR3);
}
