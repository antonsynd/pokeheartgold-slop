#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"
#include "move.h"

typedef struct {
    u8 command;
    u8 selectedMonIndex;
    u16 struggle;
    u16 moves[4];
    u8 curPP[4];
    u8 maxPP[4];
} UnkStruct_ov12_02262F40;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void ov12_02262F40(BattleSystem *battleSys, BattleContext *ctx, int battler)
{
    UnkStruct_ov12_02262F40 message;
    int i;

    BattleBuffer_Clear(BattleSystem_GetBattleContext(battleSys), battler);

    message.command = 0xf;
    message.selectedMonIndex = ctx->selectedMonIndex[battler];

    for (i = 0; i < 4; i++) {
        message.moves[i] = ctx->battleMons[battler].moves[i];
        message.curPP[i] = ctx->battleMons[battler].movePPCur[i];
        message.maxPP[i] = GetMoveMaxPP(ctx->battleMons[battler].moves[i], ctx->battleMons[battler].movePP[i]);
    }

    message.struggle = StruggleCheck(battleSys, ctx, battler, 0, ~0);

    ov12_02262240(battleSys, 1, battler, &message, 0x14);
}
