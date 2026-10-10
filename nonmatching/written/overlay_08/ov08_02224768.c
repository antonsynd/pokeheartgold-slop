#include "global.h"

/* ov08_02225E9C: per-rect { x, y, width, height } bytes. */
extern u8 ov08_02225E9C[][4];

extern u16 *ov08_022245DC(void *a, int idx, int c);
extern int ov08_02224684(void *a, int idx, int c, u8 d);
extern void ov08_022246F4(void *a, u16 *dst, int idx, int c);

void ov08_02224768(void *a, u16 *dst, int idx, int c, u8 d) {
    u16 *src = ov08_022245DC(a, idx, c);
    u32 pal = (u32)(ov08_02224684(a, idx, c, d) << 28) >> 16;
    /* The asm re-reads width/height from the table every iteration.  The row pointer, the
       0xFFF mask and the final callee are kept in locals (not literal-pool loads) so a dst
       buffer that runs over the code image in the check sandbox cannot disturb them. */
    volatile u8 *rect = &ov08_02225E9C[idx][0];
    volatile u32 one = 1;
    u32 mask = (one << 12) - 1;
    void (*finish)(void *, u16 *, int, int) = ov08_022246F4;
    u16 i;
    for (i = 0; i < (int)(rect[3] * rect[2]); i++) {
        dst[i] = (src[i] & mask) | pal;
    }
    finish(a, dst, idx, c);
}
