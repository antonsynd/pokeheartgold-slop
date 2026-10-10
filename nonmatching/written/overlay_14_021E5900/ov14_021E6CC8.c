#include "global.h"

void ov14_021E6B48(void *self, void *p);

void ov14_021E6CC8(void *self, u32 b, u32 c) {
    u32 *p = *(u32 **)(*(u8 **)((u8 *)self + 0x34) + 0xc);

    p[1] = b;
    p[2] = c;
    p[3] = 1;
    ov14_021E6B48(self, p);
    p[9] = c;
    p[10] = b;
    p[11] = 1;
    ov14_021E6B48(self, p + 8);
}
