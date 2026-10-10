#include "global.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov102_021EC3D4;

void ov102_021EC3D4(void *task, UnkStruct_ov102_021EC3D4 *v0) {
    int v1;

    if (v0->unk_14) {
        v0->unk_08 += v0->unk_10;
        v1 = v0->unk_08 >> 3;
        v0->unk_14--;
    } else {
        v1 = v0->unk_0C >> 3;
    }
    if (v1 > 16) {
        v1 = 16;
    }
    G2x_SetBlendAlpha_(0x04000050, v0->unk_00, v0->unk_04, v1, 16 - v1);
}
