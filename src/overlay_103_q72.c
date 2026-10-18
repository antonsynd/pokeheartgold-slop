#include "global.h"

typedef struct Ov103_021EDE5C {
    u8 filler_00[0x18];
    int unk18;
    u8 filler_1C[6];
    u16 unk22;
    u8 filler_24[4];
    int unk28;
} Ov103_021EDE5C;

void ov103_021EDC68(Ov103_021EDE5C *a0, int a1, int a2, int a3);
void ov103_021EDA40(Ov103_021EDE5C *a0, int a1);

void ov103_021EDE5C(Ov103_021EDE5C *a0) {
    ov103_021EDC68(a0, 9, a0->unk22, 0);
    a0->unk18 = 1;
    a0->unk28 = 6;
    ov103_021EDA40(a0, 1);
}
