#include "global.h"

typedef struct Ov96_02218EB8 {
    u8 filler_00[0x14];
    int state;
    u8 filler_18[8];
    VecFx32 pos;
    VecFx32 startPos;
    u8 filler_38[0xC];
    VecFx32 velocity;
} Ov96_02218EB8;

void ov96_02218578(Ov96_02218EB8 *a0, int a1);
BOOL ov96_02218934(Ov96_02218EB8 *a0);
void ov96_02219030(Ov96_02218EB8 *a0);

void ov96_02218EB8(Ov96_02218EB8 *a0) {
    GF_ASSERT(a0->state == 7 || a0->state == 6);
    {
        VecFx32 zero = { 0, 0, 0 };

        a0->velocity = zero;
    }
    a0->pos = a0->startPos;
    ov96_02218578(a0, 1);
    if (ov96_02218934(a0)) {
        ov96_02219030(a0);
    }
}
