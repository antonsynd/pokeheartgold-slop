#include "global.h"

u16 ov91_0225E1FC(void *param0, s32 param1) {
    u32 v0;
    s32 v1;

    v0 = (u32)(param1 - 0x2EE) % 50;
    v1 = ((s32)v0 * 0x638E) / 50;

    if (v1 > 0x31C7) {
        v1 = 0x31C7 - (v1 % 0x31C7);
    }

    return 0xE38 + v1;
}
