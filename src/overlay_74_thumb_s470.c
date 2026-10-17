#include "global.h"

u16 ov74_022368A4(const u16 *data, u32 size) {
    u16 sum = 0;
    u16 i;

    for (i = 0; i < size / 2; i++) {
        sum += data[i];
        sum = (sum << 1) | (sum >> 15);
    }
    return sum;
}
