#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "pokemon.h"

typedef struct {
    u8 command;
    u8 yOffset;
    u16 ball;
} UnkStruct_ov12_022628A0;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void ov12_022628A0(BattleSystem *battleSys, int battler, int ball)
{
    UnkStruct_ov12_022628A0 message;
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
    message.command = 6;

    status2 = mon->status2;
    if (status2 & (1 << 21)) {
        gender16 = mon->unk88.transformGender;
        message.yOffset = GetMonPicHeightBySpeciesGenderForm(mon->species, (u8)gender16, facing, mon->form, mon->unk88.transformPersonality);
    } else {
        message.yOffset = GetMonPicHeightBySpeciesGenderForm(mon->species, mon->gender, facing, mon->form, mon->personality);
    }

    message.ball = ball;
    ov12_02262240(battleSys, 1, battler, &message, 4);
}
