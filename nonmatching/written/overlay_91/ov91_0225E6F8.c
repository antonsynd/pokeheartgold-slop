#include "global.h"

typedef struct UnkStruct_ov91_0225E6F8 {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[0x10];
    fx32 unk_14;
} UnkStruct_ov91_0225E6F8;

fx32 ov91_0225E6F8(const UnkStruct_ov91_0225E6F8 *param0) {
    fx32 v0;

    v0 = param0->unk_14 - FX_Mul(0x670, param0->unk_02 * FX32_ONE);

    if (v0 < 0) {
        v0 = 0;
    }

    return v0;
}
