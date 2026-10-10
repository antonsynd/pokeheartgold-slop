#include "global.h"

s64 _ll_mul(s64 a, s64 b);

#define FX_MUL(a, b) ((s32)((u32)((u64)(_ll_mul((s64)(s32)(a), (s64)(s32)(b)) + 0x800) >> 12)))

s32 sub_02025C98(void *param_1, void *param_2, void *param_3)
{
    u8 *cell = (u8 *)param_1;
    u8 *coords = (u8 *)param_2;
    u8 *view = (u8 *)param_3;
    u16 flags;
    s32 radius;
    s32 hasBoundingRect;
    s32 originX;
    s32 originY;
    s32 a;
    s32 b;
    s32 c;
    s32 d;
    s32 yLo;
    s32 yHi;
    s32 xLo;
    s32 xHi;
    s32 yMinusRadiusOrMax;
    s32 yRadiusOrMin;
    s32 xMaxOrMinusRadius;
    s32 xRadiusOrMin;

    flags = *(u16 *)(cell + 2);
    radius = (flags & 0x3f) << 2;
    hasBoundingRect = (flags >> 11) & 1;

    originX = *(s32 *)(coords + 0x10) - *(s32 *)(view + 0);
    originY = *(s32 *)(coords + 0x14) - *(s32 *)(view + 4);

    if (hasBoundingRect == 1) {
        yMinusRadiusOrMax = (s32)*(s16 *)(cell + 14) << 12;
        yRadiusOrMin = (s32)*(s16 *)(cell + 10) << 12;
        xMaxOrMinusRadius = (s32)*(s16 *)(cell + 12) << 12;
        xRadiusOrMin = (s32)*(s16 *)(cell + 8) << 12;
    } else {
        yMinusRadiusOrMax = -radius << 12;
        yRadiusOrMin = radius << 12;
        xMaxOrMinusRadius = -radius << 12;
        xRadiusOrMin = radius << 12;
    }

    a = FX_MUL(yMinusRadiusOrMax, *(s32 *)(coords + 0x4));
    b = FX_MUL(yMinusRadiusOrMax, *(s32 *)(coords + 0xc));
    yLo = a + b + originY;

    c = FX_MUL(yRadiusOrMin, *(s32 *)(coords + 0x4));
    d = FX_MUL(yRadiusOrMin, *(s32 *)(coords + 0xc));
    yHi = c + d + originY;

    a = FX_MUL(xMaxOrMinusRadius, *(s32 *)(coords + 0x0));
    b = FX_MUL(xMaxOrMinusRadius, *(s32 *)(coords + 0x8));
    xLo = a + b + originX;

    c = FX_MUL(xRadiusOrMin, *(s32 *)(coords + 0x0));
    d = FX_MUL(xRadiusOrMin, *(s32 *)(coords + 0x8));
    xHi = c + d + originX;

    if (yHi < yLo) {
        s32 t = yLo;
        yLo = yHi;
        yHi = t;
    }
    if (xHi < xLo) {
        s32 t = xLo;
        xLo = xHi;
        xHi = t;
    }

    if (yHi > 0 && yLo < *(s32 *)(view + 0xc) && xHi > 0 && xLo < *(s32 *)(view + 8)) {
        return 1;
    }
    return 0;
}
