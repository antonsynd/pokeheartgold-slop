#include "global.h"

#include "map_object.h"

typedef struct UnkStruct_ov01_02207318 {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    const void *unk_04;
} UnkStruct_ov01_02207318;

extern const ObjectEventGraphicsInfo ov01_022074A8[];
extern const UnkStruct_ov01_02207318 ov01_02207318[];

const UnkStruct_ov01_02207318 *sub_021FA248(int spriteId) {
    const ObjectEventGraphicsInfo *info = ov01_022074A8;

    do {
        if (info->spriteId == spriteId) {
            u32 idx = info->unk4_10;

            if (idx == 0xFF) {
                GF_ASSERT(idx != 0xFF);
                return &ov01_02207318[0];
            }
            return &ov01_02207318[idx];
        }
        info++;
    } while (info->spriteId != 0xFFFF);
    GF_ASSERT(FALSE);
    return NULL;
}
