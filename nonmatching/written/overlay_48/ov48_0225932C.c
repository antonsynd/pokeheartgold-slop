#include "global.h"

typedef struct UnkStruct_ov48_0225932C_Vec {
    int x;
    int y;
    int z;
} UnkStruct_ov48_0225932C_Vec;

extern u32 ov48_02259B10(void *a, u32 b, u32 c);
extern u32 ov48_02259BBC(void *a);
extern void ov48_02259B3C(void *a, UnkStruct_ov48_0225932C_Vec *out, u32 idx);
extern void GF_AssertFail(void);

int ov48_0225932C(u8 *param0, u32 param1, u32 param2) {
    int v0;
    u32 v4;
    u32 v1;
    UnkStruct_ov48_0225932C_Vec v3;
    UnkStruct_ov48_0225932C_Vec v2;

    v0 = (param2 & 0xff) - 4;
    v4 = ov48_02259B10(param0 + 0x224, 0xdb, 3);

    if (v4 >= ov48_02259BBC(param0 + 0x224)) {
        GF_AssertFail();
    }

    ov48_02259B3C(param0 + 0x224, &v2, v4);
    ov48_02259B3C(param0 + 0x224, &v3, param1);

    v1 = (u16)(v2.y - v3.y);
    v0 += (24 * v1) / 0xffff;

    if (v0 < 0) {
        v0 += 24;
    }

    if (v0 >= 24) {
        v0 %= 24;
    }

    return v0;
}
