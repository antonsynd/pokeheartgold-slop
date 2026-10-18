#include "global.h"

typedef struct LineFx32 {
    fx32 slope;
    fx32 intercept;
} LineFx32;

LineFx32 sub_02020EF4(s32 x0, s32 y0, s32 x1, s32 y1) {
    LineFx32 line;
    s16 dy = y1 - y0;
    s16 dx = x1 - x0;

    if (dx != 0) {
        line.slope = FX_Div(dy << FX32_SHIFT, dx << FX32_SHIFT);
    } else {
        line.slope = FX32_CONST(255);
    }
    line.intercept = (y0 << FX32_SHIFT) - FX_Mul(line.slope, x0 << FX32_SHIFT);
    return line;
}
