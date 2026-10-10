#include "global.h"

BOOL ov96_021E7D18(u16 a, u16 b, u32 c);

#define RD16(base, off) (*(u16 *)((u8 *)(base) + (off)))

void ov96_021E7C04(u32 param0, u32 *param1, u8 *param2) {
    u32 *ptr;
    int i;
    u32 *dst;
    u32 tmp[8];
    int n;

    if (!ov96_021E7D18(RD16(param2, 0x80), RD16(param1, 0), param0)) {
        return;
    }
    dst = (u32 *)(param2 + 0x80);
    for (n = 0; n < 8; n++) {
        dst[n] = param1[n];
    }
    ptr = (u32 *)(param2 + 0x80);
    for (i = 4; i > 0; i--) {
        if (!ov96_021E7D18(RD16(ptr, -0x20), RD16(ptr, 0), param0)) {
            return;
        }
        for (n = 0; n < 8; n++) {
            tmp[n] = ptr[n - 8];
        }
        for (n = 0; n < 8; n++) {
            ptr[n - 8] = ptr[n];
        }
        for (n = 0; n < 8; n++) {
            ptr[n] = tmp[n];
        }
        ptr -= 8;
    }
}
