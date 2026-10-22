// unk_02077678.h declares these with the types upstream gave them; this file
// was matched against its own declarations. Shadow the header's.
#define TypeIconGfx_GetPlttOverride                           TypeIconGfx_GetPlttOverride_UpstreamDecl
#define SpriteSystem_LoadMoveTypeAndCategoryIconsPlttToBuffer SpriteSystem_LoadMoveTypeAndCategoryIconsPlttToBuffer_UpstreamDecl
#define GetMoveCategoryIconGfxCharFileId                      GetMoveCategoryIconGfxCharFileId_UpstreamDecl
#define GetMoveCategoryIconGfxPlttOverride                    GetMoveCategoryIconGfxPlttOverride_UpstreamDecl
#include "unk_02077678.h"
#undef TypeIconGfx_GetPlttOverride
#undef SpriteSystem_LoadMoveTypeAndCategoryIconsPlttToBuffer
#undef GetMoveCategoryIconGfxCharFileId
#undef GetMoveCategoryIconGfxPlttOverride

#include "global.h"

static const u8 sMoveCategoryGfxPlttOverrides[] = { 0x00, 0x01, 0x00 };
static const u32 sMoveCategoryGfxCharFileIds[] = { 0xF4, 0xF6, 0xF5 };
static const u32 sTypeIconGfxCharFileIds[] = { 0xEA, 0xE1, 0xE3, 0xEB, 0xE5, 0xED, 0xE7, 0xE4, 0xEE, 0xEC, 0xE2, 0xF1, 0xE9, 0xDE, 0xDF, 0xE6, 0xDD, 0xE0, 0xF0, 0xDB, 0xDC, 0xE8, 0xEF };
static const u8 sTypeIconGfxPlttOverrides[] = { 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x02, 0x01, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00, 0x01, 0x01, 0x02, 0x00, 0x00, 0x01, 0x01, 0x02, 0x00 };

NarcId GetMoveTypeAndCategoryIconPlttFileId(void);
int TypeIconGfx_GetPlttOverride(int idx);
void SpriteSystem_LoadMoveTypeAndCategoryIconsPltt(SpriteSystem *ss, SpriteManager *sm, int a2, int a3);
int GetMoveCategoryIconGfxCharFileId(int idx);
int GetMoveCategoryIconGfxPlttOverride(int idx);
NarcId GetMoveCategoryIconGfxNarcId(void);
void SpriteSystem_LoadMoveCategoryIconCharResObj(SpriteSystem *ss, SpriteManager *sm, NNS_G2D_VRAM_TYPE vramType, int type, int a4);

static NarcId GetMoveTypeAndCategoryIconCellFileId(void);
static NarcId GetMoveTypeAndCategoryIconAnimFileId(void);

int TypeIconGfx_GetCharFileId(int moveType) {
    GF_ASSERT((u32)moveType < 0x17);
    return sTypeIconGfxCharFileIds[moveType];
}

NarcId GetMoveTypeAndCategoryIconPlttFileId(void) {
    return NARC_application_zukanlist_zkn_data_zukan_data;
}

static NarcId GetMoveTypeAndCategoryIconCellFileId(void) {
    return NARC_a_2_4_0;
}

static NarcId GetMoveTypeAndCategoryIconAnimFileId(void) {
    return NARC_a_2_4_1;
}

int TypeIconGfx_GetPlttOverride(int idx) {
    GF_ASSERT((u32)idx < 0x17);
    return sTypeIconGfxPlttOverrides[idx];
}

NarcId TypeIconGfx_GetNarcId(void) {
    return NARC_a_0_0_8;
}

void SpriteSystem_LoadMoveTypeIconCharResObj(SpriteSystem *spriteSystem, SpriteManager *spriteManager, NNS_G2D_VRAM_TYPE vramType, int type, int a4) {
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, TypeIconGfx_GetNarcId(), TypeIconGfx_GetCharFileId(type), 1, vramType, a4);
}

