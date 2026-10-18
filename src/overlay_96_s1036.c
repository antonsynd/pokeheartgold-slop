#include "global.h"

#include "math_util.h"

typedef struct Ov96_0220CAC4 {
    void *unk00;
    u8 filler_04[0x10];
    u32 id : 8;
    u32 counter : 8;
    u32 score : 8;
    u32 state : 6;
    u32 current : 2;
    u32 unk18_0 : 11;
    u32 timer : 11;
    u32 limit : 8;
    u32 slot : 2;
    u32 boostTimer : 8;
    u32 boosting : 1;
    u32 flag : 1;
    u32 unk1C_10 : 22;
} Ov96_0220CAC4;

BOOL ov96_0220CD00(Ov96_0220CAC4 *a0);
void ov96_0220D0F8(Ov96_0220CAC4 *a0);
void ov96_021E8228(void *a0, u8 slot, u8 current, int a3, int a4);
void ov96_0220CD84(Ov96_0220CAC4 *a0, int a1);
BOOL ov96_0220CCBC(Ov96_0220CAC4 *a0);
BOOL ov96_0220CC38(Ov96_0220CAC4 *a0);
void ov96_0220CE04(Ov96_0220CAC4 *a0, int a1);

int ov96_0220CAC4(Ov96_0220CAC4 *a0) {
    int result = 0;

    a0->counter++;
    if (a0->counter >= a0->limit) {
        if (ov96_0220CD00(a0)) {
            ov96_0220D0F8(a0);
            ov96_021E8228(a0->unk00, a0->slot, a0->current, 7, 1);
            ov96_0220CD84(a0, 1);
        } else {
            if (ov96_0220CCBC(a0)) {
                result += 2;
            }
            if (a0->boosting) {
                if (a0->boostTimer >= 2 && ov96_0220CC38(a0)) {
                    ov96_0220CE04(a0, result & 2);
                }
            } else {
                ov96_0220CE04(a0, result & 2);
            }
        }
        a0->counter = 0;
        a0->limit = MTRandom() % 3 + 4;
    }
    if (a0->boosting) {
        a0->boostTimer++;
        if (a0->boostTimer >= 10) {
            a0->boostTimer = 0;
            a0->boosting = FALSE;
        }
    }
    return result;
}

int ov96_0220CBC0(Ov96_0220CAC4 *a0) {
    a0->counter++;
    if (a0->counter >= 26) {
        ov96_0220CD84(a0, 0);
    }
    return 0;
}

int ov96_0220CBEC(Ov96_0220CAC4 *a0) {
    a0->counter++;
    if (a0->counter >= 42) {
        ov96_0220CD84(a0, 0);
    }
    return 0;
}
