#include "global.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov96_021ECFF8 {
    ManagedSprite *sprite;
    fx32 unk_04;
    fx32 unk_08;
    fx32 x;
    fx32 y;
} UnkStruct_ov96_021ECFF8;

extern const ManagedSpriteTemplate ov96_0221B0F0;

void ov96_021ECFF8(UnkStruct_ov96_021ECFF8 *param0, SpriteSystem *spriteSystem, SpriteManager *spriteManager) {
    ManagedSpriteTemplate tmpl = ov96_0221B0F0;

    param0->y = 0;
    tmpl.animation = ManagedSprite_GetActiveAnim(param0->sprite) - 0xb;
    tmpl.x = param0->x >> 12;
    tmpl.y = param0->y >> 12;
    Sprite_DeleteAndFreeResources(param0->sprite);
    param0->sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &tmpl, 0x20c000);
    ManagedSprite_SetAnimateFlag(param0->sprite, 1);
}
