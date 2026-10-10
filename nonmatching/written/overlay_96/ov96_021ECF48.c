#include "global.h"
#include "assert.h"
#include "math_util.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov96_021ECF48 {
    ManagedSprite *sprite;
    fx32 unk_04;
    fx32 unk_08;
    fx32 x;
    fx32 y;
    u32 flags;
} UnkStruct_ov96_021ECF48;

BOOL ov96_021ECF48(UnkStruct_ov96_021ECF48 *param0) {
    BOOL result = FALSE;
    fx32 sin;
    s64 product;
    u32 flags;
    u32 rand;

    if (param0 == NULL) {
        GF_AssertFail();
    }
    sin = GF_SinDeg((u16)(((param0->flags >> 16) & 0xf) * (u16)param0->flags));
    product = (s64)sin * (s64)param0->unk_04;
    param0->x = param0->x + (fx32)((product + 0x800) >> 12);
    param0->y = param0->y + param0->unk_08;
    ManagedSprite_SetPositionFxXYWithSubscreenOffset(param0->sprite, param0->x, param0->y, 0x20c000);
    if ((param0->y >> 12) > 0xe0) {
        flags = param0->flags;
        if ((flags >> 21) & 1) {
            param0->flags = flags & 0xFFEFFFFF;
            Sprite_DeleteAndFreeResources(param0->sprite);
            param0->sprite = NULL;
        } else {
            param0->flags = flags | 0x200000;
            result = TRUE;
        }
    }
    rand = MTRandom();
    param0->flags = (u16)((param0->flags & 0xFFFF) + (rand & 1)) | (param0->flags & 0xFFFF0000);
    return result;
}
