#include "global.h"

typedef struct Ov96_0220C714 {
    u8 filler_00[0x44];
    u32 gauge : 8;
    u32 locked : 1;
    u32 unk44_9 : 23;
} Ov96_0220C714;

void ov96_0220C7C4(Ov96_0220C714 *a0);

void ov96_0220C714(Ov96_0220C714 *a0, BOOL boost) {
    GF_ASSERT(!a0->locked);
    if (boost) {
        a0->gauge += 30;
    }
    if (a0->gauge > 100) {
        a0->gauge = 100;
    }
    if (a0->gauge >= 100) {
        ov96_0220C7C4(a0);
    }
}
