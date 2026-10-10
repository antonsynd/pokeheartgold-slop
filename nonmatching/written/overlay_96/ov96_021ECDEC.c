#include "global.h"
#include "assert.h"
#include "math_util.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov96_021ECDEC {
    ManagedSprite *sprite;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    u32 flags;
} UnkStruct_ov96_021ECDEC;

extern const ManagedSpriteTemplate ov96_0221B0BC;

void ov96_021ECDEC(UnkStruct_ov96_021ECDEC *param0, SpriteSystem *spriteSystem, SpriteManager *spriteManager) {
    ManagedSpriteTemplate tmpl;
    float f;
    u32 rem;

    if (param0 == NULL) {
        GF_AssertFail();
    }
    MI_CpuFill8(param0, 0, 0x18);

    if (MTRandom() % 5 != 0) {
        rem = MTRandom() % 5;
        f = (float)(rem << 12) + 0.5f;
    } else {
        rem = MTRandom() % 5;
        f = (float)(rem << 12) - 0.5f;
    }
    param0->unk_08 = ((int)f >> 1) + 0x1800;

    if (MTRandom() & 1) {
        f = (float)((MTRandom() << 31) >> 19) + 0.5f;
    } else {
        f = (float)((MTRandom() << 31) >> 19) - 0.5f;
    }
    param0->unk_04 = ((int)f + 0x19a) >> 1;

    if ((u8)MTRandom() != 0) {
        f = (float)((MTRandom() << 24) >> 12) + 0.5f;
    } else {
        f = (float)((MTRandom() << 24) >> 12) - 0.5f;
    }
    param0->unk_0C = (int)f;

    rem = MTRandom() % 5;
    param0->flags = ((param0->flags & 0xFFF0FFFF) | (((rem + 1) << 28) >> 12)) | 0x100000;

    tmpl = ov96_0221B0BC;
    tmpl.x = param0->unk_0C >> 12;
    if ((MTRandom() & 1) == 0) {
        tmpl.animation = 0xc;
    }
    param0->sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &tmpl, 0x20c000);
    ManagedSprite_SetAnimateFlag(param0->sprite, 1);
}