void SpriteSystem_LoadMoveTypeAndCategoryIconsPltt(SpriteSystem *ss, SpriteManager *sm, int a2, int a3) {
    SpriteSystem_LoadPlttResObj(ss, sm, TypeIconGfx_GetNarcId(), GetMoveTypeAndCategoryIconPlttFileId(), 0, 3, a2, a3);
}

void SpriteSystem_LoadMoveTypeAndCategoryIconsPlttToBuffer(PaletteData *paletteData, int a1, SpriteSystem *spriteSystem, SpriteManager *spriteManager, int a4, int a5) {
    SpriteSystem_LoadPaletteBuffer(paletteData, (PaletteBufferId)a1, spriteSystem, spriteManager, TypeIconGfx_GetNarcId(), GetMoveTypeAndCategoryIconPlttFileId(), 0, 3, a4, a5);
}

void SpriteSystem_LoadMoveTypeAndCategoryIconsCellAndAnim(SpriteSystem *spriteSystem, SpriteManager *spriteManager, int a2, int a3) {
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, TypeIconGfx_GetNarcId(), GetMoveTypeAndCategoryIconCellFileId(), 1, a2);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, TypeIconGfx_GetNarcId(), GetMoveTypeAndCategoryIconAnimFileId(), 1, a3);
}

void SpriteManager_UnloadMoveTypeIconCharResObjByTag(SpriteManager *spriteManager, int a1) {
    SpriteManager_UnloadCharObjById(spriteManager, a1);
}

void SpriteManager_UnloadMoveTypeAndCategoryIconPlttResObjByTag(SpriteManager *spriteManager, int a1) {
    SpriteManager_UnloadPlttObjById(spriteManager, a1);
}

void SpriteManager_UnloadMoveTypeAndCategoryIconCellAndAnimResObjsByTags(SpriteManager *spriteManager, int a1, int a2) {
    SpriteManager_UnloadCellObjById(spriteManager, a1);
    SpriteManager_UnloadAnimObjById(spriteManager, a2);
}

ManagedSprite *SpriteSystem_CreateMoveTypeIconSprite(SpriteSystem *spriteSystem, SpriteManager *spriteManager, int type, ManagedSpriteTemplate *spriteTemplate) {
    ManagedSpriteTemplate local = *spriteTemplate;
    local.pal = TypeIconGfx_GetPlttOverride(type);
    return SpriteSystem_NewSprite(spriteSystem, spriteManager, &local);
}

void MoveTypeIconSprite_DeleteAndFreeResources(ManagedSprite *managedSprite) {
    Sprite_DeleteAndFreeResources(managedSprite);
}

int GetMoveCategoryIconGfxCharFileId(int idx) {
    GF_ASSERT((u32)idx < 3);
    return sMoveCategoryGfxCharFileIds[idx];
}

int GetMoveCategoryIconGfxPlttOverride(int idx) {
    GF_ASSERT((u32)idx < 3);
    return sMoveCategoryGfxPlttOverrides[idx];
}

NarcId GetMoveCategoryIconGfxNarcId(void) {
    return NARC_a_0_0_8;
}

void SpriteSystem_LoadMoveCategoryIconCharResObj(SpriteSystem *ss, SpriteManager *sm, NNS_G2D_VRAM_TYPE vramType, int type, int a4) {
    SpriteSystem_LoadCharResObj(ss, sm, GetMoveCategoryIconGfxNarcId(), GetMoveCategoryIconGfxCharFileId(type), 1, vramType, a4);
}

void SpriteManager_UnloadMoveCategoryIconCharResObjByTag(SpriteManager *spriteManager, int a1) {
    SpriteManager_UnloadCharObjById(spriteManager, a1);
}

void MoveCategoryIconSprite_DeleteAndFreeResources(ManagedSprite *managedSprite) {
    Sprite_DeleteAndFreeResources(managedSprite);
}
