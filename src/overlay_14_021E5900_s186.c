#include "global.h"

typedef struct Ov14_021E9660_Sub {
    u8 filler_000[0x10];
    u16 state;
    u8 filler_012[0x2DE];
    void *unk2F0;
} Ov14_021E9660_Sub;

typedef struct Ov14_021E9660 {
    u8 filler_00[0x34];
    Ov14_021E9660_Sub *unk34;
} Ov14_021E9660;

BOOL ov14_021E9618(Ov14_021E9660 *a0);
void ov14_021F44B4(Ov14_021E9660_Sub *a0, int a1);
BOOL sub_02019978(void *a0, int a1);

BOOL ov14_021E9660(Ov14_021E9660 *a0) {
    Ov14_021E9660_Sub *sub = a0->unk34;

    switch (sub->state) {
    case 0:
        if (!ov14_021E9618(a0)) {
            sub->state++;
        }
        break;
    case 1:
        ov14_021F44B4(sub, 8);
        if (!sub_02019978(a0->unk34->unk2F0, 13)) {
            sub->state = 0;
            return FALSE;
        }
        break;
    }
    return TRUE;
}
