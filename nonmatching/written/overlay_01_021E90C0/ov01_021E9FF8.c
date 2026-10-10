typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct {
    u8 state;
    u8 unk1;
    u16 angle;
    u32 active;
} UnkStruct_ov01_021E9FF8;

void *TaskManager_GetFieldSystem(void *task);
void *TaskManager_GetEnvironment(void *task);
void *PlayerAvatar_GetMapObject(void *avatar);
u32 PlayerAvatar_GetFacingDirection(void *avatar);
void MapObject_SetVisible(void *obj, u32 visible);
u16 Camera_GetPerspectiveAngle(void *camera);
void Camera_AdjustPerspectiveAngle(u16 delta, void *camera);
void GF_AssertFail(void);
void NewFieldFadeEnvironment(void *task, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7);
void MapObject_SetHeldMovement(void *obj, u32 movement);
s32 MapObject_IsMovementPaused(void *obj);
void MapObject_ClearHeldMovementIfActive(void *obj);
s32 IsPaletteFadeFinished(void);
void Heap_Free(void *p);
void ov01_021E9610(void *camera, u8 *p);

s32 ov01_021E9FF8(void *task)
{
    u32 callerR6;
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    char *fs = TaskManager_GetFieldSystem(task);
    UnkStruct_ov01_021E9FF8 *env = TaskManager_GetEnvironment(task);
    void *obj;

    switch (env->state) {
    case 0: {
        u8 dir;
        u32 v;
        obj = PlayerAvatar_GetMapObject(*(void **)(fs + 0x40));
        dir = (u8)PlayerAvatar_GetFacingDirection(*(void **)(fs + 0x40));
        if (dir == 1) {
            MapObject_SetVisible(obj, 1);
            env->state = 1;
        } else {
            MapObject_SetVisible(obj, 0);
            env->state = 3;
        }
        env->active = 0;
        env->unk1 = 0;
        env->angle = Camera_GetPerspectiveAngle(*(void **)(fs + 0x24));
        Camera_AdjustPerspectiveAngle(0xFFA0, *(void **)(fs + 0x24));
        switch (dir) {
        case 0:
            v = 3;
            break;
        case 1:
            v = 5;
            break;
        case 2:
            v = 7;
            break;
        case 3:
            v = 0x27;
            break;
        default:
            v = callerR6;
            GF_AssertFail();
            break;
        }
        NewFieldFadeEnvironment(task, 0, v, 1, 0, 6, 1, 0xb);
        env->active = 1;
        break;
    }
    case 1:
        obj = PlayerAvatar_GetMapObject(*(void **)(fs + 0x40));
        MapObject_SetVisible(obj, 0);
        MapObject_SetHeldMovement(obj, 0xd);
        env->state++;
        break;
    case 2:
        obj = PlayerAvatar_GetMapObject(*(void **)(fs + 0x40));
        if (MapObject_IsMovementPaused(obj) == 1) {
            MapObject_ClearHeldMovementIfActive(obj);
            env->state++;
        }
        break;
    case 3:
        if (IsPaletteFadeFinished() != 0) {
            if (env->angle == Camera_GetPerspectiveAngle(*(void **)(fs + 0x24))) {
                Heap_Free(env);
                return 1;
            }
        }
        break;
    }
    if (env->active != 0) {
        ov01_021E9610(*(void **)(fs + 0x24), &env->unk1);
    }
    return 0;
}
