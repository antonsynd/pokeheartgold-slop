#include "global.h"

#include "error_handling.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov49_02261930 {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    s32 unk_14;
    u8 unk_18[8];
} UnkStruct_ov49_02261930;

typedef struct UnkStruct_ov49_02261930_Pos {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov49_02261930_Pos;

extern u8 ov49_02269B78[];

u32 ov49_02259FE8(void *param0);
u32 ov49_02259FF0(void *param0);
u32 ov49_02259FF8(void *param0);
void *ov49_0225EF84(void *param0);
u32 ov49_0225EF88(void *param0);
void *ov49_0225EF40(void *param0, u32 size);
u32 ov49_02258D70(u32 param0, u32 param1);
u32 ov45_0222ADA8(u32 param0, u32 param1);
void ov45_0222AE08(u32 param0, u32 *param1, u32 *param2);
void ov49_02258EEC(u32 param0, u32 param1, u32 param2);
void ov49_0225EF8C(void *param0, u32 param1);
int ov49_02258F38(u32 param0);
void ov49_0225E420(u32 param0, u32 param1, u32 param2, VecFx32 *param3);
void ov49_02259154(u32 param0, VecFx32 *param1);
void ov49_02258DB4(u32 param0, UnkStruct_ov49_02261930_Pos param1);
void ov49_02259184(u32 param0, u32 param1);
void ov49_02259148(u32 param0, VecFx32 *param1);
void ov49_022591B4(u32 param0, u32 param1);
void ov49_02259160(u32 param0, u32 param1);
int ov49_0225A520(void *param0, u32 param1);
int ov49_0225F438(void *param0);
void ov49_0225F374(void *param0);
void ov49_0225F430(void *param0);
fx32 ov49_0225F394(void *param0);
int ov45_0222AD80(u32 param0, u32 param1);
void ov49_02258D54(u32 param0);
void ov49_0225EF68(void *param0);
u32 ov49_0225A010(void *param0);
void ov49_0225EF98(u32 param0, u32 param1, void *param2, u32 param3);

BOOL ov49_02261930(void *param0, void *param1, u32 param2) {
    UnkStruct_ov49_02261930 *v0;
    u32 v1;
    u32 v2;
    u32 v3;

    v3 = ov49_02259FE8(param1);
    v1 = ov49_02259FF0(param1);
    v2 = ov49_02259FF8(param1);
    v0 = ov49_0225EF84(param0);

    switch (ov49_0225EF88(param0)) {
    case 0:
        v0 = ov49_0225EF40(param0, 0x20);
        v0->unk_00 = ov49_02258D70(v1, param2);
        v0->unk_04 = ov45_0222ADA8(v3, param2);
        if (v0->unk_04 == 0xFFFFFFFF) {
            GF_AssertFail();
        }
        ov45_0222AE08(v0->unk_04, &v0->unk_04, &v0->unk_08);
        ov49_02258EEC(v1, v0->unk_00, 3);
        ov49_0225EF8C(param0, 1);
        break;
    case 1:
        if (ov49_02258F38(v0->unk_00)) {
            VecFx32 v4;
            UnkStruct_ov49_02261930_Pos v5 = { 0, 0 };

            ov49_0225E420(v2, v0->unk_04, v0->unk_08, &v4);
            v0->unk_10 = v4.x - FX32_CONST(16);
            ov49_02259154(v0->unk_00, &v4);
            v0->unk_0C = v4.y;
            v0->unk_14 = 0;
            ov49_02258DB4(v0->unk_00, v5);
            PlaySE(0x64E);
            ov49_02259184(v0->unk_00, 1);
            ov49_0225EF8C(param0, 2);
        }
        break;
    case 2: {
        VecFx32 v6;
        VecFx32 v7;
        fx32 v13;
        s32 v14;
        BOOL v8 = FALSE;

        v14 = v0->unk_14 + 1;
        v0->unk_14 = v14;
        if (v14 >= 24) {
            v0->unk_14 = 24;
            v8 = TRUE;
        }
        ov49_0225E420(v2, v0->unk_04, v0->unk_08, &v6);
        v7.z = v6.z;
        v7.x = v0->unk_10;
        if (v0->unk_14 > 0) {
            v13 = (int)(0.5f + (float)(v0->unk_14 << 12));
        } else {
            v13 = (int)((float)(v0->unk_14 << 12) - 0.5f);
        }
        v7.y = FX_Div((fx32)((((s64)v13 * (s64)(v6.y - v0->unk_0C)) + 0x800) >> 12), 0x18000);
        v7.y += v0->unk_0C;
        ov49_02259148(v0->unk_00, &v7);
        if (v8 == TRUE) {
            ov49_02259184(v0->unk_00, 0);
            ov49_022591B4(v0->unk_00, 8);
            ov49_02259160(v0->unk_00, 2);
            ov49_0225EF8C(param0, 3);
        }
    } break;
    case 3: {
        VecFx32 v9;
        fx32 v10;

        if (ov49_0225A520(param1, v0->unk_04) == 1) {
            if (ov49_0225F438(v0->unk_18) == 0) {
                ov49_0225F374(v0->unk_18);
            }
        } else {
            if (ov49_0225F438(v0->unk_18) == 1) {
                ov49_0225F430(v0->unk_18);
            }
        }
        v10 = ov49_0225F394(v0->unk_18);
        ov49_0225E420(v2, v0->unk_04, v0->unk_08, &v9);
        v9.y += v10;
        ov49_02259148(v0->unk_00, &v9);
        if (ov45_0222AD80(v3, v0->unk_04) == 2) {
            ov49_0225EF8C(param0, 4);
        }
    } break;
    case 4:
        ov49_02258D54(v0->unk_00);
        ov49_0225EF68(param0);
        ov49_0225EF98(ov49_0225A010(param1), param2, ov49_02269B78, 0);
        break;
    }
    return FALSE;
}
