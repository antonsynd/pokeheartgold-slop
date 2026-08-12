#include <string.h>

#include "global.h"

#include "constants/sndseq.h"

#include "field/encounter_check.h"
#include "field/field_3d_object_task.h"

#include "bg_window.h"
#include "field_system.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "map_header.h"
#include "overlay_01.h"
#include "player_avatar.h"
#include "task.h"
#include "unk_02005D10.h"
#include "unk_02054648.h"

typedef struct HoneyScent3dObjectData {
    s32 current;  // 0x00
    s32 start;    // 0x04
    s32 delta;    // 0x08
    s32 step;     // 0x0c
    s32 total;    // 0x10
    s32 finished; // 0x14
} HoneyScent3dObjectData;

typedef struct HoneyScentTaskEnv {
    Field3dObjectTask *task; // 0x00
    int unk_4;               // 0x04
    u16 state;               // 0x08
    s16 timer;               // 0x0a
} HoneyScentTaskEnv;

extern int ov01_021EB31C(void *a0);

static void ov01_021FC05C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
static void ov01_021FC0A8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
static void ov01_021FC0DC(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
static void ov01_021FC0E0(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
static void ov01_021FC10C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data);
static Field3dObjectTask *ov01_021FC110(FieldSystem *fieldSystem);
static void ov01_021FC124(Field3dObjectTask *task);
static s32 ov01_021FC12C(Field3dObjectTask *task);
static Field3dObjectTask *ov01_021FC138(FieldSystem *fieldSystem);
static void ov01_021FC14C(BgConfig *bgConfig);
static void ov01_021FC1A4(HoneyScent3dObjectData *data, s32 start, s32 end, s32 total);
static BOOL ov01_021FC1B4(HoneyScent3dObjectData *data);
static void ov01_021FC1E0(FieldSystem *fieldSystem);
static void ov01_021FC1EC(FieldSystem *fieldSystem);
static void ov01_021FC1FC(FieldSystem *fieldSystem);
static void ov01_021FC260(FieldSystem *fieldSystem);
static BOOL ov01_021FC2C4(FieldSystem *fieldSystem);
static BOOL ov01_021FC2C8(FieldSystem *fieldSystem);
static void ov01_021FC2F0(HoneyScentTaskEnv *env);

static const int ov01_02208BC0[] = { 1, 5, 9 };

static const Field3dObjectTaskTemplate ov01_02208BCC = {
    .taskPriority = 0x400,
    .dataSize = sizeof(HoneyScent3dObjectData),
    .initFunc = ov01_021FC05C,
    .destroyFunc = ov01_021FC0DC,
    .updateFunc = ov01_021FC0E0,
    .renderFunc = ov01_021FC10C,
};

static const Field3dObjectTaskTemplate ov01_02208BE4 = {
    .taskPriority = 0x400,
    .dataSize = sizeof(HoneyScent3dObjectData),
    .initFunc = ov01_021FC0A8,
    .destroyFunc = ov01_021FC0DC,
    .updateFunc = ov01_021FC0E0,
    .renderFunc = ov01_021FC10C,
};

static void ov01_021FC05C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    HoneyScent3dObjectData *work = data;
    ov01_021FC14C(fieldSystem->bgConfig);
    ov01_021FC1A4(work, 0, 0xa, 0x13);
    work->finished = 0;
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD, 0, 0x10);
    SetBgPriority(GF_BG_LYR_MAIN_2, 0);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, 1);
    PlaySE(SEQ_SE_DP_FW230);
}

static void ov01_021FC0A8(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    HoneyScent3dObjectData *work = data;
    ov01_021FC14C(fieldSystem->bgConfig);
    ov01_021FC1A4(work, 0xa, 0, 0xf);
    work->finished = 0;
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BD, 0xa, 6);
}

static void ov01_021FC0DC(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
}

static void ov01_021FC0E0(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
    HoneyScent3dObjectData *work = data;
    if (work->finished == 1) {
        return;
    }
    if (ov01_021FC1B4(work) != 0) {
        work->finished = 1;
    }
    reg_G2_BLDALPHA = work->current | ((0x10 - work->current) << 8);
}

static void ov01_021FC10C(Field3dObjectTask *task, FieldSystem *fieldSystem, void *data) {
}

static Field3dObjectTask *ov01_021FC110(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov01_02208BCC);
}

static void ov01_021FC124(Field3dObjectTask *task) {
    Field3dObjectTask_Delete(task);
}

static s32 ov01_021FC12C(Field3dObjectTask *task) {
    HoneyScent3dObjectData *data = Field3dObjectTask_GetData(task);
    return data->finished;
}

static Field3dObjectTask *ov01_021FC138(FieldSystem *fieldSystem) {
    return Field3dObjectTaskManager_CreateTask(fieldSystem->unk4->field3dObjectTaskManager, &ov01_02208BE4);
}

static void ov01_021FC14C(BgConfig *bgConfig) {
    u16 plttData = 0x5D5F;
    void *buf;
    BG_LoadPlttData(2, &plttData, 2, 0xc2);
    buf = Heap_Alloc(HEAP_ID_FIELD1, 0x20);
    memset(buf, 0x11, 0x20);
    BG_LoadCharTilesData(bgConfig, GF_BG_LYR_MAIN_2, buf, 0x20, 1);
    Heap_Free(buf);
    BgFillTilemapBufferAndCommit(bgConfig, GF_BG_LYR_MAIN_2, 0x6001);
}

