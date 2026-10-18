#include "global.h"

#include "math_util.h"

typedef struct Ov02Shake {
    u8 filler_00[8];
    s16 amplitudeX;
    s16 amplitudeY;
    u8 filler_0C[2];
    u16 repeats;
    u16 timer;
    u16 duration;
    fx32 speed;
    u8 filler_18[8];
    fx32 x;
    fx32 y;
    u8 filler_28[4];
    fx32 baseX;
    fx32 baseY;
} Ov02Shake;

BOOL ov02_0224663C(Ov02Shake *shake) {
    fx32 sin = GF_SinDegFX32(FX_Mul(shake->speed, FX32_CONST(shake->timer++)));

    shake->x = shake->baseX + FX_Mul(sin, shake->amplitudeX);
    shake->y = shake->baseY + FX_Mul(sin, shake->amplitudeY);
    if (shake->timer < shake->duration) {
        return FALSE;
    }
    shake->x = shake->baseX;
    shake->y = shake->baseY;
    shake->timer = 0;
    shake->repeats--;
    if (shake->repeats == 0) {
        return TRUE;
    }
    return FALSE;
}
