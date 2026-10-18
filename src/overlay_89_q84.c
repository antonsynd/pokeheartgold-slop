#include "global.h"

#include "math_util.h"
#include "unk_02018000.h"

typedef struct Ov89Wobble {
    int state;
    fx32 angle;
    fx32 baseX;
    u8 unkC[4];
} Ov89Wobble;

typedef struct Ov89_0225B82C {
    u8 filler_00[0x1C];
    UnkStruct_020181B0 obj;
    u8 filler_rest[0x94 - 0x1C - sizeof(UnkStruct_020181B0)];
    Ov89Wobble wobble;
} Ov89_0225B82C;

void ov89_0225ADA4(UnkStruct_020181B0 *obj, Ov89_0225B82C *a1, void *a2, int a3);

#pragma optimization_level 2
#pragma opt_common_subs off

BOOL ov89_0225B82C(void *a0, Ov89_0225B82C *a1) {
    Ov89Wobble *wobble = &a1->wobble;
    fx32 x, y, z;

    switch (wobble->state) {
    case 0:
        sub_020182B0(&a1->obj, &x, &y, &z);
        wobble->baseX = x;
        wobble->state++;
    case 1:
        sub_020182B0(&a1->obj, &x, &y, &z);
        if (x < FX32_CONST(-80) || x > FX32_CONST(80) || y > FX32_CONST(48) || y < FX32_CONST(-48)) {
            return TRUE;
        }
        wobble->angle += FX32_CONST(8);
        if (wobble->angle >= FX32_CONST(360)) {
            wobble->angle -= FX32_CONST(360);
        }
        sub_020182A8(&a1->obj, wobble->baseX + (fx32)(((fx64)GF_SinDegFX32(wobble->angle) * FX32_CONST(8) + 0x800) >> FX32_SHIFT), y - FX32_CONST(1), z);
        break;
    }
    ov89_0225ADA4(&a1->obj, a1, wobble->unkC, 0);
    return FALSE;
}
