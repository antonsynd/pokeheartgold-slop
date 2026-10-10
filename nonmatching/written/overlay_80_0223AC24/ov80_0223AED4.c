#include "global.h"

extern void FillWindowPixelRect(void *window, u8 fillValue, u16 x, u16 y, u16 width, u16 height);

void ov80_0223AED4(void *window, s32 param1, s32 param2, s32 param3, s32 param4, u8 param5) {
    s32 x0 = param3;
    s32 x1 = param4;
    s32 y0 = param1;
    s32 y1 = param2;

    if (x1 <= 0 || y1 <= 0) {
        return;
    }
    if (x0 == x1 || y0 == y1) {
        return;
    }
    if (x0 < 0) {
        x0 = 0;
    }
    if (x1 > 256) {
        x1 = 256;
    }
    if (y0 < 0) {
        y0 = 0;
    }
    if (y1 > 256) {
        y1 = 256;
    }
    FillWindowPixelRect(window, param5, x0, y0, x1 - x0, y1 - y0);
}
