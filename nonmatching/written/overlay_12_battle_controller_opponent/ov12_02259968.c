#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "pokemon.h"
#include "pokepic.h"
#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct {
    u8 command;
    u8 gender : 2;
    u8 isShiny : 1;
    u8 formNum : 5;
    u16 species;
    u32 personality;
    u32 cryMod;
} UnkStruct_ov12_02259968_Message;

typedef struct {
    BattleSystem *battleSys;
    void *battlerData;
    Pokepic *sprite;
    UnkBattleSystemSub17C *terrain;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    s16 targetPos;
    u16 species;
    u32 cryMod;
    u32 battlerType;
    u32 unk_20;
    u32 nature;
    u32 isShiny;
    u8 formNum;
    u8 pad_2D[3];
} UnkStruct_ov12_02259968;

extern s16 ov07_022377F4[][3];
extern s16 ov07_022377DC[][2];

void ov12_0225B494(SysTask *task, void *data);
void ov12_0225B7B8(SysTask *task, void *data);
void *ov12_022612A4(BattleSystem *battleSys, PokepicManager *manager, PokepicTemplate *tmpl, int x, int y, int z, int yOffset, int height, int shadowXOffset, int shadowSize, int battler, void *animScript, int unk);
void sub_02005B58(int arg);

void ov12_02259968(BattleSystem *battleSys, void *battlerData, UnkStruct_ov12_02259968_Message *message)
{
    PokepicTemplate spriteTemplate;
    PokepicManager *manager;
    u8 animScript[0x29];
    UnkStruct_ov12_02259968 *data;
    u8 yOffset;
    s8 height;
    s8 shadowXOffset;
    u8 shadowSize;
    int spriteYCenter;
    u8 shiny;

    manager = BattleSystem_GetPokepicManager(battleSys);
    BattleSystem_GetBattleType(battleSys);

    data = Heap_Alloc(5, 0x30);
    data->state = 0;

    if (((u8 *)battlerData)[0x195] & 1) {
        data->face = 2;
        data->terrain = ov12_0223A8F4(battleSys, 1);
        ManagedSprite_SetPositionXY(*(ManagedSprite **)data->terrain, ov07_022377F4[((u8 *)battlerData)[0x195] & 1][0], 0x58);
    } else {
        data->face = 0;
        data->terrain = ov12_0223A8F4(battleSys, 0);
        ManagedSprite_SetPositionXY(*(ManagedSprite **)data->terrain, ov07_022377F4[((u8 *)battlerData)[0x195] & 1][0], 0x88);
    }

    shiny = message->isShiny ? 1 : 0;
    GetMonSpriteCharAndPlttNarcIdsEx(&spriteTemplate, message->species, message->gender, data->face, shiny, message->formNum, message->personality);

    yOffset = GetMonPicHeightBySpeciesGenderForm(message->species, message->gender, data->face, message->formNum, message->personality);

    ((void (*)(NARC *, s8 *, u16))sub_020729D8)(*(NARC **)((u8 *)battlerData + 0x1a4), &height, message->species);
    ((void (*)(NARC *, s8 *, u16))sub_020729FC)(*(NARC **)((u8 *)battlerData + 0x1a4), &shadowXOffset, message->species);
    ((void (*)(NARC *, u8 *, u16))sub_02072A20)(*(NARC **)((u8 *)battlerData + 0x1a4), &shadowSize, message->species);
    NARC_ReadPokepicAnimScript(*(NARC **)((u8 *)battlerData + 0x1a4), (PokepicAnimScript *)animScript, message->species, ((u8 *)battlerData)[0x195]);

    *(void **)((u8 *)battlerData + 0x20) = ov12_022612A4(battleSys,
        manager,
        &spriteTemplate,
        ov07_022377F4[((u8 *)battlerData)[0x195]][0],
        ov07_022377F4[((u8 *)battlerData)[0x195]][1],
        ov07_022377F4[((u8 *)battlerData)[0x195]][2],
        yOffset,
        height,
        shadowXOffset,
        shadowSize,
        ((u8 *)battlerData)[0x194],
        animScript,
        0);
    data->sprite = *(Pokepic **)((u8 *)battlerData + 0x20);

    if (data->face == 2) {
        Pokepic_StartPaletteFade(data->sprite, 8, 8, 0, 0);
    }

    if (data->face == 2 && (BattleSystem_GetBattleSpecial(battleSys) & 0x40)) {
        spriteYCenter = Pokepic_GetAttr(data->sprite, 1);
        Pokepic_SetAttr(data->sprite, 0x2e, 0);
        Pokepic_SetAttr(data->sprite, 0, 0xc0);
        Pokepic_SetAttr(data->sprite, 1, spriteYCenter - 0x88);
        data->targetPos = spriteYCenter;
    } else {
        data->targetPos = ov07_022377DC[((u8 *)battlerData)[0x195]][0];
    }

    data->battleSys = battleSys;
    data->battlerData = battlerData;
    data->command = message->command;
    data->battler = ((u8 *)battlerData)[0x194];
    data->species = message->species;
    data->formNum = message->formNum;
    data->cryMod = message->cryMod;
    data->battlerType = ((u8 *)battlerData)[0x195];
    data->nature = GetNatureFromPersonality(message->personality);
    data->isShiny = message->isShiny;

    if (data->face == 2 && (BattleSystem_GetBattleSpecial(battleSys) & 0x40)) {
        SysTask_CreateOnMainQueue(ov12_0225B7B8, data, 0);
    } else {
        SysTask_CreateOnMainQueue(ov12_0225B494, data, 0);
    }

    sub_02005B58(1);
}
