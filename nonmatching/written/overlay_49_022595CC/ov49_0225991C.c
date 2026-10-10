#include "global.h"

#include "math_util.h"

typedef struct UnkStruct_ov49_0225991C {
    u8 padding_00[4];
    void *unk_04;
    u16 unk_08;
    u8 padding_0A[2];
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
} UnkStruct_ov49_0225991C;

typedef struct UnkStruct_ov49_0225991C_Vec {
    int x;
    int y;
    int z;
} UnkStruct_ov49_0225991C_Vec;

extern void ov45_0223089C(void *a, int b);
extern void ov45_02230908(void *a, void *b);
extern void ov45_022308E4(void *a, void *b);
extern void ov45_02230920(void *a, int b);

void ov49_0225991C(UnkStruct_ov49_0225991C *param0) {
    switch (param0->unk_08) {
    case 0:
        ov45_0223089C(param0->unk_04, 0);
        ov45_02230908(param0->unk_04, &param0->unk_10);
        param0->unk_0C = 0x1c;
        param0->unk_08++;
        break;
    case 1: {
        UnkStruct_ov49_0225991C_Vec v1;
        s16 v2;
        int v0;

        param0->unk_0C--;
        if (param0->unk_0C < 0) {
            param0->unk_0C = 0x1c;
        }

        v1 = *(UnkStruct_ov49_0225991C_Vec *)&param0->unk_10;
        v2 = param0->unk_0C - 16;

        if (v2 > 0) {
            v2 = v2 % 6;
            v0 = (180 * v2) / 6;

            v1.z += FX_Mul(GF_SinDegNoWrap(v0), -2 * FX32_ONE);
            v1.y += FX_Mul(GF_SinDegNoWrap(v0), 10 * FX32_ONE);
        }

        ov45_022308E4(param0->unk_04, &v1);
        ov45_02230920(param0->unk_04, 1);
        break;
    }
    }
}
