#include "global.h"

typedef struct Ov96_0221910C {
    void *course;
    u8 filler_04[0x1C];
    VecFx32 pos;
    VecFx32 startPos;
    u8 filler_38[0x28];
    u32 unk60_0 : 20;
    u32 lane : 2;
    u32 slot : 2;
    u32 unk60_24 : 2;
    u32 unk60_26 : 1;
    u32 unk60_27 : 1;
    u32 unk60_28 : 1;
    u32 unk60_29 : 3;
} Ov96_0221910C;

void ov96_021E8228(void *course, u8 lane, u8 slot, int a3, int a4);

void ov96_0221910C(Ov96_0221910C *a0) {
    GF_ASSERT(!a0->unk60_26);
    GF_ASSERT(!a0->unk60_28);
    a0->unk60_26 = 1;
    a0->unk60_24 = 1;
    a0->pos = a0->startPos;
    ov96_021E8228(a0->course, a0->lane, a0->slot, 7, 1);
}
