#include "global.h"

typedef s32 (*UnkFn_ov14_021F7D9C)(void *arg, void *self, u32 offset, u32 callerR3);

extern UnkFn_ov14_021F7D9C ov14_021F7D9C[];

s32 ov14_021EB1C0(u8 *self) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    if (*(u32 *)(*(u8 **)(self + 0x34) + 4) == 0) {
        s32 index = *(s32 *)(self + 0x30);
        UnkFn_ov14_021F7D9C fn = ov14_021F7D9C[index];

        return fn(self, (void *)fn, index << 2, callerR3);
    }
    return 5;
}
