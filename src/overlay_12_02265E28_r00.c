#include "global.h"

#include "battle/battle_system.h"

#include "filesystem.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct Ov12Terrain {
    u8 filler_0[4];
    BattleSystem *battleSystem;
    u8 side;
    u8 terrainType;
} Ov12Terrain;

extern const u16 ov12_0226E0D0[];
extern const u16 ov12_0226E0A0[];
extern const u16 ov12_0226E168[][3];

#pragma opt_common_subs off

void ov12_02265E28(Ov12Terrain *terrain) {
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    int charNarcIdx, charResId, cellNarcIdx, cellResId, animNarcIdx, animResId;
    int timeOffset;
    NARC *narc = NARC_New(NARC_a_0_0_8, HEAP_ID_BATTLE);

    spriteSystem = BattleSystem_GetSpriteSystem(terrain->battleSystem);
    spriteManager = BattleSystem_GetSpriteManager(terrain->battleSystem);
    timeOffset = ov12_0223B52C(terrain->battleSystem);
    if (terrain->side == 0) {
        charNarcIdx = ov12_0226E0D0[terrain->terrainType];
        charResId = 20013;
        cellNarcIdx = 128;
        cellResId = 20005;
        animNarcIdx = 129;
        animResId = 20005;
    } else {
        charNarcIdx = ov12_0226E0A0[terrain->terrainType];
        charResId = 20014;
        cellNarcIdx = 131;
        cellResId = 20006;
        animNarcIdx = 132;
        animResId = 20006;
    }
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, charNarcIdx, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, charResId);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(BattleSystem_GetPaletteData(terrain->battleSystem), PLTTBUF_MAIN_OBJ, spriteSystem, spriteManager, narc, ov12_0226E168[terrain->terrainType][timeOffset], FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20009);
    PaletteData_LoadNarc(BattleSystem_GetPaletteData(terrain->battleSystem), NARC_a_0_0_8, ov12_0226E168[terrain->terrainType][timeOffset], HEAP_ID_BATTLE, PLTTBUF_MAIN_BG, 0x20, 7 * 16);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, cellNarcIdx, TRUE, cellResId);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, animNarcIdx, TRUE, animResId);
    NARC_Delete(narc);
}
