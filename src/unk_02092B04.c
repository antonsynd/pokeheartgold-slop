#include "unk_02092B04.h"

#include "global.h"

#include "field/fieldmap.h"

#include "bag_view.h"
#include "heap.h"
#include "overlay_01.h"
#include "screen_fade.h"

typedef struct UnkStruct_02092B04_sub {
    u8 unk0[2];
    u16 unk2;
} UnkStruct_02092B04_sub;

typedef struct UnkStruct_02092B04 {
    u8 unk000[4];
    BagView *unk004;
    u8 unk008[0x272 - 0x008];
    u8 unk272;
    u8 unk273[0x2A0 - 0x273];
    UnkStruct_02092B04_sub *unk2A0;
} UnkStruct_02092B04;

extern BOOL Task_Mart(TaskManager *taskman);

static u8 sub_02092B40(FieldSystem *fieldSystem, UnkStruct_02092B04 *env);
static void sub_02092B7C(TaskManager *taskman);

BOOL sub_02092B04(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    UnkStruct_02092B04 *env = TaskManager_GetEnvironment(taskman);
    switch (env->unk272) {
    case 0x18:
        env->unk272 = sub_02092B40(fieldSystem, env);
        break;
    case 0x19:
        sub_02092B7C(taskman);
        break;
    }
    return FALSE;
}

static u8 sub_02092B40(FieldSystem *fieldSystem, UnkStruct_02092B04 *env) {
    if (FieldSystem_ApplicationIsRunning(fieldSystem)) {
        return 0x18;
    }
    if (env->unk2A0 != NULL) {
        env->unk2A0->unk2 = sub_0207791C(env->unk004);
    }
    Heap_Free(env->unk004);
    FieldSystem_LoadFieldOverlay(fieldSystem);
    return 0x19;
}

static void sub_02092B7C(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    UnkStruct_02092B04 *env = TaskManager_GetEnvironment(taskman);
    if (sub_020505C8(fieldSystem)) {
        FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
        TaskManager_Jump(taskman, Task_Mart, env);
        env->unk272 = 0x1A;
    }
}
