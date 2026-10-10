#include "global.h"

#include "system.h"

typedef struct UnkStruct_ov59_0223B358 {
    u8 padding_00[0x44];
    u32 unk_44;
} UnkStruct_ov59_0223B358;

int ov59_0223B2B4(UnkStruct_ov59_0223B358 *param0, u32 param1);

int ov59_0223B358(UnkStruct_ov59_0223B358 *param0) {
    int keys;

    keys = gSystem.newKeys;
    if (keys & 0xCF3) {
        param0->unk_44 = 0;
    }
    keys = gSystem.newKeys;
    if (keys & 2) {
        return ov59_0223B2B4(param0, 1);
    }
    if (keys & 1) {
        return ov59_0223B2B4(param0, 0);
    }
    if (keys & 0x40) {
        return ov59_0223B2B4(param0, 2);
    }
    if (keys & 0x80) {
        return ov59_0223B2B4(param0, 3);
    }
    return 2;
}
