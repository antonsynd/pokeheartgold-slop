#include "global.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_ov96_021EE830 {
    u8 filler_00[0x10];
    String *unk_10;
    u8 filler_14[0x14];
    u32 unk_28;
    u32 unk_2C;
    u32 unk_30;
    u32 unk_34; // 0..15: counter, bit 28: flag
} UnkStruct_ov96_021EE830;

BOOL ov96_021EE830(UnkStruct_ov96_021EE830 *param0) {
    u32 flags;
    u32 counter;

    if (param0->unk_2C != 0xFFFFFFFF) {
        if (TextPrinterCheckActive(param0->unk_2C) == 0) {
            param0->unk_34 = (param0->unk_34 & 0xFFFF0000) | 0x14;
            String_Delete(param0->unk_10);
            param0->unk_10 = NULL;
            param0->unk_2C = 0xFFFFFFFF;
        }
        param0->unk_34 = 0x10000000 | param0->unk_34;
    } else {
        flags = param0->unk_34;
        counter = flags & 0xFFFF;
        if (counter != 0) {
            if (param0->unk_28 == 0) {
                param0->unk_34 = flags & 0xEFFFFFFF;
            } else {
                param0->unk_34 = (flags & 0xFFFF0000) | ((counter - 1) & 0xFFFF);
                counter = (param0->unk_34 & 0xFFFF) != 0 ? 1 : 0;
                param0->unk_34 = (param0->unk_34 & 0xEFFFFFFF) | ((counter << 31) >> 3);
            }
        } else {
            param0->unk_34 = flags & 0xEFFFFFFF;
        }
    }
    return (param0->unk_34 << 3) >> 31;
}
