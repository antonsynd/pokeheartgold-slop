#include "global.h"

/* Copies a width x height block of u16 tilemap entries out of a 32-wide
   screen (starting at column x, row y) into a packed buffer. Written with
   pointer walks so the -O0 build stays within the check's cycle budget. */
void ov08_0222458C(u16 *dst, u16 *src, int x, int y, u8 width, u8 height) {
    u32 i;
    u32 j;
    u16 *s;
    for (i = 0; i < height; i++) {
        s = src + x + (y + i) * 32;
        for (j = width; j != 0; j--) {
            *dst++ = *s++;
        }
    }
}
