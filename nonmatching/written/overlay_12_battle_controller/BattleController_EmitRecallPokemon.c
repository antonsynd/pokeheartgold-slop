#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "pokemon.h"

typedef struct {
    u8 command;
    u8 yOffset;
    u16 capturedBall;
    int isSubstitute;
    u16 battleMonSpecies[4];
    u8 battleMonGenders[4];
    u8 battleMonIsShiny[4];
    u8 battleMonFormNums[4];
    u32 battleMonPersonalities[4];
    int selectedPartySlot;
} UnkStruct_BattleController_EmitRecallPokemon;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitRecallPokemon(BattleSystem *battleSys, BattleContext *ctx, int battler)
{
    UnkStruct_BattleController_EmitRecallPokemon message;
    int i;
    u8 facing;
    BattleMon *mon;
    u32 status2;
    u16 gender16;

    if (battleSys->opponentData[battler]->battlerType & 1) {
        facing = 2;
    } else {
        facing = 0;
    }

    mon = &battleSys->ctx->battleMons[battler];
    message.command = 5;

    status2 = mon->status2;
    if (status2 & (1 << 21)) {
        gender16 = mon->unk88.transformGender;
        message.yOffset = GetMonPicHeightBySpeciesGenderForm(mon->species, (u8)gender16, facing, mon->form, mon->unk88.transformPersonality);
    } else {
        message.yOffset = GetMonPicHeightBySpeciesGenderForm(mon->species, mon->gender, facing, mon->form, mon->personality);
    }

    message.capturedBall = mon->ball;
    status2 = mon->status2;
    message.isSubstitute = (status2 & (1 << 24)) != 0;
    message.selectedPartySlot = battleSys->ctx->selectedMonIndex[battler];

    for (i = 0; i < 4; i++) {
        message.battleMonSpecies[i] = ctx->battleMons[i].species;
        message.battleMonIsShiny[i] = ctx->battleMons[i].shiny;
        message.battleMonFormNums[i] = ctx->battleMons[i].form;

        status2 = ctx->battleMons[i].status2;
        if (status2 & (1 << 21)) {
            gender16 = ctx->battleMons[i].unk88.transformGender;
            message.battleMonGenders[i] = (u8)gender16;
            message.battleMonPersonalities[i] = ctx->battleMons[i].unk88.transformPersonality;
        } else {
            message.battleMonGenders[i] = ctx->battleMons[i].gender;
            message.battleMonPersonalities[i] = ctx->battleMons[i].personality;
        }
    }

    ov12_02262240(battleSys, 1, battler, &message, sizeof(message));
}
