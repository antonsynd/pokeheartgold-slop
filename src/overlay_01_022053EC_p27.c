#include "global.h"

#include "constants/movements.h"

#include "field_system.h"
#include "follow_mon.h"
#include "heap.h"
#include "map_object.h"
#include "overlay_01_022031C0.h"
#include "task.h"
#include "unk_02062108.h"

typedef struct Ov01FollowMonJumpEnv {
    u8 state;
    u8 step;
    u8 timer;
    u8 movementIndex;
    u8 filler_04[0x40];
    BOOL facingRight;
} Ov01FollowMonJumpEnv;

typedef struct Ov01S8Steps {
    s8 values[8];
} Ov01S8Steps;

typedef struct Ov01Movements {
    u32 values[2];
} Ov01Movements;

// MWCC sorts .rodata by size with an unstable sort; this definition order
// is the one that comes out as sYOffsets, sMovements, sZOffsets.
static const Ov01Movements sMovements = { MOVEMENT_STEP_LEFT, MOVEMENT_STEP_UP };
static const Ov01S8Steps sYOffsets = { 1, 2, 2, 3, 3, 2, 2, 0 };
static const Ov01S8Steps sZOffsets = { 4, 4, 4, 2, 2, 2, 0, 0 };

extern const VecFx32 ov01_02209704;

void ov01_02205790(FieldSystem *fieldSystem, int a1);
BOOL ov01_022057C4(FieldSystem *fieldSystem);
u8 ov01_02205CF0(FieldSystem *fieldSystem, Ov01FollowMonJumpEnv *env);
void *ov01_021F771C(MapObjectManager *mapObjectManager);
void sub_02023E78(void *billboard, VecFx32 *scale);

BOOL ov01_02205B14(TaskManager *taskManager) {
    VecFx32 pos;
    VecFx32 scale;
    LocalMapObject *mapObject;
    fx32 dx;
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    Ov01FollowMonJumpEnv *env = TaskManager_GetEnvironment(taskManager);

    switch (env->state) {
    case 0:
        if (!FollowMon_IsActive(fieldSystem)) {
            Heap_Free(env);
            return TRUE;
        }
        if (ov01_022057C4(fieldSystem)) {
            Heap_Free(env);
            return TRUE;
        }
        MapObject_UnpauseMovement(FollowMon_GetMapObject(fieldSystem));
        env->state++;
    case 1:
        if (MapObject_IsMovementPaused(FollowMon_GetMapObject(fieldSystem))) {
            env->state = ov01_02205CF0(fieldSystem, env);
        }
        break;
    case 2: {
        Ov01Movements movements = sMovements;

        mapObject = FollowMon_GetMapObject(fieldSystem);
        if (MapObject_IsMovementPaused(mapObject)) {
            MapObject_SetHeldMovement(mapObject, movements.values[env->movementIndex++]);
            if (env->movementIndex >= 2) {
                env->state++;
            }
        }
        break;
    }
    case 3:
        mapObject = FollowMon_GetMapObject(fieldSystem);
        if (MapObject_IsMovementPaused(mapObject)) {
            MapObject_SetHeldMovement(mapObject, MOVEMENT_FACE_UP);
            env->state++;
        }
        break;
    case 4: {
        Ov01S8Steps zOffsets = sZOffsets;
        Ov01S8Steps yOffsets = sYOffsets;

        mapObject = FollowMon_GetMapObject(fieldSystem);
        dx = FX32_CONST(2);
        if (env->facingRight == FALSE) {
            dx *= -1;
        }
        MapObject_CopyPositionVector(mapObject, &pos);
        pos.z -= zOffsets.values[env->step] * FX32_ONE;
        pos.x += dx;
        pos.y += yOffsets.values[env->step] * FX32_ONE;
        MapObject_SetPositionVector(mapObject, &pos);
        env->step++;
        if (env->step >= 8) {
            env->state++;
        }
        break;
    }
    case 5:
        ov01_0220329C(FollowMon_GetMapObject(fieldSystem), 3);
        env->state++;
        break;
    case 6:
        env->timer++;
        if (env->timer >= 20) {
            ov01_02205790(fieldSystem, 0);
            scale = ov01_02209704;
            sub_02023E78(ov01_021F771C(fieldSystem->mapObjectManager), &scale);
            sub_02069E84(fieldSystem->followMon.mapObject, 1);
            env->state++;
        }
        break;
    case 7:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}
