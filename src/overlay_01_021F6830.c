#include "overlay_01_021F6830.h"

#include "global.h"

#include "constants/gx.h"

#include "field_system.h"
#include "heap.h"
#include "overlay_01.h"
#include "overlay_29.h"
#include "overlay_32.h"
#include "overlay_33.h"
#include "poke_overlay.h"
#include "screen_fade.h"
#include "sys_task.h"
#include "sys_task_api.h"
#include "systask_environment.h"
#include "touch_save_app.h"

FS_EXTERN_OVERLAY(OVY_27);
FS_EXTERN_OVERLAY(touch_save_app);
FS_EXTERN_OVERLAY(OVY_31);
FS_EXTERN_OVERLAY(OVY_28);
FS_EXTERN_OVERLAY(OVY_29);
FS_EXTERN_OVERLAY(OVY_32);
FS_EXTERN_OVERLAY(OVY_33);
FS_EXTERN_OVERLAY(OVY_34);

// Bottom-screen sub-application dispatcher. sSubApps rows are
// {init, main, exit, overlayId}; the SysTask at fieldSystem->unk_D8 runs
// ov01_021F69C0, which loads the row's overlay, fades, runs the app and
// swaps rows on request (ov01_021F6A9C).
typedef SysTask *(*SubAppInitFunc)(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, void *args);
typedef void (*SubAppMainFunc)(BgConfig *bgConfig, SysTask *task);
typedef BOOL (*SubAppExitFunc)(BgConfig *bgConfig);

typedef struct SubAppTemplate {
    SubAppInitFunc init;
    SubAppMainFunc main;
    SubAppExitFunc exit;
    FSOverlayID overlayId;
} SubAppTemplate;

#define SUBAPP_NO_OVERLAY ((FSOverlayID)0xFFFFFFFF)

enum SubAppState {
    SUBAPP_STATE_INIT = 0,
    SUBAPP_STATE_RUNNING,
    SUBAPP_STATE_FADE_OUT,
    SUBAPP_STATE_WAIT_FADE_OUT,
    SUBAPP_STATE_MAIN,
    SUBAPP_STATE_EXIT,
    SUBAPP_STATE_REINIT,
    SUBAPP_STATE_WAIT_FADE_IN,
};

typedef struct SubAppTaskData {
    u8 appIdx;
    u8 state;
    u8 nextAppIdx;
    SysTask *appTask;
    FieldSystem *fieldSystem;
    void *args;
} SubAppTaskData; // size: 0x10

// Task data of the menu sub-app (row 3, ov27_0225C250)
typedef struct MenuSubAppData {
    int unk0;
    void *unk4;
    int unk8;
    struct UnkStruct_ov01_021EDC28 *menu;
} MenuSubAppData;

// Mirror of the work struct in src/overlay_01_021F6CFC.c
typedef struct Ov01SubAppWork {
    u32 unk0;
    u32 unk4;
    String *unk8;
    String *unkC;
    Window window;
    u8 unk20[0x10];
    FieldSystem *fieldSystem;
    SaveData *saveData;
    MessageFormat *messageFormat;
    MsgData *msgData;
    int textPrinterId;
    int state;
    int slots[16];
    int unk88;
    int unk8c;
    int unk90;
    int unk94;
    u16 unk98;
    u16 unk9a;
} Ov01SubAppWork; // size 0x9C

// Handle of the touch save app (fieldSystem+0xD4, filler in the frozen header)
#define FIELDSYS_TOUCH_SAVE_TASK(fieldSystem) (*(SysTask **)(fieldSystem)->filler_D4)

// Still-asm overlays; no headers yet (see IPA header discipline)
extern SysTask *ov27_02259F80(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, void *args);
extern void ov27_0225A19C(BgConfig *bgConfig, SysTask *task);
extern BOOL ov27_0225A2C8(BgConfig *bgConfig);
extern void ov27_0225A2CC(SysTask *task);
extern void ov27_0225A2EC(SysTask *task, int a1);
extern SysTask *ov27_0225C250(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, void *args);
extern void ov27_0225C398(BgConfig *bgConfig, SysTask *task);
extern BOOL ov27_0225C418(BgConfig *bgConfig);
extern void ov27_0225C41C(SysTask *task, UnkCallback_021F6B34 cb, struct UnkStruct_ov01_021EDC28 *menu);
extern SysTask *ov28_0225D520(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, void *args);
extern void ov28_0225D5EC(BgConfig *bgConfig, SysTask *task);
extern BOOL ov28_0225D624(BgConfig *bgConfig);
extern SysTask *ov31_0225D520(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, void *args);
extern void ov31_0225D710(BgConfig *bgConfig, SysTask *task);
extern BOOL ov31_0225D758(BgConfig *bgConfig);
extern FieldViewPhoto *ov34_0225D7A8(FieldSystem *fieldSystem);
extern void ov34_0225D87C(SysTask *task);
extern void ov35_02259D80(void *a0, int a1);

