#include "global.h"

void sub_02032588(void *a, void *b, u32 c);

#define OUT16(p, idx) (*(u16 *)((u8 *)(p) + (idx) * 2))

void sub_02031DA0(u8 *param_1, u8 *param_2)
{
    u8 pair[5][2];
    u32 count;
    u32 i;
    u32 j;
    u32 k;
    u32 d;
    u32 val0;
    u32 val1;
    u32 val2;
    u32 val4;
    u8 tmpIdx;
    u8 tmpVal;

    MI_CpuFill8(param_2, 0, 0xe);
    MI_CpuFill8(pair, 0, 10);

    count = 0;
    for (i = 0; i < 5; i++) {
        u8 v = param_1[i + 3];
        pair[i][0] = (u8)i;
        pair[i][1] = v;
        if (v != 0) {
            count = (count + 1) & 0xff;
        }
    }

    if (count != 0) {
        for (i = 0; i < 5; i++) {
            for (j = i + 1; j < 5; j++) {
                if (pair[i][1] <= pair[j][1] && (pair[i][1] != pair[j][1] || pair[j][0] <= pair[i][0])) {
                    tmpIdx = pair[i][0];
                    tmpVal = pair[i][1];
                    pair[i][0] = pair[j][0];
                    pair[i][1] = pair[j][1];
                    pair[j][0] = tmpIdx;
                    pair[j][1] = tmpVal;
                }
            }
        }
    }

    val4 = pair[4][1];
    for (k = 0; k < 5; k++) {
        param_2[6 + k] = pair[k][0];
        if (val4 == pair[k][1]) {
            param_2[0xb] = param_2[0xb] + 1;
        }
    }
    param_2[0xc] = (u8)count;

    switch (count) {
    case 0:
        OUT16(param_2, 0) = (OUT16(param_2, 0) & ~0xf) | 6;
        break;
    case 1:
        sub_02032588(param_2, &pair[0][0], 0);
        OUT16(param_2, 1) = (OUT16(param_2, 1) & ~0xf) | 6;
        break;
    case 2:
        sub_02032588(param_2, &pair[0][0], 0);
        sub_02032588(param_2 + 2, &pair[0][0] + 2, 1);
        OUT16(param_2, 2) = (OUT16(param_2, 2) & ~0xf) | 6;
        break;
    case 3:
        sub_02032588(param_2, &pair[0][0], 0);
        sub_02032588(param_2 + 2, &pair[0][0] + 2, 1);
        sub_02032588(param_2 + 4, &pair[0][0] + 4, 2);
        break;
    default:
        val0 = pair[0][1];
        val1 = pair[1][1];
        val2 = pair[2][1];
        d = val0 - pair[3][1];
        if ((s32)d <= 12) {
            OUT16(param_2, 0) = (OUT16(param_2, 0) & ~0xf) | 5;
            OUT16(param_2, 0) = (OUT16(param_2, 0) & 0xffff00ff) | (val0 << 8);
            OUT16(param_2, 1) = (OUT16(param_2, 1) & ~0xf) | 6;
            OUT16(param_2, 1) = (OUT16(param_2, 1) & 0xffff00ff) | (val1 << 8);
            OUT16(param_2, 2) = (OUT16(param_2, 2) & ~0xf) | 6;
            OUT16(param_2, 2) = (OUT16(param_2, 2) & 0xffff00ff) | (val2 << 8);
            if (val0 > 0x14) {
                OUT16(param_2, 0) = (OUT16(param_2, 0) & ~0xf0) | 0x30;
            } else if (val0 > 7) {
                OUT16(param_2, 0) = (OUT16(param_2, 0) & ~0xf0) | 0x20;
            } else {
                OUT16(param_2, 0) = (OUT16(param_2, 0) & ~0xf0) | 0x10;
            }
        } else {
            sub_02032588(param_2, &pair[0][0], 0);
            sub_02032588(param_2 + 2, &pair[0][0] + 2, 1);
            if (count == 4) {
                sub_02032588(param_2 + 4, &pair[0][0] + 8, 2);
            } else {
                OUT16(param_2, 2) = (OUT16(param_2, 2) & ~0xf) | 5;
                OUT16(param_2, 2) = (OUT16(param_2, 2) & ~0xf0) | 0x10;
                OUT16(param_2, 2) = (OUT16(param_2, 2) & 0xffff00ff) | (val2 << 8);
            }
        }
        break;
    }
}
