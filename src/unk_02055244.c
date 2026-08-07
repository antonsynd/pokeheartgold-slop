#include "unk_02055244.h"

#include "field_system.h"
#include "overlay_01.h"
#include "screen_fade.h"

void CallTask_RestoreOverworld(TaskManager *taskManager);

static BOOL sub_02055244(TaskManager *taskManager);
static BOOL sub_0205528C(TaskManager *taskManager);
static BOOL sub_020552D4(TaskManager *taskManager);
static BOOL sub_02055370(TaskManager *taskManager);
static BOOL sub_020553C0(TaskManager *taskManager);

static BOOL sub_02055244(TaskManager *taskManager) {
    if (sub_0203DF7C(TaskManager_GetFieldSystem(taskManager)) == 0) {
        return TRUE;
    }
    return FALSE;
}

void CallTask_LeaveOverworld(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    if (sub_0203DF7C(fieldSystem) == 0) {
        GF_AssertFail();
        return;
    }
    sub_0203DF34(fieldSystem);
    TaskManager_Call(taskManager, sub_02055244, NULL);
}

static BOOL sub_0205528C(TaskManager *taskManager) {
    if (sub_020505C8(TaskManager_GetFieldSystem(taskManager)) != 0) {
        return TRUE;
    }
    return FALSE;
}

void CallTask_RestoreOverworld(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    if (sub_0203DF7C(fieldSystem) != 0) {
        GF_AssertFail();
        return;
    }
    FieldSystem_LoadFieldOverlay(fieldSystem);
    TaskManager_Call(taskManager, sub_0205528C, NULL);
}

static BOOL sub_020552D4(TaskManager *taskManager) {
    if (IsPaletteFadeFinished() != 0) {
        return TRUE;
    }
    return FALSE;
}

void PaletteFadeUntilFinished(TaskManager *taskManager) {
    if (sub_0203DF7C(TaskManager_GetFieldSystem(taskManager)) == 0) {
        GF_AssertFail();
        return;
    }
    BeginNormalPaletteFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, 0, 6, 1, HEAP_ID_FIELD1);
    TaskManager_Call(taskManager, sub_020552D4, NULL);
}

void CallTask_FadeFromBlack(TaskManager *taskManager) {
    if (sub_0203DF7C(TaskManager_GetFieldSystem(taskManager)) == 0) {
        GF_AssertFail();
        return;
    }
    BeginNormalPaletteFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, 0, 6, 1, HEAP_ID_FIELD1);
    TaskManager_Call(taskManager, sub_020552D4, NULL);
}

static BOOL sub_02055370(TaskManager *taskManager) {
    u32 *state = TaskManager_GetStatePtr(taskManager);
    switch (*state) {
    case 0:
        PaletteFadeUntilFinished(taskManager);
        (*state)++;
        break;
    case 1:
        CallTask_LeaveOverworld(taskManager);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }
    return FALSE;
}

void sub_020553B0(TaskManager *taskManager) {
    TaskManager_Call(taskManager, sub_02055370, NULL);
}

static BOOL sub_020553C0(TaskManager *taskManager) {
    u32 *state = TaskManager_GetStatePtr(taskManager);
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    switch (*state) {
    case 0:
        CallTask_RestoreOverworld(taskManager);
        (*state)++;
        break;
    case 1:
        FieldSystem_DrawMapNameAnimation(fieldSystem);
        CallTask_FadeFromBlack(taskManager);
        (*state)++;
        break;
    case 2:
        return TRUE;
    }
    return FALSE;
}

void sub_02055408(TaskManager *taskManager) {
    TaskManager_Call(taskManager, sub_020553C0, NULL);
}
