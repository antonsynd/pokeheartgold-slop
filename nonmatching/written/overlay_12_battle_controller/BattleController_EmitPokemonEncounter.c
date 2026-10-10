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
    u16 moves[4];
    u16 curPP[4];
    u16 maxPP[4];
    u16 nickname[12];
} UnkStruct_BattleController_EmitPokemonEncounter;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitPokemonEncounter(BattleSystem *battleSys, int battler)
{
    UnkStruct_BattleController_EmitPokemonEncounter message;
    int i;

    message.command = 2;
    message.gender = battleSys->ctx->battleMons[battler].gender;
    message.isShiny = battleSys->ctx->battleMons[battler].shiny;
    message.species = battleSys->ctx->battleMons[battler].species;
    message.personality = battleSys->ctx->battleMons[battler].personality;
    message.cryModulation = ov12_02256748(battleSys->ctx, battler, ov12_0223AB0C(battleSys, battler), 1);
    message.formNum = battleSys->ctx->battleMons[battler].form;

    for (i = 0; i < 4; i++) {
        message.moves[i] = GetBattlerVar(battleSys->ctx, battler, 6 + i, NULL);
        message.curPP[i] = GetBattlerVar(battleSys->ctx, battler, 0x1f + i, NULL);
        message.maxPP[i] = GetBattlerVar(battleSys->ctx, battler, 0x27 + i, NULL);
    }

    GetBattlerVar(battleSys->ctx, battler, 0x2d, &message.nickname);
    ov12_02262240(battleSys, 1, battler, &message, sizeof(message));
}
