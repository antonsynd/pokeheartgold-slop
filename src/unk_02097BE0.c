#include "unk_02097BE0.h"

#include "global.h"

#include "field_system.h"
#include "heap.h"
#include "task.h"
#include "unk_02055244.h"
#include "unk_020552A4.h"
#include "unk_02055418.h"
#include "unk_02097B78.h"

// Local prototype: this file was matched against a wider (int) signature for the
// box-test/scene args. launch_application.h declares them as u16, which would emit
// a truncation MWCC did not at match time, so use the frozen int-arg form here.
extern LegendaryCinematicArgs *LegendaryCinematic_LaunchApp(FieldSystem *a0, UnkStruct_0203FCC4 *a1, int a2, int a3, enum HeapID a4);

typedef struct {
    UnkStruct_0203FCC4 unk_00;
    int unk_48;
    int unk_4c;
    int unk_50;
} UnkStruct_02097BE0;

typedef struct {
    UnkStruct_02097BE0 *unk_00;
    LegendaryCinematicArgs *unk_04;
    int unk_08;
} UnkStruct_02097CB4;

static BOOL sub_02097C50(TaskManager *taskMan);
static void sub_02097CB4(FieldSystem *fieldSystem, UnkStruct_02097BE0 *env);
static BOOL sub_02097CD8(TaskManager *taskMan);

void sub_02097BE0(FieldSystem *fieldSystem, u16 scene) {
    UnkStruct_02097BE0 *env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_02097BE0));

    env->unk_00 = **(UnkStruct_0203FCC4 **)&fieldSystem->modelAttributes;
    env->unk_48 = scene;
    env->unk_50 = 0;
    switch (Field_GetTimeOfDay(fieldSystem)) {
    case 0:
    case 1:
        env->unk_4c = 0;
        break;
    case 2:
        env->unk_4c = 1;
        break;
    case 3:
    case 4:
        env->unk_4c = 2;
        break;
    default:
        GF_AssertFail();
        env->unk_4c = 1;
        break;
    }
    TaskManager_Call(fieldSystem->taskman, sub_02097C50, env);
}

static BOOL sub_02097C50(TaskManager *taskMan) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskMan);
    UnkStruct_02097BE0 *env = TaskManager_GetEnvironment(taskMan);

    switch (env->unk_50) {
    case 0:
        CallTask_LeaveOverworld(taskMan);
        env->unk_50++;
        break;
    case 1:
        sub_02097CB4(fieldSystem, env);
        env->unk_50++;
        break;
    case 2:
        CallTask_RestoreOverworld(taskMan);
        env->unk_50++;
        break;
    case 3:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

static void sub_02097CB4(FieldSystem *fieldSystem, UnkStruct_02097BE0 *env) {
    UnkStruct_02097CB4 *env2 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_02097CB4));

    env2->unk_00 = env;
    env2->unk_08 = 0;
    TaskManager_Call(fieldSystem->taskman, sub_02097CD8, env2);
}

static BOOL sub_02097CD8(TaskManager *taskMan) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskMan);
    UnkStruct_02097CB4 *env2 = TaskManager_GetEnvironment(taskMan);
    UnkStruct_02097BE0 *env = env2->unk_00;

    switch (env2->unk_08) {
    case 0:
        env2->unk_04 = LegendaryCinematic_LaunchApp(fieldSystem, &env->unk_00, env->unk_48, env->unk_4c, HEAP_ID_FIELD2);
        env2->unk_08++;
        break;
    case 1:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            env2->unk_08++;
        }
        break;
    case 2:
        Heap_Free(env2->unk_04);
        Heap_Free(env2);
        return TRUE;
    }
    return FALSE;
}
