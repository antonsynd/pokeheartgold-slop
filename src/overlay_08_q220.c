#include "global.h"

#include "sprite_system.h"

typedef struct BattleSystem BattleSystem;

typedef struct Ov08_02223D34_Sub {
    BattleSystem *battleSystem;
} Ov08_02223D34_Sub;

typedef struct Ov08_02223D34 {
    Ov08_02223D34_Sub *unk000;
    u8 filler_004[0x308];
    SpriteManager *spriteManager;
} Ov08_02223D34;

extern const SpriteResourceCountsListUnion ov08_02225D14;

SpriteSystem *BattleSystem_GetSpriteSystem(BattleSystem *battleSystem);

void ov08_02223D34(Ov08_02223D34 *a0) {
    SpriteResourceCountsListUnion capacities = ov08_02225D14;
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(a0->unk000->battleSystem);

    a0->spriteManager = SpriteManager_New(spriteSystem);
    SpriteSystem_InitSprites(spriteSystem, a0->spriteManager, 12);
    SpriteSystem_InitManagerWithCapacities(spriteSystem, a0->spriteManager, &capacities);
}
