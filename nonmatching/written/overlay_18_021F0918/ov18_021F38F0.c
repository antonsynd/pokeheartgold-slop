#include "global.h"

void ov18_021F118C(void *app, int a1, int a2);
void ov18_021F11C0(void *app, int a1, int a2);

void ov18_021F38F0(void *app, s32 idx, u16 value) {
    u32 total;
    u32 hi;
    u32 lo;

    if (value == 999) {
        total = 0x4a4;
    } else {
        total = (u32)value * 10000 / 0xfe;
        total = (total + 5) / 10;
    }
    hi = total / 12;
    lo = total % 12;

    if (hi < 10) {
        ov18_021F11C0(app, idx, 0);
    } else {
        ov18_021F118C(app, idx, hi / 10 + 0x2b);
        ov18_021F11C0(app, idx, 1);
    }
    ov18_021F118C(app, idx + 1, hi % 10 + 0x2b);
    ov18_021F11C0(app, idx + 1, 1);
    ov18_021F118C(app, idx + 2, lo / 10 + 0x2b);
    ov18_021F11C0(app, idx + 2, 1);
    ov18_021F118C(app, idx + 3, lo % 10 + 0x2b);
    ov18_021F11C0(app, idx + 3, 1);
    ov18_021F11C0(app, idx + 4, 0);
}
