#include "global.h"

extern const s16 FX_SinCosTable_[];
extern const u16 ov91_02261D3C[][4];

void ov91_022604A4(const VecFx32 *src, VecFx32 *dst, int col, int row) {
    MtxFx33 mtx;
    u16 angle;

    MTX_Identity33(&mtx);
    angle = ov91_02261D3C[row][col];
    MTX_RotY33(&mtx, FX_SinIdx(angle), FX_CosIdx(angle));
    MTX_Inverse33(&mtx, &mtx);
    MTX_MultVec33(src, &mtx, dst);
}
