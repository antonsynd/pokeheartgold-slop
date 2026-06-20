#include <string.h>

#include "global.h"

#include "field/overlay_01_021FB878.h"

#include "field_move_environment.h"
#include "field_system.h"
#include "follow_mon.h"
#include "heap.h"
#include "map_object.h"
#include "overlay_01.h"
#include "overlay_01_022053EC.h"
#include "overlay_02.h"
#include "player_avatar.h"
#include "task.h"

typedef struct SweetScentWork {
    void *unk_0;   // 0x00
    void *unk_4;   // 0x04
    u32 partySlot; // 0x08
} SweetScentWork;  // 0x0c

typedef struct SweetScentModelWork {
    NNSFndAllocator allocator;      // 0x00
    Field3dModel model;             // 0x10
    Field3DModelAnimation anims[3]; // 0x20
    Field3dObject object;           // 0x5c
} SweetScentModelWork;              // 0xd4

extern int ov01_022062CC(FieldSystem *fieldSystem);

static void ov01_021FCFEC(FieldSystem *fieldSystem);
static BOOL ov01_021FD014(TaskManager *taskManager);
static void ov01_021FD064(enum HeapID heapId, FieldSystem *fieldSystem, SweetScentModelWork *work);
static void ov01_021FD128(SweetScentModelWork *work);
static BOOL ov01_021FD154(Field3DModelAnimation *anims, u32 count);
static void ov01_021FD190(Field3DModelAnimation *anims, u32 count, fx32 frame);

BOOL Task_UseSweetScentInField(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    FieldMoveEnvironment *env = TaskManager_GetEnvironment(taskManager);
    u32 *statePtr = TaskManager_GetStatePtr(taskManager);
    SweetScentWork *work = (SweetScentWork *)env->moveData;

    switch (*statePtr) {
    case 0: {
        u32 partySlot = ((FieldMoveData *)work)->partySlot;
        SweetScentWork *newWork;
        Heap_Free(work);
        newWork = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(SweetScentWork));
        env->moveData = (FieldMoveData *)newWork;
        newWork->partySlot = partySlot;
        (*statePtr)++;
        break;
    }
    case 1: {
        u32 size = GetHoneySweetScentWorkSize();
        work->unk_4 = Heap_AllocAtEnd(HEAP_ID_FIELD2, size);
        memset(work->unk_4, 0, size);
        if ((u32)(PlayerAvatar_GetState(fieldSystem->playerAvatar) - 1) <= 1) {
            (*statePtr)++;
        } else if (work->partySlot == ov01_022062CC(fieldSystem) && FollowMon_IsVisible(fieldSystem)) {
            TaskManager_Call(taskManager, ov01_02205A60, NULL);
            *statePtr = 4;
        } else {
            (*statePtr)++;
        }
        break;
    }
    case 2:
        work->unk_0 = ov02_02249458(fieldSystem, 0, env->mon, PlayerAvatar_GetGender(fieldSystem->playerAvatar));
        (*statePtr)++;
        break;
    case 3:
        if (ov02_0224953C(work->unk_0) != 0) {
            ov02_02249548(work->unk_0);
            *statePtr = 6;
        }
        break;
    case 4: {
        u8 mood;
        if (ov02_02250780(fieldSystem, 0xc) != 0) {
            mood = 2;
            FieldSystem_UnkSub108_AddMonMood(fieldSystem->unk108, 1);
        } else {
            mood = 1;
        }
        ov02_022507B4(fieldSystem, mood);
        (*statePtr)++;
        break;
    }
    case 5:
        ov01_021FCFEC(fieldSystem);
        (*statePtr)++;
        break;
    case 6:
        TaskManager_Call(taskManager, Task_HoneyOrSweetScent, work->unk_4);
        (*statePtr)++;
        break;
    case 7:
        Heap_Free(work);
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

static void ov01_021FCFEC(FieldSystem *fieldSystem) {
    SweetScentModelWork *work = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(SweetScentModelWork));
    ov01_021FD064(HEAP_ID_FIELD1, fieldSystem, work);
    TaskManager_Call(fieldSystem->taskman, ov01_021FD014, work);
}

static BOOL ov01_021FD014(TaskManager *taskManager) {
    SweetScentModelWork *work = TaskManager_GetEnvironment(taskManager);
    u32 *statePtr = TaskManager_GetStatePtr(taskManager);

    switch (*statePtr) {
    case 0:
        if (ov01_021FD154(work->anims, 3) != 0) {
            (*statePtr)++;
        }
        Field3dObject_Draw(&work->object);
        break;
    case 1:
        ov01_021FD128(work);
        Heap_Free(work);
        return TRUE;
    }
    return FALSE;
}

static void ov01_021FD064(enum HeapID heapId, FieldSystem *fieldSystem, SweetScentModelWork *work) {
    VecFx32 position;

    HeapExp_FndInitAllocator(&work->allocator, heapId, 0x20);
    Field3dModel_LoadFromFilesystem(&work->model, NARC_a_1_3_4, 0x17, heapId);
    Field3dModelAnimation_LoadFromFilesystem(&work->anims[0], &work->model, NARC_a_1_3_4, 0x15, heapId, &work->allocator);
    Field3dModelAnimation_LoadFromFilesystem(&work->anims[1], &work->model, NARC_a_1_3_4, 0x16, heapId, &work->allocator);
    Field3dModelAnimation_LoadFromFilesystem(&work->anims[2], &work->model, NARC_a_1_3_4, 0x14, heapId, &work->allocator);
    Field3dObject_InitFromModel(&work->object, &work->model);
    Field3dObject_AddAnimation(&work->object, &work->anims[0]);
    Field3dObject_AddAnimation(&work->object, &work->anims[1]);
    Field3dObject_AddAnimation(&work->object, &work->anims[2]);
    ov01_021FD190(work->anims, 3, 0);
    MapObject_CopyPositionVector(FollowMon_GetMapObject(fieldSystem), &position);
    Field3dObject_SetPosEx(&work->object, position.x, position.y, position.z);
    Field3dObject_SetActiveFlag(&work->object, TRUE);
}

static void ov01_021FD128(SweetScentModelWork *work) {
    Field3dModelAnimation_Unload(&work->anims[2], &work->allocator);
    Field3dModelAnimation_Unload(&work->anims[1], &work->allocator);
    Field3dModelAnimation_Unload(&work->anims[0], &work->allocator);
    Field3dModel_Unload(&work->model);
}

static BOOL ov01_021FD154(Field3DModelAnimation *anims, u32 count) {
    u8 i;
    u8 numDone = 0;
    for (i = 0; i < count; i++) {
        if (Field3dModelAnimation_FrameAdvanceAndCheck(&anims[i], FX32_ONE) != 0) {
            numDone++;
        }
    }
    if (numDone == count) {
        return TRUE;
    }
    return FALSE;
}

static void ov01_021FD190(Field3DModelAnimation *anims, u32 count, fx32 frame) {
    u8 i;
    for (i = 0; i < count; i++) {
        Field3dModelAnimation_FrameSet(&anims[i], frame);
    }
}
