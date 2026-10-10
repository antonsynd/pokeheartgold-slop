#include "global.h"

extern fx32 FX_Sqrt(fx32 x);

BOOL ov74_0222B950(int centerX, int centerY, f32 particleX, f32 particleY, f32 *outX, f32 *outY, f32 length, s16 minDistance) {
    f32 zeroX = 0;
    f32 zeroY = 0;
    f32 toCenterX;
    f32 toCenterY;
    f32 outVecX;
    f32 outVecY;
    f32 distSquared;
    f32 dist;

    toCenterX = centerX - particleX;
    toCenterY = centerY - particleY;
    outVecX = 0;
    outVecY = 0;

    distSquared = toCenterX * toCenterX + toCenterY * toCenterY;
    dist = FX_FX32_TO_F32(FX_Sqrt(FX_F32_TO_FX32(distSquared)));

    if (dist < length || minDistance > dist || dist == 0) {
        return FALSE;
    }

    outVecX = toCenterX * length / dist;
    outVecY = toCenterY * length / dist;
    *outX = outVecX + zeroX;
    *outY = outVecY + zeroY;
    return TRUE;
}
