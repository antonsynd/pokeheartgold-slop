#include "global.h"

extern u8 ov28_0225EA90[];

int abs(int x);

u8 ov28_0225E51C(u8 *ctx, int x, int y) {
    int dx;
    int dy;
    int v;

    if (*(s32 *)(ctx + 0x210) == 4) {
        dx = abs(*(s16 *)(ctx + 0x208) + 7 - x);
        dy = abs(*(s16 *)(ctx + 0x20a) + 7 - y);
        v = 0x10 - (dx + dy);
        if (v < 5) {
            v = 5;
        } else if (v > 0x10) {
            v = 0x10;
        }
        return v * 10 - 1;
    }
    return ov28_0225EA90[*(s32 *)(ctx + 0x210) * 2 + 1];
}
