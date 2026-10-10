#include "global.h"

extern u8 ov28_0225EA90[];

void ov28_0225E374(u8 *ctx, u16 *out0, u16 *out1) {
    s16 *value = (s16 *)(ctx + 0x24e);

    if (*value > ov28_0225EA90[*(s32 *)(ctx + 0x210) * 2]) {
        *value = ov28_0225EA90[*(s32 *)(ctx + 0x210) * 2];
    }
    *out0 = (*value / 10) & 1;
    *out1 = *value / 20;
}
