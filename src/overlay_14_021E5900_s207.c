#include "global.h"

typedef struct Ov14_021EA728_Sub {
    u8 filler_00[0xC];
    u16 *unk0C;
    u16 state;
} Ov14_021EA728_Sub;

typedef struct Ov14_021EA728 {
    u8 filler_00[0x21];
    u8 unk21;
    u8 filler_22[0x12];
    Ov14_021EA728_Sub *unk34;
} Ov14_021EA728;

BOOL ov14_021F2A04(Ov14_021EA728_Sub *a0, int a1);
void ov14_021E7AD4(Ov14_021EA728 *a0, u8 a1, u8 a2, int a3);
BOOL ov14_021E7B8C(Ov14_021EA728 *a0);

BOOL ov14_021EA728(Ov14_021EA728 *a0) {
    Ov14_021EA728_Sub *sub = a0->unk34;

    switch (sub->state) {
    case 0:
        if (ov14_021F2A04(sub, 11) != TRUE) {
            u8 prev = a0->unk21;

            a0->unk21 = *sub->unk0C;
            ov14_021E7AD4(a0, prev, prev, 2);
            sub->state = 1;
        }
        break;
    case 1:
        if (!ov14_021E7B8C(a0)) {
            sub->state = 0;
            return FALSE;
        }
        break;
    }
    return TRUE;
}
