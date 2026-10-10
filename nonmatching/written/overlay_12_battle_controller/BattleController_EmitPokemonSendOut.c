#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"

typedef struct {
    u8 command;
    u8 gender : 2;
    u8 isShiny : 1;
    u8 formNum : 5;
    u16 species;
    u32 personality;
    int cryModulation;
    int selectedPartySlot;
    int capturedBall;
    int isQuickSendOut;
    u16 moves[4];
    u16 curPP[4];
    u16 maxPP[4];
    u16 nickname[12];
    int partnerPartySlot;
    int isSubstitute;
    u16 battleMonSpecies[4];
    u8 battleMonGenders[4];
    u8 battleMonIsShiny[4];
    u8 battleMonFormNums[4];
    u32 battleMonPersonalities[4];
} UnkStruct_BattleController_EmitPokemonSendOut;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitPokemonSendOut(BattleSystem *battleSys, int battler, int capturedBall, int quickSendOut)
{
    UnkStruct_BattleController_EmitPokemonSendOut message;
    int i;

    message.command = 4;

    if (battleSys->ctx->battleMons[battler].status2 & (1 << 21)) {
        message.gender = battleSys->ctx->battleMons[battler].unk88.transformGender;
        message.personality = battleSys->ctx->battleMons[battler].unk88.transformPersonality;
    } else {
        message.gender = battleSys->ctx->battleMons[battler].gender;
        message.personality = battleSys->ctx->battleMons[battler].personality;
    }

    message.isShiny = battleSys->ctx->battleMons[battler].shiny;
    message.species = battleSys->ctx->battleMons[battler].species;
    message.cryModulation = ov12_02256748(battleSys->ctx, battler, ov12_0223AB0C(battleSys, battler), 0);
    message.selectedPartySlot = battleSys->ctx->selectedMonIndex[battler];
    message.formNum = battleSys->ctx->battleMons[battler].form;

    if (capturedBall) {
        message.capturedBall = capturedBall;
    } else {
        message.capturedBall = battleSys->ctx->battleMons[battler].ball;
    }

    message.isQuickSendOut = quickSendOut;
    message.isSubstitute = (battleSys->ctx->battleMons[battler].status2 & (1 << 24)) != 0;

    ov12_0223B854(battleSys, battler, message.selectedPartySlot);

    for (i = 0; i < 4; i++) {
        message.moves[i] = GetBattlerVar(battleSys->ctx, battler, 6 + i, NULL);
        message.curPP[i] = GetBattlerVar(battleSys->ctx, battler, 0x1f + i, NULL);
        message.maxPP[i] = GetBattlerVar(battleSys->ctx, battler, 0x27 + i, NULL);
    }

    GetBattlerVar(battleSys->ctx, battler, 0x2d, &message.nickname);

    for (i = 0; i < 4; i++) {
        message.battleMonSpecies[i] = battleSys->ctx->battleMons[i].species;
        message.battleMonIsShiny[i] = battleSys->ctx->battleMons[i].shiny;
        message.battleMonFormNums[i] = battleSys->ctx->battleMons[i].form;

        if (battleSys->ctx->battleMons[i].status2 & (1 << 21)) {
            message.battleMonGenders[i] = battleSys->ctx->battleMons[i].unk88.transformGender;
            message.battleMonPersonalities[i] = battleSys->ctx->battleMons[i].unk88.transformPersonality;
        } else {
            message.battleMonGenders[i] = battleSys->ctx->battleMons[i].gender;
            message.battleMonPersonalities[i] = battleSys->ctx->battleMons[i].personality;
        }
    }

    ov12_02262240(battleSys, 1, battler, &message, sizeof(message));
}
