#include "global.h"

typedef s32 (*UnkFn_ov14_021F7D9C)(void *arg, void *self, u32 offset, u32 callerR3);

extern UnkFn_ov14_021F7D9C ov14_021F7D9C[];

BOOL ov14_021EAF8C(void *arg, s32 *state) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    s32 index = *state;
    UnkFn_ov14_021F7D9C fn = ov14_021F7D9C[index];
    s32 next = fn(arg, (void *)fn, index << 2, callerR3);

    *state = next;
    if (next != 0xb3) {
        return TRUE;
    }
    return FALSE;
}
