#include "global.h"
#include "bg_window.h"

void ov52_021E8F2C(Window *window, void *src, u32 srcX, u32 srcY, s32 srcWidth, s32 srcHeight, s32 destXArg, s32 destYArg, s32 destWidthArg, s32 destHeightArg)
{
    s32 delta;
    s32 destX = destXArg;
    s32 destY = destYArg;
    s32 destWidth = destWidthArg;
    s32 destHeight = destHeightArg;

    if (destX < 0) {
        delta = -destX;
        if (delta > destWidth) {
            delta = destWidth;
        }
        destX = 0;
        srcX += delta;
        srcWidth -= delta;
        destWidth -= delta;
    }
    if (destY < 0) {
        delta = -destY;
        if (delta > destHeight) {
            delta = destHeight;
        }
        destY = 0;
        srcY += delta;
        srcHeight -= delta;
        destHeight -= delta;
    }
    BlitBitmapRectToWindow(window, src, (u16)srcX, (u16)srcY, (u16)srcWidth, (u16)srcHeight, (u16)destX, (u16)destY, (u16)destWidth, (u16)destHeight);
}
