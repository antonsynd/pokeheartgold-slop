#include "global.h"

#include "unk_02005D10.h"

typedef struct UnkStruct_ov59_0223B2B4 {
    u8 padding_00[0x49];
    u8 unk_49;
    u8 unk_4A;
} UnkStruct_ov59_0223B2B4;

void ov59_0223BAE8(UnkStruct_ov59_0223B2B4 *param0);
void ov59_0223AEB0(UnkStruct_ov59_0223B2B4 *param0, u32 param1);
void ov59_0223BC88(UnkStruct_ov59_0223B2B4 *param0, u32 param1);

int ov59_0223B2B4(UnkStruct_ov59_0223B2B4 *param0, u32 param1) {
    switch (param1) {
    case 0:
        ov59_0223BAE8(param0);
        PlaySE(0x5DC);
        ov59_0223AEB0(param0, 0);
        return 4;
    case 1:
        PlaySE(0x5DC);
        ov59_0223AEB0(param0, 1);
        return 1;
    case 2:
        param0->unk_4A = (param0->unk_4A - 1 + param0->unk_49) % param0->unk_49;
        PlaySE(0x5DC);
        ov59_0223BC88(param0, param0->unk_4A);
        return 2;
    case 3:
        param0->unk_4A = (param0->unk_4A + 1) % param0->unk_49;
        PlaySE(0x5DC);
        ov59_0223BC88(param0, param0->unk_4A);
        return 2;
    default:
        return 2;
    }
}
