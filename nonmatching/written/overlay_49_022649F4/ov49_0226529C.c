#include "global.h"

typedef struct UnkStruct_ov49_0226529C {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u32 unk_08;
} UnkStruct_ov49_0226529C;

u32 ov45_0222B034(u32 param0);
void ov45_0222AED8(u32 param0, u16 param1);

void ov49_0226529C(UnkStruct_ov49_0226529C *param0, u32 param1) {
    u32 v0;

    if (param0->unk_00 == 0) {
        return;
    }
    v0 = ov45_0222B034(param1);
    param0->unk_08 = v0;
    if (v0 == param0->unk_04) {
        ov45_0222AED8(param1, param0->unk_02);
        param0->unk_00 = 0;
    } else if (v0 != param0->unk_06) {
        param0->unk_00 = 0;
    }
}
