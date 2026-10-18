#include "global.h"

#include "sprite_system.h"

extern const ManagedSpriteTemplate ov96_0221D944;

ManagedSprite *ov96_02219E00(SpriteSystem *spriteSystem, SpriteManager *spriteManager, s16 x, s16 y, u16 animation, u16 drawPriority) {
    ManagedSpriteTemplate template = ov96_0221D944;
    ManagedSprite *sprite;

    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);
    template.x = x;
    template.y = y;
    template.animation = animation;
    template.drawPriority = drawPriority;
    sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &template, FX32_CONST(480));
    ManagedSprite_SetAnimateFlag(sprite, TRUE);
    return sprite;
}
