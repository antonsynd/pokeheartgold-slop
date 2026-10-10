#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef struct {
    u8 command;
    u8 selectedMonIndex : 4;
    u8 unk1_4 : 4;
    s16 hp;
    u32 status;
    u32 sideConditions;
    u16 item;
    u16 moves[4];
    u8 movePP[4];
    u8 pad_1A[2];
    u32 status2;
    u16 form;
    u8 pad_22[2];
    u32 ability;
    u16 flagA;
    u16 flagB;
} UnkStruct_BattleController_EmitBattleMonToPartyMonCopy;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitBattleMonToPartyMonCopy(BattleSystem *battleSys, BattleContext *ctx, int battler)
{
    UnkStruct_BattleController_EmitBattleMonToPartyMonCopy message;
    int i;
    u8 side;
    BattleMon *mon;
    u32 word;
    s32 hp;
    u32 flags;

    message.command = 0x27;
    message.selectedMonIndex = ctx->selectedMonIndex[battler];
    mon = &ctx->battleMons[battler];
    word = *(u32 *)((u8 *)mon + 0x8c);
    message.unk1_4 = (word >> 2) & 0xf;
    hp = mon->hp;
    message.hp = hp;
    message.item = mon->item;

    side = BattleSystem_GetFieldSide(battleSys, battler);
    word = *(u32 *)&ctx->fieldSideConditionData[side];
    message.sideConditions = (word & 0x1fffffff) >> 23;
    message.form = mon->form;
    message.ability = mon->ability;

    for (i = 0; i < 4; i++) {
        message.moves[i] = mon->moves[i];
        message.movePP[i] = mon->movePPCur[i];
    }

    if (message.hp != 0) {
        word = mon->status;
        message.status = word & 0xfffff0ff;
        word = mon->status2;
        message.status2 = word;
    } else {
        message.status = 0;
        word = mon->status2;
        message.status2 = word;
    }

    flags = ctx->battleStatus2;
    if (flags & 0x4000000) {
        message.flagB = 1;
        flags = ctx->battleStatus2;
        ctx->battleStatus2 = flags & 0xfbffffff;
    } else {
        message.flagB = 0;
    }

    flags = ctx->battleStatus2;
    if (flags & 0x8000000) {
        message.flagA = 1;
        message.flagB = 1;
        flags = ctx->battleStatus2;
        ctx->battleStatus2 = flags & 0xf7ffffff;
    } else {
        message.flagA = 0;
    }

    ov12_02262240(battleSys, 1, battler, &message, 0x2c);
}
