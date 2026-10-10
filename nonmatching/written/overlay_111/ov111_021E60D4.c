#include "global.h"

extern void *SpriteSystem_Alloc(u32 heapId);
extern void *SpriteManager_New(void *spriteSystem);
extern void SpriteSystem_Init(void *spriteSystem, const void *oamTemplate, const void *transferTemplate, u32 numPalettes);
extern void SpriteSystem_InitSprites(void *spriteSystem, void *spriteManager, u32 count);
extern void SpriteSystem_InitManagerWithCapacities(void *spriteSystem, void *spriteManager, const void *capacities);
extern void *SpriteSystem_GetRenderer(void *spriteSystem);
extern void G2dRenderer_SetSubSurfaceCoords(void *renderer, u32 x, u32 y);
extern void GfGfx_EngineATogglePlanes(u32 planes, u32 enable);
extern void GfGfx_EngineBTogglePlanes(u32 planes, u32 enable);

typedef struct UnkStruct_ov111_021E60D4 {
    u32 heapId;
    u8 unk4[8];
    void *spriteSystem;
    void *spriteManager;
} UnkStruct_ov111_021E60D4;

const u32 ov111_021E6B8C[5] = { 0x00000000, 0x00020000, 0x00004000, 0x00100010, 0x00100010 };
const u32 ov111_021E6BA0[6] = { 3, 2, 2, 2, 0, 0 };
const u32 ov111_021E6BB8[8] = { 0, 0x80, 0, 0x20, 0, 0x80, 0, 0x20 };

void ov111_021E60D4(UnkStruct_ov111_021E60D4 *data) {
    u32 oam[8];
    u32 transfer[5];
    u32 capacities[6];
    int i;

    data->spriteSystem = SpriteSystem_Alloc(data->heapId);
    data->spriteManager = SpriteManager_New(data->spriteSystem);
    for (i = 0; i < 8; i++) {
        oam[i] = ov111_021E6BB8[i];
    }
    for (i = 0; i < 5; i++) {
        transfer[i] = ov111_021E6B8C[i];
    }
    transfer[0] = 0x20;
    SpriteSystem_Init(data->spriteSystem, oam, transfer, 0x20);
    SpriteSystem_InitSprites(data->spriteSystem, data->spriteManager, 0x20);
    for (i = 0; i < 6; i++) {
        capacities[i] = ov111_021E6BA0[i];
    }
    SpriteSystem_InitManagerWithCapacities(data->spriteSystem, data->spriteManager, capacities);
    G2dRenderer_SetSubSurfaceCoords(SpriteSystem_GetRenderer(data->spriteSystem), 0, 0x20C000);
    GfGfx_EngineATogglePlanes(0x10, 1);
    GfGfx_EngineBTogglePlanes(0x10, 1);
}
