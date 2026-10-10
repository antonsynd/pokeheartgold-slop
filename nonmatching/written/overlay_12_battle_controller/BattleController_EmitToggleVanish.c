#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef struct {
    u8 command;
    u8 toggle;
    u8 isSubstitute;
    u8 pad;
    u16 battleMonSpecies[4];
    u8 battleMonGenders[4];
    u8 battleMonIsShiny[4];
    u8 battleMonFormNums[4];
    u32 battleMonPersonalities[4];
} UnkStruct_BattleController_EmitToggleVanish;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitToggleVanish(BattleSystem *battleSys, int battler, int toggle)
{
    UnkStruct_BattleController_EmitToggleVanish message;
    int i;
    u32 status2;
    u16 gender16;

    message.command = 0x1d;
    message.toggle = toggle;
    status2 = battleSys->ctx->battleMons[battler].status2;
    message.isSubstitute = (status2 & (1 << 24)) != 0;

    for (i = 0; i < 4; i++) {
        message.battleMonSpecies[i] = battleSys->ctx->battleMons[i].species;
        message.battleMonIsShiny[i] = battleSys->ctx->battleMons[i].shiny;
        message.battleMonFormNums[i] = battleSys->ctx->battleMons[i].form;

        status2 = battleSys->ctx->battleMons[i].status2;
        if (status2 & (1 << 21)) {
            gender16 = battleSys->ctx->battleMons[i].unk88.transformGender;
            message.battleMonGenders[i] = (u8)gender16;
            message.battleMonPersonalities[i] = battleSys->ctx->battleMons[i].unk88.transformPersonality;
        } else {
            message.battleMonGenders[i] = battleSys->ctx->battleMons[i].gender;
            message.battleMonPersonalities[i] = battleSys->ctx->battleMons[i].personality;
        }
    }

    ov12_02262240(battleSys, 1, battler, &message, 0x28);
}
