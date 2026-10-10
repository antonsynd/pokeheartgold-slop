#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"

typedef struct {
    u8 command;
    u8 battler;
    u8 listMode;
    u8 doublesSelection;
    u8 selectedMonIndex[4];
    u8 partyOrder[4][6];
    u32 canSwitch;
    u8 switchingMask;
    u8 pad[3];
} UnkStruct_BattleController_EmitShowMonList;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

void BattleController_EmitShowMonList(BattleSystem *battleSys, BattleContext *ctx, int battler, u32 listMode, u32 canSwitch, u32 doublesSelection)
{
    UnkStruct_BattleController_EmitShowMonList message;
    int i;
    int j;

    BattleBuffer_Clear(ctx, battler);

    message.command = 0x12;
    message.battler = battler;
    message.listMode = listMode;
    message.canSwitch = canSwitch;
    message.doublesSelection = doublesSelection;
    message.switchingMask = ((u8 *)ctx)[0x3108];

    for (i = 0; i < 4; i++) {
        message.selectedMonIndex[i] = ctx->selectedMonIndex[i];
        for (j = 0; j < 6; j++) {
            message.partyOrder[i][j] = ((u8 *)ctx)[0x312C + i * 6 + j];
        }
    }

    ov12_02262240(battleSys, 1, battler, &message, 0x28);
}
