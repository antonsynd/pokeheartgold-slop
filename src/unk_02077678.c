#include "unk_02077678.h"

#include "global.h"

static const u8 _02100038[] = { 0x00, 0x01, 0x00 };
static const u32 _0210003C[] = { 0xF4, 0xF6, 0xF5 };
static const u32 _02100048[] = { 0xEA, 0xE1, 0xE3, 0xEB, 0xE5, 0xED, 0xE7, 0xE4, 0xEE, 0xEC, 0xE2, 0xF1, 0xE9, 0xDE, 0xDF, 0xE6, 0xDD, 0xE0, 0xF0, 0xDB, 0xDC, 0xE8, 0xEF };
static const u8 _021000A4[] = { 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x02, 0x01, 0x00, 0x02, 0x00, 0x01, 0x02, 0x00, 0x01, 0x01, 0x02, 0x00, 0x00, 0x01, 0x01, 0x02, 0x00 };

NarcId sub_02077690(void);
int sub_0207769C(int idx);
void sub_020776EC(SpriteSystem *ss, SpriteManager *sm, int a2, int a3);
int sub_02077800(int idx);
int sub_02077818(int idx);
NarcId sub_02077830(void);
void sub_02077834(SpriteSystem *ss, SpriteManager *sm, NNS_G2D_VRAM_TYPE vramType, int type, int a4);

static NarcId sub_02077694(void);
static NarcId sub_02077698(void);

int sub_02077678(int moveType) {
    GF_ASSERT((u32)moveType < 0x17);
    return _02100048[moveType];
}

NarcId sub_02077690(void) {
    return NARC_application_zukanlist_zkn_data_zukan_data;
}

static NarcId sub_02077694(void) {
    return NARC_a_2_4_0;
}

static NarcId sub_02077698(void) {
    return NARC_a_2_4_1;
}

int sub_0207769C(int idx) {
    GF_ASSERT((u32)idx < 0x17);
    return _021000A4[idx];
}

NarcId sub_020776B4(void) {
    return NARC_a_0_0_8;
}

void sub_020776B8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, NNS_G2D_VRAM_TYPE vramType, int type, int a4) {
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, sub_020776B4(), sub_02077678(type), 1, vramType, a4);
}

void sub_020776EC(SpriteSystem *ss, SpriteManager *sm, int a2, int a3) {
    SpriteSystem_LoadPlttResObj(ss, sm, sub_020776B4(), sub_02077690(), 0, 3, a2, a3);
}

void sub_02077720(PaletteData *paletteData, int a1, SpriteSystem *spriteSystem, SpriteManager *spriteManager, int a4, int a5) {
    SpriteSystem_LoadPaletteBuffer(paletteData, (PaletteBufferId)a1, spriteSystem, spriteManager, sub_020776B4(), sub_02077690(), 0, 3, a4, a5);
}

void sub_0207775C(SpriteSystem *spriteSystem, SpriteManager *spriteManager, int a2, int a3) {
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, sub_020776B4(), sub_02077694(), 1, a2);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, sub_020776B4(), sub_02077698(), 1, a3);
}

void sub_020777A4(SpriteManager *spriteManager, int a1) {
    SpriteManager_UnloadCharObjById(spriteManager, a1);
}

void sub_020777AC(SpriteManager *spriteManager, int a1) {
    SpriteManager_UnloadPlttObjById(spriteManager, a1);
}

void sub_020777B4(SpriteManager *spriteManager, int a1, int a2) {
    SpriteManager_UnloadCellObjById(spriteManager, a1);
    SpriteManager_UnloadAnimObjById(spriteManager, a2);
}

ManagedSprite *sub_020777C8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, int type, ManagedSpriteTemplate *spriteTemplate) {
    ManagedSpriteTemplate local = *spriteTemplate;
    local.pal = sub_0207769C(type);
    return SpriteSystem_NewSprite(spriteSystem, spriteManager, &local);
}

void thunk_ManagedSprite_DeleteAndFreeResources(ManagedSprite *managedSprite) {
    Sprite_DeleteAndFreeResources(managedSprite);
}

int sub_02077800(int idx) {
    GF_ASSERT((u32)idx < 3);
    return _0210003C[idx];
}

int sub_02077818(int idx) {
    GF_ASSERT((u32)idx < 3);
    return _02100038[idx];
}

NarcId sub_02077830(void) {
    return NARC_a_0_0_8;
}

void sub_02077834(SpriteSystem *ss, SpriteManager *sm, NNS_G2D_VRAM_TYPE vramType, int type, int a4) {
    SpriteSystem_LoadCharResObj(ss, sm, sub_02077830(), sub_02077800(type), 1, vramType, a4);
}

void sub_02077868(SpriteManager *spriteManager, int a1) {
    SpriteManager_UnloadCharObjById(spriteManager, a1);
}

void sub_02077870(ManagedSprite *managedSprite) {
    Sprite_DeleteAndFreeResources(managedSprite);
}
