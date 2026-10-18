#include "global.h"

typedef struct Ov96_0220B95C {
    u8 filler_00[0x44];
    u32 unk44_0 : 16;
    u32 timer : 8;
    u32 unk44_24 : 8;
} Ov96_0220B95C;

void ov96_0220C578(Ov96_0220B95C *a0, int a1);

void ov96_0220B95C(Ov96_0220B95C *a0) {
    a0->timer++;
    if (a0->timer >= 10) {
        ov96_0220C578(a0, 0);
    }
}
