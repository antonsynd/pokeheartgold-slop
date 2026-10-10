#include "global.h"

typedef struct UnkStruct_ov49_022685F8 {
    u8 unk_00[4];
    u8 unk_04[4];
    u8 padding_08[0x14];
    u8 unk_1C[4];
    u8 padding_20[0x14];
    u8 unk_34[0x18];
    u32 unk_4C;
} UnkStruct_ov49_022685F8;

extern u16 ov49_0226A7D8[];

void ov49_02268640(void *param0, const u16 *param1);

void ov49_022685F8(UnkStruct_ov49_022685F8 *param0, int param1) {
    param0->unk_1C[0] = param0->unk_04[0];
    param0->unk_1C[1] = param0->unk_04[1];
    param0->unk_1C[2] = param0->unk_04[2];
    param0->unk_1C[3] = param0->unk_04[3];
    param0->unk_4C = 0;
    ov49_02268640(param0->unk_34, &ov49_0226A7D8[param1]);
}
