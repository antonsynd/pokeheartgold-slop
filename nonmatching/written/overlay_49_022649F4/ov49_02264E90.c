#include "global.h"

typedef struct UnkStruct_ov49_02264E90 {
    u8 unk_00[3];
    u8 unk_03;
} UnkStruct_ov49_02264E90;

u32 ov45_0222A5C0(u32 param0);
u32 ov45_0222A578(u32 param0, u32 param1);
u32 ov45_0222AAC8(u32 param0);
void ov49_0225A39C(u32 param0, u32 param1, u32 param2);

void ov49_02264E90(UnkStruct_ov49_02264E90 *param0, u32 param1, u32 param2, u32 param3, BOOL param4) {
    u32 v0;
    u32 v1;
    u32 v2;

    v1 = ov45_0222A5C0(param1);
    v2 = ov45_0222A578(param1, param0->unk_03);
    if (param4 == 0) {
        v0 = ov45_0222AAC8(v2);
    } else {
        v0 = ov45_0222AAC8(v1);
    }
    ov49_0225A39C(param2, v0, param3);
}
