#include "global.h"

#include "party.h"

typedef struct Ov14_021E91E0_Sub {
    u8 filler_00[0xC];
    int unk0C;
    u16 state;
} Ov14_021E91E0_Sub;

typedef struct Ov14_021E91E0 {
    u8 filler_00[8];
    Party *party;
    u8 filler_0C[0x15];
    u8 unk21;
    u8 filler_22[0x12];
    Ov14_021E91E0_Sub *unk34;
} Ov14_021E91E0;

void ov14_021E6CF8(Ov14_021E91E0 *a0, u8 a1, int a2);
void ov14_021F40E8(Ov14_021E91E0 *a0, int a1);
BOOL ov14_021E65C4(Ov14_021E91E0 *a0);
void ov14_021E7148(Ov14_021E91E0 *a0, int a1);

BOOL ov14_021E91E0(Ov14_021E91E0 *a0) {
    Ov14_021E91E0_Sub *sub = a0->unk34;

    switch (sub->state) {
    case 0: {
        int msg = Party_GetCount(a0->party) + 0x1E;

        ov14_021E6CF8(a0, a0->unk21, msg);
        ov14_021F40E8(a0, 0);
        sub->state++;
        break;
    }
    case 1:
        if (!ov14_021E65C4(a0)) {
            ov14_021E7148(a0, sub->unk0C);
            sub->state = 0;
            return FALSE;
        }
        break;
    }
    return TRUE;
}
