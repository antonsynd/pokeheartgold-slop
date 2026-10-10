#include "global.h"

#include "unk_02018000.h"

typedef struct UnkStruct_ov49_02266678 {
    u8 unk_00[2];
    s16 unk_02;
    u8 unk_04[8];
    UnkStruct_020181B0 unk_0C[1];
} UnkStruct_ov49_02266678;

#define OV49_02266678_ELEM(p, i) ((UnkStruct_020181B0 *)((u8 *)(p) + 0xC + (i) * 0x78))
#define OV49_02266678_COUNT(p)   (*(s8 *)((u8 *)(p) + 0x954))
#define OV49_02266678_STEP(p)    (*(s8 *)((u8 *)(p) + 0x955))

BOOL ov49_02265B28(void *param0, void *param1, int param2, int param3);
void ov49_02265BE8(void *param0, void *param1, int param2, int param3, int param4);

BOOL ov49_02266678(void *param0, UnkStruct_ov49_02266678 *param1) {
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v4 = param1->unk_02 + 1;
    if (v4 <= 54) {
        param1->unk_02 = v4;
    }
    v2 = (param1->unk_02 * 6) / 54;

    for (v0 = OV49_02266678_STEP(param1); (u32)v0 < (u32)v2; v0++) {
        v3 = v0 % 3;
        if ((u32)v3 < (u32)(int)OV49_02266678_COUNT(param1)) {
            sub_020182A0(OV49_02266678_ELEM(param1, v3), 1);
        }
    }
    OV49_02266678_STEP(param1) = v2;

    v1 = 1;
    for (v0 = 0; v0 < OV49_02266678_COUNT(param1); v0++) {
        if (sub_020182A4(OV49_02266678_ELEM(param1, v0)) == 1) {
            v1 = ov49_02265B28(param0, param1, v0, 0);
            if (v1 != 0) {
                sub_020182A0(OV49_02266678_ELEM(param1, v0), 0);
                ov49_02265BE8(param0, param1, v0, 0, 0);
            }
        }
    }

    if (OV49_02266678_STEP(param1) >= 6 && v1 == 1) {
        return TRUE;
    }
    return FALSE;
}
