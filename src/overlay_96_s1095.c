#include "global.h"

#include "sprite_system.h"
#include "unk_02009D48.h"

typedef struct Ov96_0220EA08 {
    enum HeapID heapId;
    u8 filler_04[8];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_14[8];
    void *unk1C;
} Ov96_0220EA08;

extern const SpriteResourceCountsListUnion ov96_0221CF40;
extern const OamManagerParam ov96_0221CF74;
extern const OamCharTransferParam ov96_0221CF2C;

void *ov96_021E9A78(enum HeapID heapId, int a1, int a2);

void ov96_0220EA08(Ov96_0220EA08 *a0) {
    SpriteResourceCountsListUnion counts = ov96_0221CF40;
    OamManagerParam oamManagerParam = ov96_0221CF74;
    OamCharTransferParam oamTransferParam = ov96_0221CF2C;

    oamTransferParam.maxTasks = 0x80;
    a0->spriteSystem = SpriteSystem_Alloc(a0->heapId);
    a0->spriteManager = SpriteManager_New(a0->spriteSystem);
    SpriteSystem_Init(a0->spriteSystem, &oamManagerParam, &oamTransferParam, 0x20);
    SpriteSystem_InitSprites(a0->spriteSystem, a0->spriteManager, 0x80);
    SpriteSystem_InitManagerWithCapacities(a0->spriteSystem, a0->spriteManager, &counts);
    G2dRenderer_SetSubSurfaceCoords(SpriteSystem_GetRenderer(a0->spriteSystem), 0, FX32_CONST(480));
    a0->unk1C = ov96_021E9A78(a0->heapId, 0xAA7, 1);
}
