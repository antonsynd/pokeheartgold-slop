#include "global.h"

typedef struct Ov74_0223E304 {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
} Ov74_0223E304;

extern Ov74_0223E304 ov74_0223E304;

void ov74_02236AAC(void *a0, int a1) {
    ov74_0223E304.unk0 = 1;
    ov74_0223E304.unkC = a1;
}
