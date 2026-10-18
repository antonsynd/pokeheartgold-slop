#include "global.h"

#include "sprite_system.h"

typedef struct Ov96Contestant {
    u32 unk0_0 : 18;
    u32 points : 8;
    u32 level : 6;
} Ov96Contestant;

typedef struct Ov96_0220D0F8 {
    u8 filler_00[4];
    Ov96Contestant contestants[4];
    u32 id : 8;
    u32 unk14_8 : 8;
    u32 score : 8;
    u32 state : 6;
    u32 current : 2;
    u32 unk18_0 : 11;
    u32 timer : 11;
    u32 unk18_22 : 8;
    u32 slot : 2;
    u32 unk1C_0 : 9;
    u32 flag : 1;
    u32 unk1C_10 : 22;
} Ov96_0220D0F8;

extern const ManagedSpriteTemplate ov96_0221CE84;
extern const ManagedSpriteTemplate ov96_0221CEB8;

void ov96_0220D0F8(Ov96_0220D0F8 *a0) {
    Ov96Contestant *contestant = &a0->contestants[a0->current];

    a0->flag = 0;
    a0->timer = 0;
    a0->score = 0;
    contestant->points = 10;
}

ManagedSprite *ov96_0220D13C(SpriteSystem *spriteSystem, SpriteManager *spriteManager, s16 x, s16 y, u16 animation, u16 priority) {
    ManagedSpriteTemplate template = ov96_0221CE84;
    ManagedSprite *sprite;

    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);

    template.x = x;
    template.y = y;
    template.animation = animation;
    template.drawPriority = priority;
    template.bgPriority = 1;
    sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &template, FX32_CONST(256));
    ManagedSprite_SetAnimateFlag(sprite, TRUE);
    return sprite;
}

ManagedSprite *ov96_0220D1A0(SpriteSystem *spriteSystem, SpriteManager *spriteManager, s16 x, s16 y, u16 animation, u16 priority) {
    ManagedSpriteTemplate template = ov96_0221CEB8;
    ManagedSprite *sprite;

    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);

    template.x = x;
    template.y = y;
    template.animation = animation;
    template.drawPriority = priority;
    sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &template, FX32_CONST(256));
    ManagedSprite_SetAnimateFlag(sprite, TRUE);
    return sprite;
}
