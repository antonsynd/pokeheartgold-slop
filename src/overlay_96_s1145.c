#include "global.h"

typedef struct Ov96_02210980 {
    int unk00;
    u8 filler_04[8];
    u32 unk0C_0 : 3;
    u32 row : 2;
    u32 col : 2;
    u32 unk0C_7 : 4;
    u32 cell : 8;
    u32 unk0C_19 : 13;
    u8 cellIndex;
} Ov96_02210980;

void ov96_0221090C(Ov96_02210980 *a0);

void ov96_02210980(Ov96_02210980 *a0, int a1, int index) {
    u8 row = index / 3;
    u8 col = index % 3;

    a0->unk00 = a1;
    a0->row = row;
    a0->col = col;
    a0->cell = row * 2 + col * 8;
    a0->cellIndex = row * 2 + col * 8;
    ov96_0221090C(a0);
}
