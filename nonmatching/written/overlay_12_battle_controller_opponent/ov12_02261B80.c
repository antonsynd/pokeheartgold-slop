#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef struct {
    SpriteSystem *spriteSystem;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    UnkBattleSystemSub1D0 *pokemonSpriteData[4];
    u8 battlerTypes[4];
    void *pokemonSprites[4];
    u32 battleType;
    u16 battlerSpecies[4];
    u8 battlerGenders[4];
    u8 battlerShinyFlags[4];
    u8 battlerForms[4];
    u32 battlerPersonalities[4];
    u32 battlerMoveEffects[4];
    u32 moveArcID;
    u32 bgNarcID;
    u32 bgTilesMemberIdx;
    u32 bgPaletteMemberIdx;
    u32 bgTilemapMemberIdx;
    u32 bgPaletteDestStart;
    u32 bgPaletteSrcSize;
    SOUND_CHATOT *chatotCry;
    u8 *bgTiles;
    u16 *bgPaletteBuffer;
} UnkStruct_ov12_02261B80;

typedef struct {
    u8 pad_00[2];
    u16 move;
    u8 pad_04[0x14];
    u16 species[4];
    u8 genders[4];
    u8 isShiny[4];
    u8 formNums[4];
    u32 personalities[4];
    u32 moveEffectMasks[4];
    int animMode;
    int secondaryAnimID;
} UnkStruct_ov12_02261B80_Animation;

void ov07_0221C01C(void *battleAnimSystem, void *animation, u16 move, void *context);

void ov12_02261B80(BattleSystem *battleSys, void *battlerData, void *battleAnimSystem, UnkStruct_ov12_02261B80_Animation *animation)
{
    UnkStruct_ov12_02261B80 context;
    u32 move;
    int i;

    if (animation->animMode == 0) {
        context.moveArcID = 10;
        move = animation->move;
    } else {
        context.moveArcID = 0x3d;
        move = animation->secondaryAnimID;
    }

    context.bgConfig = BattleSystem_GetBgConfig(battleSys);
    context.paletteData = BattleSystem_GetPaletteData(battleSys);
    context.spriteSystem = BattleSystem_GetSpriteSystem(battleSys);

    for (i = 0; i < 4; i++) {
        context.pokemonSpriteData[i] = ov12_0223BB88(battleSys, i);
        context.battlerSpecies[i] = animation->species[i];
        context.battlerGenders[i] = animation->genders[i];
        context.battlerShinyFlags[i] = animation->isShiny[i];
        context.battlerForms[i] = animation->formNums[i];
        context.battlerPersonalities[i] = animation->personalities[i];
        context.battlerMoveEffects[i] = animation->moveEffectMasks[i];
    }

    ov12_0223C1C4(battleSys, context.battlerTypes);
    ov12_0223C1F4(battleSys, context.pokemonSprites);

    context.battleType = BattleSystem_GetBattleType(battleSys);
    context.chatotCry = BattleSystem_GetChatotVoice(battleSys, ((u8 *)battlerData)[0x194]);
    context.bgTiles = ov12_0223BAD0(battleSys);
    context.bgPaletteBuffer = ov12_0223BAD8(battleSys);
    context.bgNarcID = 7;
    context.bgTilesMemberIdx = BattleSystem_GetBackgroundId(battleSys) + 3;
    context.bgPaletteMemberIdx = ov12_0223B52C(battleSys) + BattleSystem_GetBackgroundId(battleSys) * 3 + 0xb0;
    context.bgTilemapMemberIdx = 2;
    context.bgPaletteDestStart = 0;
    context.bgPaletteSrcSize = 8;

    ov07_0221C01C(battleAnimSystem, animation, move, &context);
}
