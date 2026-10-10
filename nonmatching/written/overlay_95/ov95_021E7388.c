#include "global.h"
#include "assert.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov95_021E7388 {
    u8 filler_00[4];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_0C[4];
    ManagedSprite *sprite;
} UnkStruct_ov95_021E7388;

extern const ManagedSpriteTemplate ov95_021E782C;

void ov95_021E7388(UnkStruct_ov95_021E7388 *param0, int param1, int param2, int param3, int param4) {
    ManagedSpriteTemplate tmpl = ov95_021E782C;
    SpriteSystem *spriteSystem = param0->spriteSystem;
    SpriteManager *spriteManager = param0->spriteManager;
    ManagedSprite *sprite;

    GF_ASSERT(param0 != NULL);
    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);

    tmpl.x = 0x80;
    tmpl.y = 0x48;
    tmpl.animation = 1;
    tmpl.resIdList[0] = param1;
    tmpl.resIdList[1] = param2;
    tmpl.resIdList[2] = param3;
    tmpl.resIdList[3] = param4;
    sprite = SpriteSystem_NewSprite(spriteSystem, spriteManager, &tmpl);
    ManagedSprite_SetAnimateFlag(sprite, 1);
    ManagedSprite_SetDrawFlag(sprite, 0);
    param0->sprite = sprite;
}
