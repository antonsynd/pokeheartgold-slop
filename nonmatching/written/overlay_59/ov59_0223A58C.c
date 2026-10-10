#include "global.h"

#include "system.h"

typedef struct UnkStruct_ov59_0223A58C {
    u8 padding_00[0x40];
    u32 unk_40;
} UnkStruct_ov59_0223A58C;

int ov59_0223A48C(UnkStruct_ov59_0223A58C *param0, u32 param1);

int ov59_0223A58C(UnkStruct_ov59_0223A58C *param0) {
    int keys;

    keys = gSystem.newKeys;
    if (keys & 0xCF3) {
        param0->unk_40 = 0;
    }
    keys = gSystem.newKeys;
    if (keys & 2) {
        return ov59_0223A48C(param0, 1);
    }
    if (keys & 1) {
        return ov59_0223A48C(param0, 0);
    }
    if (keys & 0x40) {
        return ov59_0223A48C(param0, 2);
    }
    if (keys & 0x80) {
        return ov59_0223A48C(param0, 3);
    }
    if (keys & 0x10) {
        return ov59_0223A48C(param0, 4);
    }
    if (keys & 0x20) {
        return ov59_0223A48C(param0, 5);
    }
    return 6;
}
