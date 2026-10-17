#include "global.h"

typedef struct Ov14_021E7E10_Sub {
    u8 filler_0000[0x2F0];
    void *unk2F0;
    u8 filler_02F4[0x40C0 - 0x2F4];
    u32 unk40C0;
} Ov14_021E7E10_Sub;

typedef struct Ov14_021E7E10 {
    u8 filler_00[0x34];
    Ov14_021E7E10_Sub *unk34;
} Ov14_021E7E10;

void ov14_021E7D9C(Ov14_021E7E10 *a0, int bit);
void sub_020196E8(void *a0, int a1, int a2, int a3);

void ov14_021E7E10(Ov14_021E7E10 *a0, int bit) {
    a0->unk34->unk40C0 ^= 1 << bit;
    ov14_021E7D9C(a0, bit);
    sub_020196E8(a0->unk34->unk2F0, 2, 0x15, 6);
}
