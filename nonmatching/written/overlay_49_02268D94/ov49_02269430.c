#include "global.h"

typedef struct UnkStruct_ov49_02269430 {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[10];
} UnkStruct_ov49_02269430;

typedef int (*UnkFunc_ov49_02269430)(UnkStruct_ov49_02269430 *, u32, u32, u32);

extern UnkFunc_ov49_02269430 ov49_0226A8CC[];

BOOL ov49_02269430(UnkStruct_ov49_02269430 *param0, u32 param1, u32 param2) {
    int v0;
    int v1;
    u8 *v2;
    UnkFunc_ov49_02269430 v3;

    if (param0->unk_00 != 0) {
        v3 = ov49_0226A8CC[param0->unk_02];
        v0 = v3(param0, param1, param2, (u32)v3);
        if (v0 == 1) {
            v2 = (u8 *)param0;
            for (v1 = 0; v1 < 14; v1++) {
                v2[v1] = 0;
            }
        }
        return TRUE;
    }
    return FALSE;
}
