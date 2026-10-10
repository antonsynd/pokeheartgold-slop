#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef struct {
    u8 command;
    u8 pad_01[0x17];
    u16 battleMonSpecies[4];
    u8 battleMonGenders[4];
    u8 battleMonIsShiny[4];
    u8 battleMonFormNums[4];
    u32 battleMonPersonalities[4];
    u8 pad_3C[0x1C];
} UnkStruct_BattleController_EmitSwapToSubstituteSprite;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitSwapToSubstituteSprite(BattleSystem *battleSys, BattleContext *ctx, int battler)
{
    UnkStruct_BattleController_EmitSwapToSubstituteSprite message;
    int i;
    u32 status2;
    u16 gender16;

    message.command = 0x3e;

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

    ov12_02262240(battleSys, 1, battler, &message, 0x58);
}
