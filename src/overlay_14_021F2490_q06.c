#include "global.h"

typedef struct Ov14_021F25E4 {
    u8 filler_00[0x24];
    u8 unk24;
    u8 filler_25[4];
    u8 unk29;
    u8 filler_2A[0xA];
    void *unk34;
} Ov14_021F25E4;

void ov14_021F40E8(Ov14_021F25E4 *a0, int a1);
void ov14_021F2A18(void *a0, int a1, int a2);
void ov14_021F1100(Ov14_021F25E4 *a0, int a1);

void ov14_021F25E4(Ov14_021F25E4 *a0) {
    ov14_021F40E8(a0, 0);
    a0->unk24 = 1;
    a0->unk29 = 0;
    ov14_021F2A18(a0->unk34, 9, 0);
    ov14_021F1100(a0, 0x2F);
}
