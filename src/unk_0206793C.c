#include "global.h"

#include "heap.h"
#include "npc_trade.h"
#include "overlay_71.h"
#include "pokemon.h"
#include "task.h"
#include "trade_anim.h"
#include "unk_02055244.h"
#include "unk_020552A4.h"

typedef struct NPCTradeTaskEnv {
    NPCTradeAppData *unk00;
    int unk04;
    int unk08;
    TRADE_ANIM_WORK unk0C;
    Pokemon *unk24;
    Pokemon *unk28;
} NPCTradeTaskEnv;

FS_EXTERN_OVERLAY(OVY_71);

static void sub_0206793C(TaskManager *taskman);
static BOOL Task_NPCTrade(TaskManager *taskman);
void CallTask_NPCTrade(TaskManager *taskManager, NPCTradeAppData *tradeWork, u16 arg, enum HeapID heapID);

static const OverlayManagerTemplate sTradeSequenceApp;

static void sub_0206793C(TaskManager *taskman) {
    TaskManager_GetFieldSystem(taskman);
    CallApplicationAsTask(taskman, &sTradeSequenceApp, (u8 *)TaskManager_GetEnvironment(taskman) + 0xc);
}

static BOOL Task_NPCTrade(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    NPCTradeTaskEnv *env = TaskManager_GetEnvironment(taskman);
    switch (env->unk04) {
    case 0:
        NPCTrade_CreateTradeAnim(fieldSystem, env->unk00, env->unk08, &env->unk0C, env->unk24, env->unk28);
        NPCTrade_ReceiveMonToSlot(fieldSystem, env->unk00, env->unk08);
        env->unk04++;
        break;
    case 1:
        PaletteFadeUntilFinished(taskman);
        env->unk04++;
        break;
    case 2:
        CallTask_LeaveOverworld(taskman);
        env->unk04++;
        break;
    case 3:
        sub_0206793C(taskman);
        env->unk04++;
        break;
    case 4:
        CallTask_RestoreOverworld(taskman);
        env->unk04++;
        break;
    case 5:
        CallTask_FadeFromBlack(taskman);
        env->unk04++;
        break;
    case 6:
        Heap_Free(env->unk24);
        Heap_Free(env->unk28);
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

void CallTask_NPCTrade(TaskManager *taskManager, NPCTradeAppData *tradeWork, u16 arg, enum HeapID heapID) {
    NPCTradeTaskEnv *env = Heap_Alloc(heapID, sizeof(NPCTradeTaskEnv));
    memset(env, 0, sizeof(NPCTradeTaskEnv));
    env->unk04 = 0;
    env->unk00 = tradeWork;
    env->unk08 = arg;
    env->unk24 = AllocMonZeroed(heapID);
    env->unk28 = AllocMonZeroed(heapID);
    TaskManager_Call(taskManager, Task_NPCTrade, env);
}

static const OverlayManagerTemplate sTradeSequenceApp = {
    TradeSequence_Init,
    TradeSequence_Main,
    TradeSequence_Exit,
    FS_OVERLAY_ID(OVY_71),
};
