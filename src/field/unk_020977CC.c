#include "global.h"

#include "field_bgm.h"
#include "field_system.h"
#include "field_warp_tasks.h"
#include "heap.h"
#include "launch_application.h"
#include "player_data.h"
#include "sound.h"
#include "task.h"
#include "unk_0200FA24.h"
#include "unk_02055244.h"
#include "unk_02055418.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 unk10[0x48];
} UnkStruct_020977CC;

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    void *unk4;
} UnkStruct_02097810;

extern void LoadAreaOrDungeonLightTxt(int a0, void *a1);
extern void StopBGM(u16 sndseq, int a1);
extern u16 GF_GetCurrentPlayingBGM();

void sub_020977CC(FieldSystem *fieldSystem, u8 a1, u8 a2, u32 a3, u32 a4, u32 a5);
static void sub_02097810(FieldSystem *fieldSystem, int a1, void *a2);
static BOOL sub_02097878(TaskManager *taskManager);
static BOOL sub_020978D0(TaskManager *taskManager);

void sub_020977CC(FieldSystem *fieldSystem, u8 a1, u8 a2, u32 a3, u32 a4, u32 a5) {
    UnkStruct_020977CC *work = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_020977CC));
    work->unk1 = a1;
    work->unk2 = a2;
    work->unk4 = a3;
    work->unk8 = a4;
    work->unkC = a5;
    LoadAreaOrDungeonLightTxt(0, &work->unk10);
    work->unk0 = 0;
    TaskManager_Call(fieldSystem->taskman, sub_020978D0, work);
}

static void sub_02097810(FieldSystem *fieldSystem, int a1, void *a2) {
    UnkStruct_02097810 *work = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_02097810));
    work->unk4 = a2;
    work->unk0 = a1;
    switch (Field_GetTimeOfDay(fieldSystem)) {
    case 0:
    case 1:
        work->unk2 = 0;
        break;
    case 2:
    case 3:
    case 4:
        work->unk2 = 1;
        break;
    default:
        GF_AssertFail();
        work->unk2 = 0;
        break;
    }
    work->unk1 = PlayerProfile_GetTrainerGender(Save_PlayerData_GetProfile(fieldSystem->saveData));
    TaskManager_Call(fieldSystem->taskman, sub_02097878, work);
}

static BOOL sub_02097878(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    UnkStruct_02097810 *work = TaskManager_GetEnvironment(taskManager);
    u32 *state = TaskManager_GetStatePtr(taskManager);
    switch (*state) {
    case 0:
        sub_0203FC68(fieldSystem, work);
        break;
    case 1:
        if (FieldSystem_ApplicationIsRunning(fieldSystem) != 0) {
            return FALSE;
        }
        break;
    case 2:
        Heap_Free(work);
        return TRUE;
    }
    (*state)++;
    return FALSE;
}

static BOOL sub_020978D0(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    UnkStruct_020977CC *work = TaskManager_GetEnvironment(taskManager);
    switch (work->unk0) {
    case 0:
        BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, HEAP_ID_FIELD2);
        GF_SndStartFadeOutBGM(0, 6);
        work->unk0 = 1;
        break;
    case 1:
        if (IsPaletteFadeFinished() == 0 || GF_SndGetFadeTimer() != 0) {
            return FALSE;
        }
        StopBGM(GF_GetCurrentPlayingBGM(), 0);
        CallTask_LeaveOverworld(taskManager);
        work->unk0 = 2;
        break;
    case 2:
        sub_02097810(fieldSystem, work->unk1, &work->unk10);
        work->unk0 = 3;
        break;
    case 3:
        sub_020537F0(taskManager, work->unk4, -1, work->unk8, work->unkC, work->unk2);
        work->unk0 = 4;
        break;
    case 4:
        FieldBGM_PlayForMapHeader(fieldSystem, work->unk4, 0);
        sub_02055408(taskManager);
        work->unk0 = 5;
        break;
    case 5:
        Heap_Free(work);
        return TRUE;
    }
    return FALSE;
}
