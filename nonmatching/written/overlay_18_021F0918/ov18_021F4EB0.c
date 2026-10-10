#include "global.h"

extern const s16 FX_SinCosTable_[];

static int RoundFx(s16 v) {
    float f = (float)v / 4096.0f;
    if (f > 0.0f) {
        return (int)(4096.0f * ((float)v / 4096.0f) + 0.5f);
    }
    return (int)(4096.0f * ((float)v / 4096.0f) - 0.5f);
}

void ov18_021F4EB0(s32 angle, s16 *x, s16 *y) {
    s32 idx = (angle >> 4) * 2;
    int sinV = RoundFx(FX_SinCosTable_[idx]);
    int cosV = RoundFx(FX_SinCosTable_[idx + 1]);

    *x = *x + (sinV * 0x38 >> 12);
    *y = *y + (cosV * 0x38 >> 12);
}
