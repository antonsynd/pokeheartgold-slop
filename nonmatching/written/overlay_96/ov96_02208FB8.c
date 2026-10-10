#include "global.h"

u8 ov96_02208FF0(u32 *param_1, u32 *param_2);
u16 LCRandom(void);

u32 ov96_02208FB8(u8 *param_1)
{
    u32 callerR4;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");

    u32 arr[48];
    u32 out[48];
    u8 *p = param_1 + 0x190;
    u32 k;
    s32 n;
    s32 rem;
    u8 idx;

    for (k = 0; k < 48; k++) {
        arr[k] = (u32)p;
        p += 0x14;
    }
    n = ov96_02208FF0(arr, out);
    rem = (s32)LCRandom() % n;
    idx = (u8)rem;

    /*
     * The asm reads out[idx] from its own 0x180-byte frame with no bound: out has 48 words, and idx 48 and 49
     * are its saved r4 and lr; beyond that the read goes into the caller's frame, starting at the entry sp
     * (__builtin_frame_address(0) + 8 under the check's clang -O0 Thumb build).
     */
    if (idx < 48) {
        return out[idx];
    }
    if (idx == 48) {
        return callerR4;
    }
    if (idx == 49) {
        return (u32)__builtin_return_address(0);
    }
    return *(volatile u32 *)((u32)__builtin_frame_address(0) + 8 + ((u32)(idx - 50) << 2));
}
