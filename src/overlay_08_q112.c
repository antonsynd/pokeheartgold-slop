#include "global.h"

#include "sprite_system.h"

typedef struct BattleSystem BattleSystem;

typedef struct Ov08_0222061C_Sub {
    u8 filler_0[8];
    BattleSystem *battleSystem;
} Ov08_0222061C_Sub;

typedef struct Ov08_0222061C {
    Ov08_0222061C_Sub *unk0000;
    u8 filler_0004[0x1FB0];
    SpriteManager *spriteManager;
} Ov08_0222061C;

extern const SpriteResourceCountsListUnion ov08_0222541C;

SpriteSystem *BattleSystem_GetSpriteSystem(BattleSystem *battleSystem);

void ov08_0222061C(Ov08_0222061C *a0) {
    SpriteResourceCountsListUnion capacities = ov08_0222541C;
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(a0->unk0000->battleSystem);

    a0->spriteManager = SpriteManager_New(spriteSystem);
    SpriteSystem_InitSprites(spriteSystem, a0->spriteManager, 0x2B);
    SpriteSystem_InitManagerWithCapacities(spriteSystem, a0->spriteManager, &capacities);
}
