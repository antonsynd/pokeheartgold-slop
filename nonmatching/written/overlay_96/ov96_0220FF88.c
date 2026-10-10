#include "global.h"

u32 ov96_0220FF68(u32 value);
u32 MTRandom(void);
void ov96_0220FB98(void *entry, u32 sel, u32 index, void *base);

void ov96_0220FF88(u8 *param_1, u32 param_2)
{
    u32 r4 = 1;
    u32 v = ov96_0220FF68(param_2);
    u32 w = (*(u32 *)(param_1 + 0x1c) & 0xFFFFF0FFu) | ((v & 0xf) << 8);
    u32 m;
    u32 r1;
    u32 i;

    *(u32 *)(param_1 + 0x1c) = w;
    m = (w >> 8) & 0xf;
    if (m <= 3) {
        if (m == 0 || m == 2) {
            w = (w & ~0xffu) | 0x1e;
        } else {
            w = w & ~0xffu;
        }
        *(u32 *)(param_1 + 0x1c) = w;
    }

    m = (*(u32 *)(param_1 + 0x1c) >> 8) & 0xf;
    if (m >= 3) {
        r1 = ((MTRandom() & 1) + 1) << 2;
    } else {
        r1 = 4;
    }

    if (((*(u32 *)(param_1 + 0x1c) >> 8) & 0xf) != 0) {
        r4 = 2;
    }
    for (i = 0; i < r4; i++) {
        u32 flags = *(u32 *)(param_1 + 8 + 12 * i);

        if (((flags >> 5) & 1) == 0) {
            ov96_0220FB98(param_1 + 4 + 12 * i, r1, (u8)i, param_1 + 4);
            return;
        }
    }
}
