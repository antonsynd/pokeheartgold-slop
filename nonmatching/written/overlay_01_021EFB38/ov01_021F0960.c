#include "global.h"
#include "bg_window.h"

void ov01_021F0960(Window *window, s32 top, s32 bottom, s32 left, s32 right, u8 color) {
    s32 t = top, b = bottom, l = left, r = right;
    if (r <= 0 || b <= 0 || l == r || t == b) {
        return;
    }
    if (l < 0) {
        l = 0;
    }
    if (r > 0x100) {
        r = 0x100;
    }
    if (t < 0) {
        t = 0;
    }
    if (b > 0x100) {
        b = 0x100;
    }
    FillWindowPixelRect(window, color, (u16)l, (u16)t, (u16)(r - l), (u16)(b - t));
}
