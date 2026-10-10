#include "global.h"

/* i and j are plain ints: width and height are u8, so the original's u16 counters never wrap.
   The row pointers are hoisted to keep the compiled loop short (the check has a cycle budget). */
void ov08_02221BD0(u16 *buttonData, u16 *screenData, int xOffset, int yOffset, u8 width, u8 height) {
    int i;
    int j;
    u16 *src;
    u16 *dst;

    for (i = 0; i < height; i++) {
        src = screenData + xOffset + (yOffset + i) * 32;
        dst = buttonData + i * width;
        for (j = 0; j < width; j++) {
            dst[j] = src[j];
        }
    }
}
