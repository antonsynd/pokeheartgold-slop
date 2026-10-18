#include "global.h"

#include "battle/battle_system.h"
#include "battle/party_gauge.h"

#include "heap.h"
#include "sys_task_api.h"

typedef struct PartyGaugeTask {
    BattleSystem *battleSys;
    u8 command;
    u8 battler;
    u8 unk6;
    u8 state;
    u8 filler_08[6];
    u8 midBattle;
} PartyGaugeTask;

void ov12_0226430C(BattleSystem *battleSys, int battler, int command);

void ov12_02260C58(SysTask *task, void *data) {
    PartyGaugeTask *gaugeTask = data;
    int side;
    PartyGauge *gauge;
    int hideArrowType;
    int hideGaugeType;

    switch (BattleSystem_GetFieldSide(gaugeTask->battleSys, gaugeTask->battler)) {
    case 0:
        side = 0;
        break;
    default:
        side = 1;
        break;
    }
    gauge = (PartyGauge *)ov12_0223A908(gaugeTask->battleSys, side);
    switch (gaugeTask->state) {
    case 0:
        if (gaugeTask->midBattle == FALSE) {
            hideArrowType = 0;
            hideGaugeType = 0;
        } else {
            hideArrowType = 1;
            hideGaugeType = 1;
        }
        PartyGauge_StartHideTask(gauge, hideArrowType, hideGaugeType);
        gaugeTask->state++;
        break;
    case 1:
        if (PartyGauge_IsHideTaskFinished(gauge) == TRUE) {
            PartyGauge_DeleteAndFreeResources(gauge);
            ov12_0223A914(gaugeTask->battleSys, side, NULL);
            gaugeTask->state++;
        }
        break;
    default:
        ov12_0226430C(gaugeTask->battleSys, gaugeTask->battler, gaugeTask->command);
        Heap_Free(data);
        SysTask_Destroy(task);
        break;
    }
}
