#include "global.h"
#include "bg_window.h"

// The original adjusts its fifth and sixth arguments in their caller-provided stack slots
// (srcW/srcH here) and keeps the others in registers.
void ov37_021E70BC(Window *window, void *src, int srcX, int srcY, int srcW, int srcH, int dstX, int dstY, int width, int height) {
    int dx = dstX;
    int dy = dstY;
    int w = width;
    int h = height;
    int shift;

    if (dx < 0) {
        shift = -dx;
        if (shift > w) {
            shift = w;
        }
        dx = 0;
        srcX += shift;
        srcW -= shift;
        w -= shift;
    }

    if (dy < 0) {
        shift = -dy;
        if (shift > h) {
            shift = h;
        }
        dy = 0;
        srcY += shift;
        srcH -= shift;
        h -= shift;
    }

    BlitBitmapRectToWindow(window, src, srcX, srcY, srcW, srcH, dx, dy, w, h);
}
