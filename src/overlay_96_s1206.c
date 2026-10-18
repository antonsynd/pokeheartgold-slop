#include "global.h"

typedef struct Ov96_02214A6C {
    u8 filler_00[0x18];
    int unk18[1][9];
} Ov96_02214A6C;

void ov96_02214A6C(Ov96_02214A6C *a0, int idx, int value) {
    u8 row = idx / 3;
    u8 col = idx % 3;

    a0->unk18[row][col] = value;
}
