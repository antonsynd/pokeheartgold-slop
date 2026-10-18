#include "global.h"

void ov51_021E6CF0(const u8 *src, u8 *dst) {
    int i;

    for (i = 0; i < 0x3000; i++) {
        u8 row = (i / 8) % 8;
        u8 bit = i % 8;

        dst[i] = (src[(i / 64) * 8 + row] >> bit) & 1;
    }
}
