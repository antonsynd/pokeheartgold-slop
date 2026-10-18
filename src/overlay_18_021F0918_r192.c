#include "global.h"

int ov18_021F61F8(void *a0, int value, const u16 *thresholds, u32 count) {
    u32 i;

    for (i = 0; i < count; i++) {
        if (value <= thresholds[i]) {
            break;
        }
    }
    return i + 14;
}
