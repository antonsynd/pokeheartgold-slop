#include "global.h"

#include "battle/battle.h"
#include "battle/battle_hp_bar.h"
#include "battle/battle_system.h"

#include "heap.h"
#include "sys_task_api.h"

typedef struct CommandSetMessage {
    u8 command;
    u8 partySlot;
    u8 expPercents[6];
    u8 ballStatus[2][6];
    u16 moves[4];
    u8 curPP[4];
    u8 maxPP[4];
    s16 curHP;
    u16 maxHP;
    u8 ballStatusBattler;
    u8 switchingOrCanPickCommandMask;
} CommandSetMessage;

typedef struct CommandSetData {
    BattleSystem *battleSys;
    BattleHpBar *healthbox;
    u8 command;
    u8 battler;
    u8 state;
    u8 unused_0B;
    u8 filler_0C[4];
    u8 ballStatus[2][6];
    u8 expPercents[6];
    u8 filler_22;
    u8 partySlot;
    u16 moves[4];
    u8 curPP[4];
    u8 maxPP[4];
    u8 battlerType;
    u8 filler_35;
    s16 curHP;
    u16 maxHP;
    u8 ballStatusBattler;
    u8 switchingOrCanPickCommandMask;
} CommandSetData;

void ov12_0225A524(BattleSystem *battleSys, OpponentData *opponentData, CommandSetMessage *message) {
    CommandSetData *commandSetData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(CommandSetData));
    int i;

    MI_CpuClearFast(commandSetData, sizeof(CommandSetData));
    commandSetData->state = 0;
    commandSetData->unused_0B = 0;
    commandSetData->battleSys = battleSys;
    commandSetData->command = message->command;
    commandSetData->battler = opponentData->unk194;
    commandSetData->battlerType = opponentData->battlerType;
    commandSetData->healthbox = &opponentData->hpBar;
    commandSetData->partySlot = message->partySlot;
    commandSetData->curHP = message->curHP;
    commandSetData->maxHP = message->maxHP;
    commandSetData->ballStatusBattler = message->ballStatusBattler;
    commandSetData->switchingOrCanPickCommandMask = message->switchingOrCanPickCommandMask;
    for (i = 0; i < 2; i++) {
        for (int j = 0; j < 6; j++) {
            commandSetData->ballStatus[i][j] = message->ballStatus[i][j];
        }
    }
    for (i = 0; i < 6; i++) {
        if (message->ballStatus[0][i] == 2) {
            commandSetData->expPercents[i] = 0;
        } else {
            commandSetData->expPercents[i] = message->expPercents[i];
        }
    }
    for (int battler = 0; battler < 4; battler++) {
        commandSetData->moves[battler] = message->moves[battler];
        commandSetData->curPP[battler] = message->curPP[battler];
        commandSetData->maxPP[battler] = message->maxPP[battler];
    }
    SysTask_CreateOnMainQueue((SysTaskFunc)opponentData->unk0[0], commandSetData, 0);
}
