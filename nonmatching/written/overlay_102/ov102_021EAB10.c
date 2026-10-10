#include "global.h"

u32 ov102_021EAB10(u8 *a0, u8 *out, int idx) {
    u8 *p = a0 + idx * 4;
    u8 v;
    out[2] = *(s16 *)(p + 0x84) - 0x18;
    out[3] = out[2] + 0x60;
    out[0] = *(s16 *)(p + 0x86);
    v = out[0];
    out[1] = v + 0x10;
    return (u32)v + 0x10;
}
