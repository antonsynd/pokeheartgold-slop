#include "global.h"

extern void ov120_0225F1E8(void *a, u32 n);

void ov120_0225F120(u8 *p, u8 a1, u32 a2, u8 a3) {
    *(u32 *)p = a2;
    p[0x10F] = a3;
    p[0x10D] = a1;
    p[0x10C] = 0;
    p[0x10E] = 0;
    p[0x110] = 1;
    ov120_0225F1E8(p + 4, 0x30);
}
