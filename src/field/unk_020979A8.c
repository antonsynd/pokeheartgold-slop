#include "global.h"

#include "field_bgm.h"
#include "field_system.h"
#include "field_warp_tasks.h"
#include "heap.h"
#include "launch_application.h"
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
} UnkStruct_020979A8;

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2[2];
    void *unk4;
} UnkStruct_020979EC;

extern void LoadAreaOrDungeonLightTxt(int a0, void *a1);
extern void StopBGM(u16 sndseq, int a1);
extern u16 GF_GetCurrentPlayingBGM();

void sub_020979A8(FieldSystem *fieldSystem, u8 a1, u8 a2, u32 a3, u32 a4, u32 a5);
static void sub_020979EC(FieldSystem *fieldSystem, int a1, void *a2);
static BOOL sub_02097A48(TaskManager *taskManager);
static BOOL sub_02097AA0(TaskManager *taskManager);

void sub_020979A8(FieldSystem *fieldSystem, u8 a1, u8 a2, u32 a3, u32 a4, u32 a5) {
    UnkStruct_020979A8 *work = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_020979A8));
    work->unk1 = a1;
    work->unk2 = a2;
    work->unk4 = a3;
    work->unk8 = a4;
    work->unkC = a5;
    LoadAreaOrDungeonLightTxt(0, &work->unk10);
    work->unk0 = 0;
    TaskManager_Call(fieldSystem->taskman, sub_02097AA0, work);
}

static void sub_020979EC(FieldSystem *fieldSystem, int a1, void *a2) {
    UnkStruct_020979EC *work = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_020979EC));
    work->unk4 = a2;
    work->unk0 = a1;
    switch (Field_GetTimeOfDay(fieldSystem)) {
    case 0:
    case 1:
        work->unk1 = 0;
        break;
    case 2:
    case 3:
    case 4:
        work->unk1 = 1;
        break;
    default:
        GF_AssertFail();
        work->unk1 = 0;
        break;
    }
    TaskManager_Call(fieldSystem->taskman, sub_02097A48, work);
}

static BOOL sub_02097A48(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    UnkStruct_020979EC *work = TaskManager_GetEnvironment(taskManager);
    u32 *state = TaskManager_GetStatePtr(taskManager);
    switch (*state) {
    case 0:
        sub_0203FC90(fieldSystem, work);
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

static BOOL sub_02097AA0(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    UnkStruct_020979A8 *work = TaskManager_GetEnvironment(taskManager);
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
        sub_020979EC(fieldSystem, work->unk1, &work->unk10);
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
