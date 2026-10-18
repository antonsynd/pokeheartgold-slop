#include "global.h"

#include "battle/battle.h"
#include "battle/battle_hp_bar.h"
#include "battle/battle_system.h"

#include "heap.h"
#include "sys_task_api.h"

typedef struct SlideTrainerOutData {
    BattleSystem *battleSys;
    OpponentData *opponentData;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    u8 filler_0C[4];
} SlideTrainerOutData;

typedef struct SlideTrainerInData {
    BattleSystem *battleSys;
    ManagedSprite *managedSprite;
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    s16 x;
    u8 filler_0E[2];
} SlideTrainerInData;

typedef struct TrainerSlideInMessage {
    u8 command;
    u16 trainerType;
    int posIn;
} TrainerSlideInMessage;

typedef struct HealthBoxData {
    u8 command;
    u8 level;
    s16 curHP;
    u16 maxHP;
    u8 selectedPartySlot;
    u8 status : 5;
    u8 gender : 2;
    u8 speciesCaught : 1;
    u32 expFromLastLevel;
    u32 expToNextLevel;
    int delay;
    u8 numSafariBalls;
} HealthBoxData;

extern const s16 ov07_022377DC[][2];
extern const s16 ov07_022377F4[][3];

#define sSlideTrainerInCoords (&ov07_022377F4[6])

void ov12_0225D890(SysTask *task, void *data);
void ov12_0225D990(SysTask *task, void *data);
void ov12_0225DA18(SysTask *task, void *data);
ManagedSprite *ov12_02261B2C(BattleSystem *battleSys, int side, int trainerClass, int battlerType, BOOL isLink, s16 x, s16 y);

void ov12_0225A334(BattleSystem *battleSys, OpponentData *opponentData) {
    SlideTrainerOutData *data = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SlideTrainerOutData));

    data->state = 0;
    data->battleSys = battleSys;
    data->command = opponentData->unk8C[8];
    data->battler = opponentData->unk194;
    data->opponentData = opponentData;
    if (opponentData->battlerType & 1) {
        data->face = 2;
    } else {
        data->face = 0;
    }
    SysTask_CreateOnMainQueue(ov12_0225D890, data, 0);
}

void ov12_0225A37C(BattleSystem *battleSys, OpponentData *opponentData, TrainerSlideInMessage *message) {
    SlideTrainerInData *data;

    BattleSystem_GetPokepicManager(battleSys);
    data = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SlideTrainerInData));
    data->state = 0;
    if (opponentData->battlerType & 1) {
        data->face = 2;
    } else {
        data->face = 0;
    }
    data->managedSprite = opponentData->managedSprite = ov12_02261B2C(battleSys, opponentData->battlerType & 1, message->trainerType, opponentData->battlerType, FALSE, sSlideTrainerInCoords[opponentData->battlerType & 1][0], sSlideTrainerInCoords[opponentData->battlerType & 1][1]);
    data->x = ov07_022377DC[opponentData->battlerType & 1][message->posIn];
    data->battleSys = battleSys;
    data->command = message->command;
    data->battler = opponentData->unk194;
    SysTask_CreateOnMainQueue(ov12_0225D990, data, 0);
}

void ov12_0225A414(BattleSystem *battleSys, OpponentData *opponentData, HealthBoxData *healthboxData) {
    BattleHpBar *hpBar = &opponentData->hpBar;

    MI_CpuClearFast(&hpBar->script, sizeof(u8));
    hpBar->battleSystem = battleSys;
    hpBar->battlerId = opponentData->unk194;
    hpBar->type = BattleHpBar_Util_GetBarTypeFromBattlerSide(opponentData->battlerType, BattleSystem_GetBattleType(battleSys));
    hpBar->unk4C = healthboxData->command;
    hpBar->hp = healthboxData->curHP;
    hpBar->maxHp = healthboxData->maxHP;
    hpBar->level = healthboxData->level;
    hpBar->unk49 = healthboxData->gender;
    hpBar->gainedHp = 0;
    hpBar->exp = healthboxData->expFromLastLevel;
    hpBar->maxExp = healthboxData->expToNextLevel;
    hpBar->monId = healthboxData->selectedPartySlot;
    hpBar->unk_4A = healthboxData->status;
    hpBar->unk4B = healthboxData->speciesCaught;
    hpBar->unk4D = healthboxData->numSafariBalls;
    hpBar->unk27 = healthboxData->delay;
    BattleHpBar_SetEnabled(hpBar, FALSE);
    ov12_0226498C(hpBar, hpBar->hp, -1);
    hpBar->unk10 = SysTask_CreateOnMainQueue(ov12_0225DA18, hpBar, 1000);
}
