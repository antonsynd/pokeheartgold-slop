#include "global.h"

void ov18_021F118C(void *app, int a1, int a2);
void ov18_021F11C0(void *app, int a1, int a2);

void ov18_021F39C4(void *app, s32 idx, u16 value) {
    u32 num;
    u32 divisor;
    u32 digit;
    u32 started;
    u32 i;

    if (value == 9999) {
        num = 0x18696;
    } else {
        num = ((u32)value * 0x35d2e + 50000) / 100000;
    }
    started = 0;
    divisor = 10000;
    for (i = 0; i < 5; i++) {
        digit = num / divisor;
        if (digit != 0 || started == 1) {
            started = 1;
            ov18_021F118C(app, idx + i, digit + 0x2b);
            ov18_021F11C0(app, idx + i, 1);
        } else {
            ov18_021F11C0(app, idx + i, 0);
        }
        num = num % divisor;
        divisor = divisor / 10;
        if (i == 2) {
            started = 1;
        }
    }
}
