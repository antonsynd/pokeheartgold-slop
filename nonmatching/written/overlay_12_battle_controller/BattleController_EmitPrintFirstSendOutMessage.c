#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef struct {
    u8 command;
    u8 pad[3];
    u8 selectedMonIndex[4];
} UnkStruct_BattleController_EmitPrintFirstSendOutMessage;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

#define message (frame.m)

void BattleController_EmitPrintFirstSendOutMessage(BattleSystem *battleSys, BattleContext *ctx, int battler)
{
    // The game's message sits at the top of its frame; padding after it keeps an overrun from reaching our own spilled locals.
    struct {
        UnkStruct_BattleController_EmitPrintFirstSendOutMessage m;
        u8 overrun[0x400];
    } frame;
    int i;

    message.command = 0x23;

    for (i = 0; i < BattleSystem_GetMaxBattlers(battleSys); i++) {
        message.selectedMonIndex[i] = ctx->selectedMonIndex[i];
    }

    ov12_02262240(battleSys, 1, battler, &message, 8);
}
