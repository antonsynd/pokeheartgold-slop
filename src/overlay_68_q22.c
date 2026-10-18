#include "global.h"

typedef struct Ov68_021E61B8_Sub {
    u8 filler_00[0x1B];
    u8 unk1B;
} Ov68_021E61B8_Sub;

typedef struct Ov68_021E61B8 {
    Ov68_021E61B8_Sub *unk000;
    u8 filler_004[0x1AC];
    int unk1B0;
    u8 filler_1B4[6];
    u8 unk1BA;
} Ov68_021E61B8;

void ov68_021E6C14(Ov68_021E61B8 *a0, int a1);

int ov68_021E61B8(Ov68_021E61B8 *a0) {
    if (a0->unk000->unk1B < 4) {
        ov68_021E6C14(a0, 10);
        a0->unk1BA = 4;
    } else {
        ov68_021E6C14(a0, 7);
        a0->unk1BA = 3;
    }
    a0->unk1B0 = 3;
    return 2;
}
