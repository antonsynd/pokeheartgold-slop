#include "global.h"

typedef struct UnkContext_ov08_0221BE20 {
    u8 pad_00[8];
    void *battleSys;
    s32 heapID;
    u8 pad_10;
    u8 selectedPartyIndex;
    u8 pad_12[0x16];
    s32 battler;
} UnkContext_ov08_0221BE20;

typedef struct UnkTaskData_ov08_0221BE20 {
    UnkContext_ov08_0221BE20 *context;
    u8 pad_004[0x1e0];
    void *bgConfig;
    void *palette;
    u8 pad_1EC[0x1e8c];
} UnkTaskData_ov08_0221BE20;

void ov08_0221BE98(void *task, void *data);
void *CreateSysTaskAndEnvironment(void (*func)(void *, void *), int size, int priority, int heapID);
void *SysTask_GetData(void *task);
void *BattleSystem_GetBgConfig(void *battleSys);
void *BattleSystem_GetPaletteData(void *battleSys);
u8 ov12_0223AB0C(void *battleSys, int battler);

void ov08_0221BE20(UnkContext_ov08_0221BE20 *ctx) {
    u8 *data;
    UnkTaskData_ov08_0221BE20 *task;

    if (ctx->selectedPartyIndex > 5) {
        ctx->selectedPartyIndex = 0;
    }

    task = SysTask_GetData(CreateSysTaskAndEnvironment(ov08_0221BE98, 0x2090, 0, ctx->heapID));
    memset(task, 0, 0x2090);
    task->context = ctx;
    task->bgConfig = BattleSystem_GetBgConfig(ctx->battleSys);
    task->palette = BattleSystem_GetPaletteData(ctx->battleSys);
    /* offsets relative to task + 0x2000 so the code after memset needs no literal pool: the check
       sandbox can place the task over the lifted code's own pool, which memset would then clear */
    data = (u8 *)task + 0x2000;
    data[0x78] = 0;
    data[0x76] = ctx->selectedPartyIndex;
    data[0x77] &= 0x0f;
    data[0x8f] = ov12_0223AB0C(ctx->battleSys, ctx->battler);
}
