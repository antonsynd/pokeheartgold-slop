#include "global.h"

typedef s32 (*UnkFn_ov18_021F516C)(void *app, void *self, u32 offset, u32 callerR3);

extern UnkFn_ov18_021F516C ov18_021FA588[];

s32 ov18_021F516C(u8 *app) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u16 *)(app + 8);
    UnkFn_ov18_021F516C fn = ov18_021FA588[idx];

    return fn(app, (void *)fn, idx << 2, callerR3);
}
