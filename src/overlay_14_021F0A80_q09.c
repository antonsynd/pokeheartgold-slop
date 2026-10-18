#include "global.h"

typedef struct Ov14_021F0C88_Sub {
    u8 filler_000[0x2F0];
    void *unk2F0;
} Ov14_021F0C88_Sub;

typedef struct Ov14_021F0C88 {
    u8 filler_00[0x24];
    u8 unk24;
    u8 filler_25[4];
    u8 unk29;
    u8 filler_2A[0xA];
    Ov14_021F0C88_Sub *unk34;
} Ov14_021F0C88;

extern const u8 ov14_021E94BC[];

void ov14_021F2A18(Ov14_021F0C88_Sub *a0, int a1, int a2);
void ov14_021E8234(void *a0);
void ov14_021E8294(void *a0);
void ov14_021E8314(void *a0);
void ov14_021F0234(Ov14_021F0C88 *a0, const u8 *a1, int a2);

void ov14_021F0C88(Ov14_021F0C88 *a0) {
    a0->unk24 = 1;
    a0->unk29 = 0;
    ov14_021F2A18(a0->unk34, 9, 0);
    ov14_021E8234(a0->unk34->unk2F0);
    ov14_021E8294(a0->unk34->unk2F0);
    ov14_021E8314(a0->unk34->unk2F0);
    ov14_021F0234(a0, ov14_021E94BC, 0x2F);
}
