#include "global.h"

#include "constants/abilities.h"
#include "constants/battle.h"

#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"

typedef struct MoveAnimation {
    u8 command;
    u16 move;
    int damage;
    u16 power;
    u16 effectChance;
    u16 friendship;
    u16 isSubstitute : 1;
    u16 isTransformed : 1;
    u16 attackerIsSelected : 1;
    u16 defenderIsSelected : 1;
    u16 unused : 12;
    u32 fieldConditions;
    u16 attacker;
    u16 defender;
    u16 species[4];
    u8 genders[4];
    u8 isShiny[4];
    u8 formNums[4];
    u32 personalities[4];
    u32 moveEffectMasks[4];
    int animMode;
    int secondaryAnimID;
    int terrain;
} MoveAnimation;

void ov12_022643C8(BattleSystem *battleSystem, BattleContext *ctx, MoveAnimation *animation, int animMode, int secondaryAnimID, int attacker, int defender, u16 move) {
    int i;
    u8 slot;

    animation->command = 22;
    animation->move = move;
    animation->attacker = attacker;
    animation->defender = defender;
    animation->animMode = animMode;
    animation->secondaryAnimID = secondaryAnimID;
    animation->terrain = BattleSystem_GetTerrainId(battleSystem);
    animation->attackerIsSelected = FALSE;
    animation->defenderIsSelected = FALSE;

    if (ctx != NULL) {
        animation->damage = ctx->damage;
        if (ctx->movePower) {
            animation->power = ctx->movePower;
        } else {
            animation->power = ctx->trainerAIData.moveData[move].power;
        }
        animation->friendship = ctx->battleMons[attacker].friendship;
        if (CheckAbilityActive(battleSystem, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0
            && CheckAbilityActive(battleSystem, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0) {
            animation->fieldConditions = ctx->fieldCondition;
        } else {
            animation->fieldConditions = 0;
        }
        animation->effectChance = ctx->unk_2164;
        animation->isSubstitute = (ctx->battleMons[attacker].status2 & STATUS2_SUBSTITUTE) != 0;
        animation->isTransformed = (ctx->battleMons[attacker].status2 & STATUS2_TRANSFORM) != 0;

        for (i = 0; i < 4; i++) {
            animation->species[i] = ctx->battleMons[i].species;
            animation->isShiny[i] = ctx->battleMons[i].shiny;
            animation->formNums[i] = ctx->battleMons[i].form;
            animation->moveEffectMasks[i] = ctx->battleMons[i].moveEffectFlags;
            if (ctx->battleMons[i].status2 & STATUS2_TRANSFORM) {
                animation->genders[i] = ctx->battleMons[i].unk88.transformGender;
                animation->personalities[i] = ctx->battleMons[i].unk88.transformPersonality;
            } else {
                animation->genders[i] = ctx->battleMons[i].gender;
                animation->personalities[i] = ctx->battleMons[i].personality;
            }
        }

        if (attacker != 0xFF) {
            slot = ov12_0223C140(battleSystem, attacker);
            if (slot != 0xFF && slot == ctx->selectedMonIndex[attacker]) {
                animation->attackerIsSelected = TRUE;
            }
        }
        if (defender != 0xFF) {
            slot = ov12_0223C140(battleSystem, defender);
            if (slot != 0xFF && slot == ctx->selectedMonIndex[defender]) {
                animation->defenderIsSelected = TRUE;
            }
        }
    }
}