void ov01_021F6840(FieldSystem *fieldSystem);
void ov01_021F6864(FieldSystem *fieldSystem);
BOOL ov01_021F6874(FieldSystem *fieldSystem);
void ov01_021F6894(FieldSystem *fieldSystem);
void ov01_021F68B8(FieldSystem *fieldSystem);
BOOL ov01_021F68C0(FieldSystem *fieldSystem);
static SysTask *ov01_021F68DC(void *a0, void *a1, FieldSystem *fieldSystem);
static void ov01_021F690C(FieldSystem *fieldSystem);
static BOOL ov01_021F6930(FieldSystem *fieldSystem);
static void ov01_021F6968(SubAppTaskData *data);
static void ov01_021F69A4(SubAppTaskData *data);
static void ov01_021F69C0(SysTask *task, void *taskData);
static SysTask *ov01_021F6B88(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, void *args);
static void ov01_021F6BA0(BgConfig *bgConfig, SysTask *task);
static BOOL ov01_021F6BAC(BgConfig *bgConfig);
BOOL ov01_021F6BB0(int spriteId);
BOOL ov01_021F6BD0(int scriptId);
BOOL ov01_021F6C28(Ov01SubAppWork *work);
static BOOL ov01_021F6C4C(Ov01SubAppWork *work);
static BOOL ov01_021F6C7C(Ov01SubAppWork *work);
BOOL ov01_021F6CA0(Ov01SubAppWork *work);

// Map object sprite IDs that use the alternate interaction path (overlay_27)
static const u16 sSpriteIds[] = {
    0x0196, 0x015E, 0x018C, 0x0199, 0x019A, 0x019B, 0x019C, 0x019D, 0x0193, 0x0194, 0x0054, 0x0055, 0x0056, 0x0057, 0x0106, 0x017D, 0x011F, 0x017B, 0x018D, 0x018E, 0x018F, 0x0190, 0x0191, 0x0192, 0x0120, 0x00B7, 0x0121, 0x0122, 0x0123, 0x0124, 0x015D, 0x0178, 0x00D2, 0x017C, 0x00EA, 0x0106, 0x00FB, 0x00FC, 0x00FD, 0x00FE, 0x00FF, 0x0100, 0x0101
};

static const SubAppTemplate sSubApps[] = {
    { ov27_02259F80,                 ov27_0225A19C,                 ov27_0225A2C8,                 SUBAPP_NO_OVERLAY             },
    { ov30_0225D520,                 ov30_0225D64C,                 (SubAppExitFunc)ov30_0225D6FC, FS_OVERLAY_ID(touch_save_app) },
    { ov31_0225D520,                 ov31_0225D710,                 ov31_0225D758,                 FS_OVERLAY_ID(OVY_31)         },
    { ov27_0225C250,                 ov27_0225C398,                 ov27_0225C418,                 SUBAPP_NO_OVERLAY             },
    { ov28_0225D520,                 ov28_0225D5EC,                 ov28_0225D624,                 FS_OVERLAY_ID(OVY_28)         },
    { (SubAppInitFunc)ov29_0225D520, ov29_0225D5EC,                 (SubAppExitFunc)ov29_0225D61C, FS_OVERLAY_ID(OVY_29)         },
    { (SubAppInitFunc)ov32_0225D520, ov32_0225D5CC,                 (SubAppExitFunc)ov32_0225D608, FS_OVERLAY_ID(OVY_32)         },
    { (SubAppInitFunc)ov33_0225D520, (SubAppMainFunc)ov33_0225D5A8, (SubAppExitFunc)ov33_0225D5CC, FS_OVERLAY_ID(OVY_33)         },
    { ov01_021F6B88,                 ov01_021F6BA0,                 ov01_021F6BAC,                 FS_OVERLAY_ID(OVY_34)         },
};

void ov01_021F6830(FieldSystem *fieldSystem, int a1, int a2) {
    if (fieldSystem->unk4->unk14 != 0) {
        ov35_02259D80((void *)fieldSystem->unk4->unk14, a1);
    }
}

// Bottom-screen mode callbacks: touch save app directly
void ov01_021F6840(FieldSystem *fieldSystem) {
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_27), OVY_LOAD_ASYNC);
    FIELDSYS_TOUCH_SAVE_TASK(fieldSystem) = ov30_0225D520(fieldSystem->bgConfig, &fieldSystem->lastTouchMenuInput, fieldSystem, NULL);
}

