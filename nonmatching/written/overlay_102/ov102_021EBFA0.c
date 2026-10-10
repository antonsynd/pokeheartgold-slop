#include "global.h"

extern void ov102_021EC090(u8 *ctx, int n);
extern u32 ov102_021E8FD8(void *a);
extern void ov102_021EC13C(u8 *ctx, int row, u8 pos);
extern void CopyWindowPixelsToVram_TextMode(void *window);
extern void ov102_021EC298(void *a, void *b, int c, int d, int e, int f);

void ov102_021EBFA0(u8 *ctx, int n) {
    int twoN, newRow, rowStep, count, start, i;
    u8 newPos, pos;

    ov102_021EC090(ctx, n);
    twoN = n * 2;
    start = *(int *)(ctx + 0x90);
    newRow = start + twoN;
    rowStep = n * 0x18;
    newPos = (u8)(*(int *)(ctx + 0x8c) + rowStep);
    if (n < 0) {
        pos = newPos;
        twoN = -twoN;
        start = newRow;
        count = twoN;
    } else {
        pos = (u8)(*(int *)(ctx + 0x8c) + 0x78);
        start += 10;
        count = twoN;
        if ((u32)(twoN + start) > ov102_021E8FD8(*(void **)(ctx + 4))) {
            count--;
        }
    }
    for (i = 0; i < count; i++) {
        ov102_021EC13C(ctx, start + i, pos);
        if (i & 1) {
            pos += 0x18;
        }
    }
    *(u32 *)(ctx + 0x8c) = newPos;
    *(int *)(ctx + 0x90) = newRow;
    CopyWindowPixelsToVram_TextMode(ctx + 0x10);
    ov102_021EC298(ctx + 0x60, *(void **)(ctx + 0xc), 2, 1, rowStep, twoN);
}
