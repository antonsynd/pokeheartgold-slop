#include "global.h"

typedef struct Ov96_021FB5C8 {
    u8 filler_00[0x1C];
    u8 unk1C[6];
} Ov96_021FB5C8;

void ov96_021FB5C8(Ov96_021FB5C8 *a0, u32 idx, u32 value) {
    GF_ASSERT(idx < 12);
    GF_ASSERT(value != 0 && value <= 12);
    a0->unk1C[(u8)(idx / 2)] |= (u8)(value << (u8)((int)idx % 2) * 4);
}
