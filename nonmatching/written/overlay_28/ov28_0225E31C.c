#include "global.h"

extern u8 ov28_0225EB84[];
extern u8 ov28_0225EA90[];

void ov28_0225E31C(u8 *ctx, s32 delta) {
    s16 *value = (s16 *)(ctx + 0x24e);

    if (delta < 0) {
        if (*value > 0) {
            *value = *value - 1;
        }
    } else {
        *value = *value + ov28_0225EB84[*(s32 *)(ctx + 0x210)] * delta;
        if (*value > ov28_0225EA90[*(s32 *)(ctx + 0x210) * 2]) {
            *value = ov28_0225EA90[*(s32 *)(ctx + 0x210) * 2];
        }
    }
}
