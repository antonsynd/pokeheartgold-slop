#include "global.h"

extern void ov112_021E9998(u8 *dst, const u8 *src, u32 value, int a, int b);
extern void ov112_021E98F8(u8 *dst, int x, int y);

void ov112_021E9A30(u8 *dst, const u8 *src, u32 value) {
    int y;
    int x;
    ov112_021E9998(dst, src, value, -8, -14);
    ov112_021E9998(dst + 0x300, src + 0x300, value, -22, -14);
    for (y = 0; y < 0x30; y++) {
        for (x = 0; x < 0x40; x++) {
            ov112_021E98F8(dst, x, y);
        }
    }
}
