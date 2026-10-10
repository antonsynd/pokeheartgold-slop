#include "global.h"

extern const u8 ov80_0223DBE0[];

extern void ov80_0223AE14(void *window, int x, int y, int top, int bottom, int p5, int p6, int p7, int p8, int p9);
extern int ov80_0223AE6C(void *window);

BOOL ov80_0223B1D4(u8 *param0) {
    int x;
    int top;
    int v3;
    int v4;

    if (param0[0x18d] == 0) {
        return 1;
    }

    if (param0[0x184] < 0x60) {
        s8 timer = (s8)param0[0x18b];
        timer = timer - 1;
        param0[0x18b] = timer;

        if ((s8)param0[0x18b] <= 0) {
            param0[0x18b] = param0[0x18a];

            x = 8 + param0[0x185] * 16;
            top = ov80_0223DBE0[param0[0x187] * 6 + param0[0x186]] * 32;
            ov80_0223AE14(*(void **)(param0 + 4 + param0[0x184] * 4), x, x, top, top + 0x20, param0[0x189], *(int *)param0, 0x10, 0x20, param0[0x18c]);

            x = 8 + (7 - param0[0x185]) * 16;
            top = ov80_0223DBE0[(param0[0x187] ^ 1) * 6 + param0[0x186]] * 32;
            ov80_0223AE14(*(void **)(param0 + 4 + (param0[0x184] + 1) * 4), x, x, top, top + 0x20, param0[0x189], *(int *)param0, 0x10, 0x20, param0[0x18c]);

            x = 8 + (param0[0x185] + 8) * 16;
            top = ov80_0223DBE0[param0[0x187] * 6 + param0[0x186]] * 32;
            ov80_0223AE14(*(void **)(param0 + 4 + (param0[0x184] + 2) * 4), x, x, top, top + 0x20, param0[0x189], *(int *)param0, 0x10, 0x20, param0[0x18c]);

            x = 8 + (0xf - param0[0x185]) * 16;
            top = ov80_0223DBE0[(param0[0x187] ^ 1) * 6 + param0[0x186]] * 32;
            ov80_0223AE14(*(void **)(param0 + 4 + (param0[0x184] + 3) * 4), x, x, top, top + 0x20, param0[0x189], *(int *)param0, 0x10, 0x20, param0[0x18c]);

            param0[0x184] = param0[0x184] + 4;
            param0[0x186] = param0[0x186] + 1;

            if (param0[0x186] % 6 == 0) {
                param0[0x187] = param0[0x187] ^ 1;
                param0[0x185] = param0[0x185] + 1;
                param0[0x186] = 0;
            }
        }
    }

    for (v3 = param0[0x188]; v3 < param0[0x184]; v3++) {
        v4 = ov80_0223AE6C(*(void **)(param0 + 4 + v3 * 4));
        if (v4 == 1) {
            param0[0x188] = param0[0x188] + 1;
        }
    }

    if (param0[0x188] >= 0x60 && v4 == 1) {
        param0[0x18d] = 0;
        return 1;
    }
    return 0;
}