void ov01_021F6864(FieldSystem *fieldSystem) {
    ov30_0225D64C(fieldSystem->bgConfig, FIELDSYS_TOUCH_SAVE_TASK(fieldSystem));
}

BOOL ov01_021F6874(FieldSystem *fieldSystem) {
    if (ov30_0225D6FC(fieldSystem->bgConfig)) {
        UnloadOverlayByID(FS_OVERLAY_ID(OVY_27));
        return TRUE;
    }
    return FALSE;
}

// Bottom-screen mode callbacks: sub-app dispatcher
void ov01_021F6894(FieldSystem *fieldSystem) {
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_27), OVY_LOAD_ASYNC);
    fieldSystem->unk_D8 = ov01_021F68DC(fieldSystem->bgConfig, &fieldSystem->lastTouchMenuInput, fieldSystem);
}

void ov01_021F68B8(FieldSystem *fieldSystem) {
    ov01_021F690C(fieldSystem);
}

BOOL ov01_021F68C0(FieldSystem *fieldSystem) {
    if (ov01_021F6930(fieldSystem)) {
        UnloadOverlayByID(FS_OVERLAY_ID(OVY_27));
        return TRUE;
    }
    return FALSE;
}

static SysTask *ov01_021F68DC(void *a0, void *a1, FieldSystem *fieldSystem) {
    SysTask *task = CreateSysTaskAndEnvironment(ov01_021F69C0, sizeof(SubAppTaskData), 10, HEAP_ID_FIELD1);
    SubAppTaskData *data = SysTask_GetData(task);
    data->appIdx = fieldSystem->unk1C;
    data->state = SUBAPP_STATE_INIT;
    data->appTask = NULL;
    data->nextAppIdx = 0;
    data->fieldSystem = fieldSystem;
    data->args = NULL;
    return task;
}

static void ov01_021F690C(FieldSystem *fieldSystem) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    sSubApps[data->appIdx].main(fieldSystem->bgConfig, data->appTask);
}

static BOOL ov01_021F6930(FieldSystem *fieldSystem) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    if (sSubApps[data->appIdx].exit(fieldSystem->bgConfig) == TRUE) {
        ov01_021F69A4(data);
        DestroySysTaskAndEnvironment(fieldSystem->unk_D8);
        return TRUE;
    }
    return FALSE;
}

static void ov01_021F6968(SubAppTaskData *data) {
    if (sSubApps[data->appIdx].overlayId != SUBAPP_NO_OVERLAY) {
        HandleLoadOverlay(sSubApps[data->appIdx].overlayId, OVY_LOAD_ASYNC);
    }
    data->appTask = sSubApps[data->appIdx].init(data->fieldSystem->bgConfig, &data->fieldSystem->lastTouchMenuInput, data->fieldSystem, data->args);
}

static void ov01_021F69A4(SubAppTaskData *data) {
    if (sSubApps[data->appIdx].overlayId != SUBAPP_NO_OVERLAY) {
        UnloadOverlayByID(sSubApps[data->appIdx].overlayId);
    }
}

static void ov01_021F69C0(SysTask *task, void *taskData) {
    SubAppTaskData *data = taskData;

    switch (data->state) {
    case SUBAPP_STATE_INIT:
        ov01_021F6968(data);
        data->state = SUBAPP_STATE_RUNNING;
        break;
    case SUBAPP_STATE_RUNNING:
        break;
    case SUBAPP_STATE_FADE_OUT:
        BeginNormalPaletteFade(FADE_SUB_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, RGB_BLACK, 2, 1, HEAP_ID_FIELD1);
        data->state = SUBAPP_STATE_WAIT_FADE_OUT;
        break;
    case SUBAPP_STATE_WAIT_FADE_OUT:
        if (IsPaletteFadeFinished()) {
            data->state = SUBAPP_STATE_MAIN;
        }
        break;
    case SUBAPP_STATE_MAIN:
        sSubApps[data->appIdx].main(data->fieldSystem->bgConfig, data->appTask);
        data->state = SUBAPP_STATE_EXIT;
        break;
    case SUBAPP_STATE_EXIT:
        if (sSubApps[data->appIdx].exit(data->fieldSystem->bgConfig) == TRUE) {
            ov01_021F69A4(data);
            data->appIdx = data->nextAppIdx;
            data->state = SUBAPP_STATE_REINIT;
        }
        break;
    case SUBAPP_STATE_REINIT:
        ov01_021F6968(data);
        BeginNormalPaletteFade(FADE_SUB_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, RGB_BLACK, 2, 1, HEAP_ID_FIELD1);
        data->state = SUBAPP_STATE_WAIT_FADE_IN;
        break;
    case SUBAPP_STATE_WAIT_FADE_IN:
        if (IsPaletteFadeFinished()) {
            data->state = SUBAPP_STATE_RUNNING;
        }
        break;
    }
}

