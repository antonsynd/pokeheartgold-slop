#include "global.h"
#include "math_util.h"

u8 ov96_021F30F8(u32 param0, u32 param1) {
    u32 group;
    u32 base;
    u32 range;
    u8 tmp;

    if (param0 == 0xf) {
        return 0;
    }
    if (param0 < 1) {
        group = 0;
    } else if (param0 < 6) {
        group = 1;
    } else if (param0 < 0xa) {
        group = 2;
    } else {
        group = 3;
    }
    if (param1 == 1) {
        base = 1;
        range = 5;
    } else if (param1 == 2) {
        base = 6;
        range = 4;
    } else {
        base = 0xa;
        range = 5;
    }
    if (param1 == group) {
        if (param0 < base) {
            GF_AssertFail();
        }
        tmp = (u8)((u8)(param0 - base + 1) + (int)((s32)LCRandom() % (int)(range - 1)));
        return (u8)((u8)(tmp % range) + base);
    }
    return (u8)(base + (int)((s32)LCRandom() % (int)range));
}
