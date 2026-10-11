#pragma warning_errors off
#include "global.h"
#pragma thumb on
typedef struct SysTask SysTask;
typedef struct SysTaskManager SysTaskManager;
typedef void (*SysTaskFunc)(SysTask *, void *);
enum TaskState {
    TASK_STATE_ACTIVE = 0,
    TASK_STATE_INACTIVE,
};
typedef struct SysTask {
    SysTaskManager *manager;
    SysTask *prevTask;
    SysTask *nextTask;
    u32 priority;
    void *param;
    SysTaskFunc callback;
    enum TaskState state;
} SysTask;
typedef struct SysTaskManager {
    u16 maxTasks;
    u16 stackPointer;
    SysTask sentinelTask;
    SysTask **taskStack;
    SysTask *tasks;
    BOOL locked;
    SysTask *currentTask;
    SysTask *nextTask;
} SysTaskManager;
typedef struct XYTransformContext {
    s16 x;
    s16 y;
    s32 data[8];
} XYTransformContext;
typedef struct AlphaFadeContext {
    XYTransformContext lerp;
    int done;
} AlphaFadeContext;
void ov07_02222268(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, u16 steps);
void ov07_02222AC4(AlphaFadeContext *ctx, s16 startEv1, s16 endEv1, s16 startEv2, s16 endEv2, int steps);
SysTask *SysTask_CreateOnMainQueue(SysTaskFunc callback, void *param, u32 priority);
void ov07_02222A7C(SysTask *task, void *param);
#pragma force_active on
void ov07_02222AC4(AlphaFadeContext *ctx, s16 startEv1, s16 endEv1, s16 startEv2, s16 endEv2, int steps) {
    ov07_02222268(&ctx->lerp, startEv1, endEv1, startEv2, endEv2, steps);

    ctx->done = 0;
    SysTask_CreateOnMainQueue(ov07_02222A7C, ctx, 0);
}
#pragma force_active reset
