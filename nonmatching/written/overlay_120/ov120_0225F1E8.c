#include "global.h"
#include "math_util.h"

void ov120_0225F1E8(u16 *p, u32 n) {
    u32 i;
    u32 r;
    u16 tmp;
    GF_ASSERT(n < 0x80);
    for (i = 0; i < n; i++) {
        p[i] = i;
    }
    for (i = 0; i < n - 1; i++) {
        r = LCRandom() % n;
        tmp = p[i];
        p[i] = p[r];
        p[r] = tmp;
    }
    *(u32 *)((u8 *)p + 0x100) = 0;
    *(u32 *)((u8 *)p + 0x104) = n;
}
