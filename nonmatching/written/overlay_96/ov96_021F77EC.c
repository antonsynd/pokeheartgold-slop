#include "global.h"
#include "math_util.h"

void *ov96_021E8A20(void *a0);
void ov96_021E8228(void *ctx, int idx, int k, int c, int d);

void ov96_021F77EC(void *ctx, u8 *p, int idx) {
    u32 *entry;
    s32 chance;
    u8 roll;
    u8 k;

    entry = ov96_021E8A20(*(u8 **)(p + 4) + 0x50 + idx * 0x28);
    if (p[8 + idx] == 0) {
        chance = 0;
    } else {
        chance = p[idx + 0xc] + p[8 + idx] * 2 + LCRandom() % 0x65;
    }
    if (chance >= 100) {
        *entry = 1;
        roll = LCRandom() % p[8 + idx];
        k = 0;
        do {
            if (roll < p[idx * 3 + 0x10 + k]) {
                ov96_021E8228(ctx, idx, k, 3, 1);
                break;
            }
            k++;
        } while (k < 3);
        if (k >= 3) {
            GF_AssertFail();
        }
    }
}
