#include "global.h"

typedef struct Ov96_021EB0A4 {
    u8 filler_00[0x10];
    int unk10;
    u8 filler_14[4];
    int unk18;
    u8 filler_1C[0xC];
    int unk28;
} Ov96_021EB0A4;

void ov96_021EB0A4(Ov96_021EB0A4 *a0, int a1, int a2, int *outA, int *outB) {
    int x = a2 + a0->unk10 - a0->unk18 * 2;

    *outA = a1;
    *outB = a0->unk28 + (x + (a0->unk18 * 2 - a0->unk28) / 2);
}
