#include "global.h"

extern u64 _u32_div_f(u32 a, u32 b);

s32 ov01_021F5A04(u32 tileIndex, s32 mapMatrixWidth, u32 mapMatrixWidthTiles) {
    u32 tileX = (u32)(_u32_div_f(tileIndex, mapMatrixWidthTiles) >> 32);
    u32 tileZ = (u32)_u32_div_f(tileIndex, mapMatrixWidthTiles);
    return (tileX >> 5) + (tileZ >> 5) * mapMatrixWidth;
}
