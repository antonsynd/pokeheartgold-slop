#include "global.h"

extern s8 _020F68DE[];
void sub_020324F4(void *a, void *b);

void sub_02032354(u8 *param_1)
{
    s8 arr[5];
    u8 accBuf[8] __attribute__((aligned(4)));
    s8 *acs = (s8 *)(accBuf + 1);
    u32 W;
    u32 outer;
    u32 n;
    u32 nm1;
    u32 flag;
    u32 sum;
    u32 best;
    u32 bestIdx;
    u32 i;
    u32 j;
    u32 k;
    s8 *rowT;
    s32 arr0;
    s32 arr1;
    s32 row;
    s32 ak;
    s32 sum8;
    s32 clamp;
    s32 t;

    W = *(u16 *)(param_1 + 0xa);
    sub_020324F4(param_1 + 0xc, acs);

    outer = 0;
    while (1) {
        flag = 0;
        n = W & 7;
        if (n == 0) {
            break;
        }
        sum = 0;
        bestIdx = 0;
        best = 0;
        nm1 = (n - 1) & 0xff;

        for (k = 0; k < 5; k++) {
            arr[k] = (s8)k;
        }

        for (i = 0; i < 2; i++) {
            for (j = i + 1; j < 5; j++) {
                s32 ai = arr[i];
                s32 aj = arr[j];
                s32 ci = acs[ai];
                s32 cj = acs[aj];
                if (ci > cj) {
                    continue;
                }
                if (ci == cj && ai < aj) {
                    continue;
                }
                arr[i] = (s8)aj;
                arr[j] = (s8)ai;
            }
        }

        rowT = _020F68DE + 5 * nm1;
        arr0 = arr[0];
        arr1 = arr[1];

        for (k = 0; k < 5; k++) {
            row = rowT[k];
            ak = acs[k];
            sum8 = (s8)(ak + row);
            if (sum8 >= 0x3f) {
                clamp = 0x3f;
            } else if (sum8 < 0) {
                clamp = 0;
            } else {
                clamp = sum8;
            }

            if (row > 0 && acs[arr0] != 0 && arr0 != (s32)k && acs[arr1] != 0 && arr1 != (s32)k) {
                flag = 1;
            }

            if (nm1 == 6 || clamp <= ak) {
                if (clamp > (s32)best) {
                    best = (u8)clamp;
                    bestIdx = (u8)k;
                }
            }

            acs[k] = (s8)clamp;
            sum = (sum + clamp) & 0xff;
        }

        W = (W << 13) >> 16;

        if (flag != 0) {
            if (param_1[0xe] >= 10) {
                param_1[0xe] = param_1[0xe] - 10;
            } else {
                param_1[0xe] = 0;
            }
        }

        if (nm1 != 5) {
            if (sum > 100) {
                t = acs[bestIdx];
                sum = sum - 100;
                t = t - (s32)sum;
                acs[bestIdx] = (s8)t;
            }
        }

        outer++;
        if (outer >= 5) {
            break;
        }
    }

    for (k = 0; k < 5; k++) {
        param_1[0xf + k] = (u8)acs[k];
    }
    param_1[9] = 3;
    *(u16 *)(param_1 + 0xa) = 0;
}
