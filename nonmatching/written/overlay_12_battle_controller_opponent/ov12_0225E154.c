#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"
#include "pokemon.h"
#include "heap.h"
#include "sys_task_api.h"

typedef struct {
    BattleSystem *battleSys;
    u8 pad_04[4];
    u8 command;
    u8 battler;
} UnkStruct_ov12_0225E154;

extern u8 ov12_0226D140[][2];

void ov12_02262F24(BattleSystem *battleSys, int battler, int command);
void ov12_0226430C(BattleSystem *battleSys, u8 battler, u8 command);

void ov12_0225E154(SysTask *task, void *data)
{
    UnkStruct_ov12_0225E154 *d = data;
    u8 escapeCount = ov12_0223B694(d->battleSys);
    u16 species = GetBattlerVar(BattleSystem_GetBattleContext(d->battleSys), d->battler, 0, NULL);
    int fleeRate = GetMonBaseStat(species, 0x1a);

    fleeRate = fleeRate * ov12_0226D140[escapeCount][0] / ov12_0226D140[escapeCount][1];

    if (BattleSystem_Random(d->battleSys) % 255 <= fleeRate) {
        ov12_02262F24(d->battleSys, d->battler, 4);
    } else {
        ov12_02262F24(d->battleSys, d->battler, 5);
    }

    ov12_0226430C(d->battleSys, d->battler, d->command);

    Heap_Free(data);
    SysTask_Destroy(task);
}
