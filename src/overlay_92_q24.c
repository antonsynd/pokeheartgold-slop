#include "global.h"

#include "sprite_system.h"
#include "unk_02009D48.h"

typedef struct Ov92_0225D7CC {
    u8 filler_00[0x50];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
} Ov92_0225D7CC;

extern const OamCharTransferParam ov92_022638C0;
extern const SpriteResourceCountsListUnion ov92_022638D4;
extern const OamManagerParam ov92_022638EC;

void ov92_0225D7CC(Ov92_0225D7CC *a0) {
    a0->spriteSystem = SpriteSystem_Alloc(HEAP_ID_113);
    {
        OamManagerParam oamManagerParam = ov92_022638EC;
        OamCharTransferParam oamTransferParam = ov92_022638C0;

        SpriteSystem_Init(a0->spriteSystem, &oamManagerParam, &oamTransferParam, 0x20);
    }
    {
        SpriteResourceCountsListUnion counts = ov92_022638D4;

        a0->spriteManager = SpriteManager_New(a0->spriteSystem);
        GF_ASSERT(SpriteSystem_InitSprites(a0->spriteSystem, a0->spriteManager, 0xFF));
        GF_ASSERT(SpriteSystem_InitManagerWithCapacities(a0->spriteSystem, a0->spriteManager, &counts));
    }
    G2dRenderer_SetSubSurfaceCoords(SpriteSystem_GetRenderer(a0->spriteSystem), 0, FX32_CONST(256));
}
