#include "global.h"

typedef struct Ov74_0223E304 {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
} Ov74_0223E304;

extern Ov74_0223E304 ov74_0223E304;

void ov74_02236A54(u8 *a0, int *a1, int a2) {
    ov74_0223E304.unk0 = 0;
    ov74_0223E304.unkC = 0;
    *(int *)(a0 + 0x1650) = a2;
    *a1 = 0x1012;
}