static void ov01_021FC1A4(HoneyScent3dObjectData *data, s32 start, s32 end, s32 total) {
    data->current = start;
    data->start = start;
    data->delta = end - start;
    data->total = total;
    data->step = 0;
}

static BOOL ov01_021FC1B4(HoneyScent3dObjectData *data) {
    s32 amount = data->delta * data->step / data->total;
    data->current = amount + data->start;
    if (data->step + 1 <= data->total) {
        data->step += 1;
        return FALSE;
    }
    data->step = data->total;
    return TRUE;
}

static void ov01_021FC1E0(FieldSystem *fieldSystem) {
    BG_SetMaskColor(GF_BG_LYR_MAIN_2, 0);
}

static void ov01_021FC1EC(FieldSystem *fieldSystem) {
    BG_SetMaskColor(GF_BG_LYR_MAIN_2, 0x7FFF);
}

static void ov01_021FC1FC(FieldSystem *fieldSystem) {
    u16 plttData = 0x7FFF;
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, 0);
    reg_G2_BG2CNT = (reg_G2_BG2CNT & ~3) | 3;
    BG_LoadPlttData(2, &plttData, 2, 0xc4);
    BG_FillCharDataRange(fieldSystem->bgConfig, GF_BG_LYR_MAIN_2, 2, 1, 2);
    BgFillTilemapBufferAndCommit(fieldSystem->bgConfig, GF_BG_LYR_MAIN_2, 0x6002);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, 1);
    ov01_021FC1E0(fieldSystem);
}

static void ov01_021FC260(FieldSystem *fieldSystem) {
    u16 plttData = 0x7FFF;
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, 0);
    reg_G2_BG3CNT = (reg_G2_BG3CNT & ~3) | 3;
    BG_LoadPlttData(3, &plttData, 2, 0xc4);
    BG_FillCharDataRange(fieldSystem->bgConfig, GF_BG_LYR_MAIN_3, 2, 1, 2);
    BgFillTilemapBufferAndCommit(fieldSystem->bgConfig, GF_BG_LYR_MAIN_3, 0x6002);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, 1);
    ov01_021FC1E0(fieldSystem);
}

static BOOL ov01_021FC2C4(FieldSystem *fieldSystem) {
    return FALSE;
}

static BOOL ov01_021FC2C8(FieldSystem *fieldSystem) {
    int v = ov01_021EB31C(fieldSystem->unk4->weatherManager);
    int i;
    for (i = 0; i < 3; i++) {
        if (v == ov01_02208BC0[i]) {
            return FALSE;
        }
    }
    return TRUE;
}

static void ov01_021FC2F0(HoneyScentTaskEnv *env) {
    if (env->task != NULL) {
        ov01_021FC124(env->task);
        env->task = NULL;
    }
    Heap_Free(env);
}

u32 GetHoneySweetScentWorkSize(void) {
    return sizeof(HoneyScentTaskEnv);
}

BOOL Task_HoneyOrSweetScent(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    HoneyScentTaskEnv *env = TaskManager_GetEnvironment(taskManager);
    u32 x;
    u32 z;

    switch (env->state) {
    case 0:
        if (ov01_021FC2C8(fieldSystem) == 1) {
            env->state = 1;
            env->unk_4 = ov01_021FC2C4(fieldSystem);
            if (env->unk_4 != 0) {
                ov01_021FC1EC(fieldSystem);
            }
        } else {
            env->state = 7;
            env->timer = 0x14;
        }
        break;
    case 1:
        env->task = ov01_021FC110(fieldSystem);
        env->state = 2;
        SetBgPriority(GF_BG_LYR_MAIN_2, 0);
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, 1);
        break;
    case 2:
        if (ov01_021FC12C(env->task) != 0) {
            env->timer = 0x16;
            env->state = 3;
        }
        break;
    case 3:
        env->timer--;
        if (MapHeader_HasWildEncounters(fieldSystem->location->mapId)) {
            if (env->timer < 0) {
                x = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
                z = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
                if (FieldSystem_CanGenerateStepEncounter(fieldSystem, GetMetatileBehavior(fieldSystem, x, z))) {
                    env->state = 6;
                } else {
                    env->state = 4;
                }
            }
        } else {
            env->state = 4;
        }
        break;
    case 4:
        ov01_021FC124(env->task);
        env->task = ov01_021FC138(fieldSystem);
        env->state = 5;
        break;
    case 5:
        if (ov01_021FC12C(env->task) != 0) {
            GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, 0);
            reg_G2_BLDCNT = 0;
            SetBgPriority(GF_BG_LYR_MAIN_2, 3);
            env->state = 8;
        }
        break;
    case 6:
        ov01_021FC2F0(env);
        if (env->unk_4 != 0) {
            ov01_021FC260(fieldSystem);
        }
        GF_ASSERT(FieldSystem_PerformSweetScentEncounterCheck(fieldSystem, taskManager));
        break;
    case 7:
        env->timer--;
        if (env->timer < 0) {
            QueueScript(taskManager, 0x7E3, NULL, NULL);
            env->state = 9;
        }
        break;
    case 8:
        QueueScript(taskManager, 0x7E2, NULL, NULL);
        env->state = 9;
        break;
    case 9:
        ov01_021FC2F0(env);
        if (env->unk_4 != 0) {
            ov01_021FC1FC(fieldSystem);
        }
        BgFillTilemapBufferAndCommit(fieldSystem->bgConfig, GF_BG_LYR_MAIN_2, 0);
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, 1);
        return TRUE;
    default:
        GF_AssertFail();
        break;
    }
    return FALSE;
}
