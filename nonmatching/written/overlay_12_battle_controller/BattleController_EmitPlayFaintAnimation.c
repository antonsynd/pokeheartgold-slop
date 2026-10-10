#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef struct {
    u8 command;
    u8 gender;
    u16 species;
    u32 personality;
    u8 form;
    u8 isSubstitute;
    u8 isTransformed;
    u8 pad;
    u16 battleMonSpecies[4];
    u8 battleMonGenders[4];
    u8 battleMonIsShiny[4];
    u8 battleMonFormNums[4];
    u32 battleMonPersonalities[4];
} UnkStruct_BattleController_EmitPlayFaintAnimation;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitPlayFaintAnimation(BattleSystem *battleSys, BattleContext *ctx, int battler)
{
    UnkStruct_BattleController_EmitPlayFaintAnimation message;
    int i;
    BattleMon *mon;
    u32 status2;
    u16 gender16;

    message.command = 0x1a;
    mon = &ctx->battleMons[battler];
    message.species = mon->species;
    message.form = mon->form;

    status2 = mon->status2;
    message.isSubstitute = (status2 & (1 << 24)) != 0;
    status2 = mon->status2;
    message.isTransformed = (status2 & (1 << 21)) != 0;
    status2 = mon->status2;
    if (status2 & (1 << 21)) {
        gender16 = mon->unk88.transformGender;
        message.gender = (u8)gender16;
        message.personality = mon->unk88.transformPersonality;
    } else {
        message.gender = mon->gender;
        message.personality = mon->personality;
    }

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

    ov12_02262240(battleSys, 1, battler, &message, 0x30);
}
