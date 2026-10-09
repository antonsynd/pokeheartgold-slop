#include "global.h"

#include "bg_window.h"
#include "brightness.h"
#include "heap.h"
#include "sys_task.h"
#include "systask_environment.h"

typedef struct UnkOv41Board UnkOv41Board;

typedef struct UnkOv41ObjSetTemplate {
    BgConfig *unk_00;
    void *unk_04;
    void *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
} UnkOv41ObjSetTemplate;

typedef struct UnkOv41App {
    u8 unk_00[0x40];
    BgConfig *bgConfig;
    void *unk_44;
    u8 unk_48[0x138];
    int unk_180;
    u8 unk_184[0x368 - 0x184];
    u8 board[0x4E0 - 0x368];
    u8 unk_4E0[0x568 - 0x4E0];
    u8 unk_568[0x6B0 - 0x568];
    int unk_6B0;
} UnkOv41App;

typedef struct UnkOv41FadeTask {
    UnkOv41App *app;
    int *done;
    int counter;
    int state;
} UnkOv41FadeTask;

extern BOOL ov41_02248750(UnkOv41Board *board, int type, int slot);
extern BOOL ov41_02248790(UnkOv41Board *board, int type, int dir);
extern void ov41_022487F8(UnkOv41Board *board, int type, int slot);
extern int ov41_0224894C(UnkOv41Board *board);
extern int ov41_0224895C(UnkOv41Board *board, int type);
extern BOOL ov41_02248998(UnkOv41Board *board);
extern void ov41_02247480(UnkOv41App *app, int a1);
extern BOOL ov41_02247A48(UnkOv41FadeTask *task, int a1, int a2, int a3);
extern void ov41_02247AB4(UnkOv41App *app);
extern void ov41_0224A5A4(void *obj, int a1, int a2);
extern void ov41_0224AA08(void *obj, UnkOv41ObjSetTemplate *tmpl, int flags);
extern void ov41_0224AB40(void *obj);

void ov41_022475D4(void *unused, UnkOv41App *app);
void ov41_022475F4(void *unused, UnkOv41App *app);
void ov41_02247628(void *unused, UnkOv41App *app);
void ov41_0224765C(UnkOv41App *app, int a1);
void ov41_022476A8(UnkOv41App *app);
void ov41_022476B8(UnkOv41App *app, int *done);
void ov41_022476E0(SysTask *task, void *taskData);

void ov41_022475D4(void *unused, UnkOv41App *app) {
    UnkOv41Board *board = (UnkOv41Board *)app->board;
    ov41_02248790(board, ov41_0224894C(board), 1);
}

void ov41_022475F4(void *unused, UnkOv41App *app) {
    UnkOv41Board *board = (UnkOv41Board *)app->board;
    if (app->unk_6B0 != 0) {
        ov41_022487F8(board, 0, ov41_0224895C(board, 0));
        app->unk_6B0 = 0;
    }
}

void ov41_02247628(void *unused, UnkOv41App *app) {
    UnkOv41Board *board = (UnkOv41Board *)app->board;
    if (app->unk_6B0 != 1) {
        ov41_022487F8(board, 1, ov41_0224895C(board, 1));
        app->unk_6B0 = 1;
    }
}

void ov41_0224765C(UnkOv41App *app, int a1) {
    UnkOv41ObjSetTemplate tmpl = { 0 };
    tmpl.unk_00 = app->bgConfig;
    tmpl.unk_04 = app->unk_44;
    tmpl.unk_08 = app->unk_48;
    tmpl.unk_0C = a1;
    tmpl.unk_10 = 10;
    tmpl.unk_24 = app->unk_180;
    ov41_0224AA08(app->unk_568, &tmpl, 0xF);
}

void ov41_022476A8(UnkOv41App *app) {
    ov41_0224AB40(app->unk_568);
}

void ov41_022476B8(UnkOv41App *app, int *done) {
    SysTask *task = CreateSysTaskAndEnvironment(ov41_022476E0, sizeof(UnkOv41FadeTask), 10, HEAP_ID_13);
    UnkOv41FadeTask *env = SysTask_GetData(task);
    env->app = app;
    env->done = done;
    env->counter = 0;
    env->state = 0;
}

void ov41_022476E0(SysTask *task, void *taskData) {
    UnkOv41FadeTask *env = taskData;
    switch (env->state) {
    case 0:
        GF_ASSERT(ov41_02248750((UnkOv41Board *)env->app->board, 3, 0));
        env->state++;
        break;
    case 1:
        if (ov41_02248998((UnkOv41Board *)env->app->board)) {
            env->state++;
        }
        break;
    case 2:
        StartBrightnessTransition(8, -16, 0, (GXBlendPlaneMask)0xA, 1);
        env->state++;
        break;
    case 3:
        if (IsBrightnessTransitionActive(1)) {
            env->state++;
        }
        break;
    case 4:
        ov41_0224A5A4(env->app->unk_4E0, 0, 8);
        env->counter++;
        if (env->counter >= 8) {
            env->counter = 0;
            env->state++;
        }
        break;
    case 5:
        if (ov41_02247A48(env, -8, 5, 8)) {
            env->counter = 0;
            env->state++;
        }
        break;
    case 6:
        ov41_02247480(env->app, 1);
        ScheduleSetBgPosText(env->app->bgConfig, 1, BG_POS_OP_SET_Y, 0);
        ov41_02247AB4(env->app);
        env->state++;
        break;
    case 7:
        StartBrightnessTransition(8, 0, -16, (GXBlendPlaneMask)0xA, 1);
        env->state++;
        break;
    case 8:
        if (IsBrightnessTransitionActive(1)) {
            env->state++;
        }
        break;
    case 9:
        *env->done = 1;
        DestroySysTaskAndEnvironment(task);
        break;
    }
}
