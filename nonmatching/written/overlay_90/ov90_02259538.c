#include "global.h"

typedef struct UnkStruct_ov90_02259538 {
    u8 unk_00[0x20];
    u16 unk_20[2];
} UnkStruct_ov90_02259538;

extern u32 TextPrinterCheckActive(u8 printerId);

BOOL ov90_02259538(const UnkStruct_ov90_02259538 *param0, u32 param1) {
    u32 v0 = TextPrinterCheckActive(param0->unk_20[param1]);

    if (v0 == 0) {
        return 1;
    }

    return 0;
}
