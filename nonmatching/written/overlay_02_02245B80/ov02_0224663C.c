#include "global.h"

typedef struct UnkStruct_ov02_0224663C {
    u8 filler_00[8];
    s16 amplitudeX;
    s16 amplitudeY;
    u8 filler_0C[2];
    u16 loopsLeft;
    u16 frame;
    u16 frameMax;
    s32 speed;
    u8 filler_18[8];
    s32 posX;
    s32 posY;
    u8 filler_28[4];
    s32 baseX;
    s32 baseY;
} UnkStruct_ov02_0224663C;

extern fx32 GF_SinDegFX32(fx32 deg);

BOOL ov02_0224663C(UnkStruct_ov02_0224663C *param0) {
    u16 previous;
    u16 current;
    int step;
    fx32 sinValue;
    fx32 angle;

    previous = param0->frame;
    param0->frame = previous + 1;
    current = param0->frame;

    if (previous == 0) {
        param0->frame++;
        step = (int)((float)(current << 12) - 0.5f);
    } else {
        param0->frame++;
        step = (int)(0.5f + (float)(current << 12));
    }

    angle = (fx32)((((s64)param0->speed * (s64)step) + 0x800) >> 12);
    sinValue = GF_SinDegFX32(angle);

    param0->posX = param0->baseX + (fx32)((((s64)sinValue * (s64)param0->amplitudeX) + 0x800) >> 12);
    param0->posY = param0->baseY + (fx32)((((s64)sinValue * (s64)param0->amplitudeY) + 0x800) >> 12);

    if (param0->frame < param0->frameMax) {
        return FALSE;
    }

    param0->posX = param0->baseX;
    param0->posY = param0->baseY;
    param0->frame = 0;
    param0->loopsLeft--;
    return param0->loopsLeft == 0;
}
