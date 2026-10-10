#include "global.h"

typedef struct UnkStruct_ov90_0225BAA0_Inner {
    u8 unk_00[4];
    u8 unk_04[4];
    u8 unk_08[0x28];
    void *unk_30;
} UnkStruct_ov90_0225BAA0_Inner;

typedef struct UnkStruct_ov90_0225BAA0 {
    u8 unk_00[7];
    u8 unk_07;
    u8 unk_08[0xC];
    u8 unk_14;
    u8 unk_15[3];
    UnkStruct_ov90_0225BAA0_Inner *unk_18;
    u8 unk_1C[0x14];
    u32 unk_30;
} UnkStruct_ov90_0225BAA0;

extern void ov45_0222ACB8(void *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6);

void ov90_0225BAA0(UnkStruct_ov90_0225BAA0 *param0) {
    if (param0->unk_14 > 0) {
        if (param0->unk_30 >= 10) {
            ov45_0222ACB8(param0->unk_18->unk_30, param0->unk_07, param0->unk_14, param0->unk_18->unk_04[0], param0->unk_18->unk_04[1], param0->unk_18->unk_04[2], param0->unk_18->unk_04[3]);
        }
    }
}