void ov01_021F6A9C(FieldSystem *fieldSystem, int a1, void *a2) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    if (data->state == SUBAPP_STATE_RUNNING) {
        data->state = SUBAPP_STATE_FADE_OUT;
        data->nextAppIdx = a1;
        data->args = a2;
    }
}

void ov01_021F6ABC(FieldSystem *fieldSystem, int a1, int a2, void *a3) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    MenuSubAppData *menuData = SysTask_GetData(data->appTask);
    GF_ASSERT(a1 == ov01_021F6B00(fieldSystem));
    menuData->unk0 = a2;
    menuData->unk4 = a3;
}

int ov01_021F6AEC(FieldSystem *fieldSystem) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    MenuSubAppData *menuData = SysTask_GetData(data->appTask);
    return menuData->unk0;
}

int ov01_021F6B00(FieldSystem *fieldSystem) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    return data->appIdx;
}

BOOL ov01_021F6B10(FieldSystem *fieldSystem) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    return data->state;
}

struct UnkStruct_ov01_021EDC28 **ov01_021F6B20(FieldSystem *fieldSystem) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    MenuSubAppData *menuData = SysTask_GetData(data->appTask);
    return &menuData->menu;
}

void ov01_021F6B34(FieldSystem *fieldSystem, UnkCallback_021F6B34 cb, struct UnkStruct_ov01_021EDC28 *menu) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    ov27_0225C41C(data->appTask, cb, menu);
}

void ov01_021F6B50(FieldSystem *fieldSystem) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    ov27_0225A2CC(data->appTask);
}

void ov01_021F6B64(FieldSystem *fieldSystem, int arg1) {
    SubAppTaskData *data = SysTask_GetData(fieldSystem->unk_D8);
    GF_ASSERT(arg1 > 0 && arg1 < 3);
    ov27_0225A2EC(data->appTask, arg1);
}

// Row 8 (OVY_34, view photo) callbacks
static SysTask *ov01_021F6B88(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, void *args) {
    fieldSystem->viewPhotoTask = ov34_0225D7A8(fieldSystem);
    return (SysTask *)fieldSystem->viewPhotoTask;
}

static void ov01_021F6BA0(BgConfig *bgConfig, SysTask *task) {
    ov34_0225D87C(task);
}

static BOOL ov01_021F6BAC(BgConfig *bgConfig) {
    return TRUE;
}

BOOL ov01_021F6BB0(int spriteId) {
    u32 i;
    for (i = 0; i < NELEMS(sSpriteIds); i++) {
        if (spriteId == sSpriteIds[i]) {
            return TRUE;
        }
    }
    return FALSE;
}

BOOL ov01_021F6BD0(int scriptId) {
    if (scriptId >= 7000 && scriptId <= 8799) {
        return TRUE;
    }
    if (scriptId >= 2800 && scriptId <= 2999) {
        return TRUE;
    }
    if (scriptId >= 10000 && scriptId <= 10099) {
        return TRUE;
    }
    if (scriptId >= 10100 && scriptId <= 10149) {
        return TRUE;
    }
    return FALSE;
}

BOOL ov01_021F6C28(Ov01SubAppWork *work) {
    int appIdx = ov01_021F6B00(work->fieldSystem);
    int state = ov01_021F6B10(work->fieldSystem);
    if (appIdx == 6 && state == SUBAPP_STATE_RUNNING) {
        return TRUE;
    }
    return FALSE;
}

static BOOL ov01_021F6C4C(Ov01SubAppWork *work) {
    int appIdx = ov01_021F6B00(work->fieldSystem);
    int state = ov01_021F6B10(work->fieldSystem);
    if (appIdx == 3 && state == SUBAPP_STATE_RUNNING) {
        ov01_021F6ABC(work->fieldSystem, 3, 3, &work->unk90);
        return TRUE;
    }
    return FALSE;
}

static BOOL ov01_021F6C7C(Ov01SubAppWork *work) {
    int appIdx = ov01_021F6B00(work->fieldSystem);
    int menuState = ov01_021F6AEC(work->fieldSystem);
    if (appIdx == 3 && menuState == 6) {
        return TRUE;
    }
    return FALSE;
}

BOOL ov01_021F6CA0(Ov01SubAppWork *work) {
    switch (work->unk98) {
    case 0:
        ov01_021F6A9C(work->fieldSystem, 3, NULL);
        work->unk98++;
        break;
    case 1:
        if (ov01_021F6C4C(work) == TRUE) {
            work->unk98++;
        }
        break;
    case 2:
        if (ov01_021F6C7C(work) == TRUE) {
            work->unk98 = 0;
            return FALSE;
        }
        break;
    }
    return TRUE;
}
