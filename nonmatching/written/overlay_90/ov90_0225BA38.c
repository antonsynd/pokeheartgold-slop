#include "global.h"

typedef struct UnkStruct_ov90_0225BA38_Inner {
    u8 unk_00[4];
    u8 unk_04[0x2C];
    void *unk_30;
} UnkStruct_ov90_0225BA38_Inner;

typedef struct UnkStruct_ov90_0225BA38 {
    u8 unk_00[7];
    u8 unk_07;
    u8 unk_08[0xC];
    u8 unk_14;
    u8 unk_15[3];
    UnkStruct_ov90_0225BA38_Inner *unk_18;
    int unk_1C[4];
    u8 unk_2C[4];
} UnkStruct_ov90_0225BA38;

extern int ov90_0225BA14(UnkStruct_ov90_0225BA38 *param0);
extern void ov45_0222ACB8(void *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6);

void ov90_0225BA38(UnkStruct_ov90_0225BA38 *param0) {
    int v0;
    u32 v1[8] = { 0 };
    u32 v2;
    int v3;

    v2 = 0;
    v3 = ov90_0225BA14(param0);

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        if ((param0->unk_2C[v0] == 0) && (param0->unk_1C[v0] != v3)) {
            v1[v2] = param0->unk_18->unk_04[v0];
            v2++;
        }
    }

    if (v2 > 0) {
        ov45_0222ACB8(param0->unk_18->unk_30, param0->unk_07, v2, v1[0], v1[1], v1[2], v1[3]);
    }
}
