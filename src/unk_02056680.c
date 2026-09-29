#include "unk_02056680.h"

#include "field/fieldmap.h"

#include "assert.h"
#include "camera.h"
#include "follow_mon.h"
#include "heap.h"
#include "map_object.h"
#include "metatile_behavior.h"
#include "overlay_01.h"
#include "overlay_01_021E90C0.h"
#include "overlay_01_021F1AFC.h"
#include "overlay_manager.h"
#include "player_avatar.h"
#include "screen_fade.h"
#include "unk_02054648.h"
#include "unk_02055BF0.h"
#include "unk_02062108.h"

typedef struct UnkStruct_02056D00 {
    u16 state;
    u16 unk2;
    s64 *unk4;
    SaveData *saveData;
    u32 unkC;
} UnkStruct_02056D00;

BOOL ov01_021E971C(FieldSystem *fieldSystem, FieldEnvSubUnk18 *a1, u8 direction);
BOOL ov01_021E9C40(TaskManager *taskMan);
fx32 sub_02054940(FieldSystem *fieldSystem, fx32 y, fx32 x, fx32 z, u8 *outSelector);
int ov45_02229EE0(OverlayManager *man, int *state);
int ov45_02229F70(OverlayManager *man, int *state);
int ov45_02229F94(OverlayManager *man, int *state);

static BOOL sub_02056D30(TaskManager *man);

FS_EXTERN_OVERLAY(OVY_45);

static const OverlayManagerTemplate _020FC790 = { ov45_02229EE0, ov45_02229F70, ov45_02229F94, FS_OVERLAY_ID(OVY_45) };

BOOL sub_02056680(TaskManager *man) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(man);
    FieldTransitionEnvironment *fenv = TaskManager_GetEnvironment(man);
    switch (fenv->transitionState) {
    case 0:
        fenv->unk18 = ov01_021E90C0();
        ov01_021E90DC(PlayerAvatar_GetXCoord(fieldSystem->playerAvatar), PlayerAvatar_GetZCoord(fieldSystem->playerAvatar), fenv->unk18);
        fenv->transitionState++;
        break;
    case 1: {
        FieldEnvSubUnk18 *unk = fenv->unk18;
        if (ov01_021E971C(fieldSystem, unk, PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar))) {
            ov01_021E90D4(fenv->unk18);
            fenv->transitionState++;
        }
        break;
    }
    case 2:
        return TRUE;
    }
    return FALSE;
}

BOOL sub_020566F8(TaskManager *man) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(man);
    FieldTransitionEnvironment *fenv = TaskManager_GetEnvironment(man);
    LocalMapObject *obj;
    switch (fenv->transitionState) {
    case 0: {
        FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
        obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
        u32 dir = PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar);
        if (dir == 2) {
            MapObject_SetHeldMovement(obj, 10);
        } else if (dir == 3) {
            MapObject_SetHeldMovement(obj, 11);
        } else {
            GF_ASSERT(FALSE);
        }
        fenv->transitionState++;
        break;
    }
    case 1:
        obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
        if (MapObject_IsMovementPaused(obj) == TRUE) {
            MapObject_ClearHeldMovementIfActive(obj);
            if (FollowMon_IsActive(fieldSystem)) {
                ov01_02205790(fieldSystem, PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar));
            }
            fenv->transitionState++;
        }
        break;
    case 2:
        if (IsPaletteFadeFinished()) {
            fenv->transitionState++;
        }
        break;
    case 3:
        return TRUE;
    }
    return FALSE;
}

BOOL sub_020567B4(TaskManager *man) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(man);
    FieldTransitionEnvironment *fenv = TaskManager_GetEnvironment(man);
    LocalMapObject *obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    switch (fenv->transitionState) {
    case 0: {
        FieldEnvSubUnk18 *unk = fenv->unk18 = ov01_021E90C0();
        ov01_021E90DC(PlayerAvatar_GetXCoord(fieldSystem->playerAvatar), PlayerAvatar_GetZCoord(fieldSystem->playerAvatar), unk);
        TaskManager_Call(man, ov01_021E9C40, unk);
        fenv->transitionState++;
        break;
    }
    case 1:
        ov01_021E90D4(fenv->unk18);
        return TRUE;
    }
    return FALSE;
}

BOOL sub_0205681C(TaskManager *man) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(man);
    FieldTransitionEnvironment *fenv = TaskManager_GetEnvironment(man);
    LocalMapObject *obj;
    FieldEnvSubUnk18 *fenv18;
    switch (fenv->transitionState) {
    case 0:
        fenv->unk18 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(FieldEnvSubUnk18));
        fenv->unk18->state = 0;
        FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
        fenv->transitionState++;
        break;
    case 1:
        obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
        fenv18 = fenv->unk18;
        fenv18->state++;
        VecFx32 pos;
        MapObject_CopyPositionVector(obj, &pos);
        pos.y += 8192;
        MapObject_SetPositionVector(obj, &pos);
        if (fenv18->state >= 16) {
            PlayerAvatar_ToggleAutomaticHeightUpdatingImmediate(fieldSystem->playerAvatar, TRUE);
            fenv->transitionState++;
        }
        break;
    case 2:
        Field_PlayerAvatar_OrrTransitionFlags(fieldSystem->playerAvatar, 1);
        Field_PlayerAvatar_ApplyTransitionFlags(fieldSystem->playerAvatar);
        fenv->transitionState++;
        break;
    case 3:
        obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
        if (MapObject_AreBitsSetForMovementScriptInit(obj)) {
            MapObject_SetHeldMovement(obj, 12);
            fenv->transitionState++;
        }
        break;
    case 4:
        if (MapObject_AreBitsSetForMovementScriptInit(PlayerAvatar_GetMapObject(fieldSystem->playerAvatar)) && IsPaletteFadeFinished()) {
            if (FollowMon_IsActive(fieldSystem)) {
                ov01_02205790(fieldSystem, 0);
                sub_0205FC94(FollowMon_GetMapObject(fieldSystem), 0x30);
                sub_02069DC8(FollowMon_GetMapObject(fieldSystem), TRUE);
            }
            fenv->transitionState++;
        }
        break;
    case 5:
        Heap_Free(fenv->unk18);
        return TRUE;
    }
    return FALSE;
}

BOOL sub_02056938(TaskManager *man) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(man);
    FieldTransitionEnvironment *fenv = TaskManager_GetEnvironment(man);
    LocalMapObject *obj;
    FieldEnvSubUnk18 *fenv18;
    switch (fenv->transitionState) {
    case 0:
        fenv->unk18 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(FieldEnvSubUnk18));
        fenv->unk18->state = 0;
        FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
        fenv->transitionState++;
        break;
    case 1:
        obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
        fenv18 = fenv->unk18;
        fenv18->state++;
        VecFx32 pos;
        MapObject_CopyPositionVector(obj, &pos);
        pos.y -= 8192;
        MapObject_SetPositionVector(obj, &pos);
        if (fenv18->state >= 16) {
            PlayerAvatar_ToggleAutomaticHeightUpdatingImmediate(fieldSystem->playerAvatar, TRUE);
            fenv->transitionState++;
        }
        break;
    case 2:
        Field_PlayerAvatar_OrrTransitionFlags(fieldSystem->playerAvatar, 1);
        Field_PlayerAvatar_ApplyTransitionFlags(fieldSystem->playerAvatar);
        fenv->transitionState++;
        break;
    case 3:
        obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
        if (MapObject_AreBitsSetForMovementScriptInit(obj)) {
            MapObject_SetHeldMovement(obj, 13);
            fenv->transitionState++;
        }
        break;
    case 4:
        if (MapObject_AreBitsSetForMovementScriptInit(PlayerAvatar_GetMapObject(fieldSystem->playerAvatar)) && IsPaletteFadeFinished()) {
            if (FollowMon_IsActive(fieldSystem)) {
                ov01_02205790(fieldSystem, 1);
                sub_0205FC94(FollowMon_GetMapObject(fieldSystem), 0x30);
                sub_02069DC8(FollowMon_GetMapObject(fieldSystem), TRUE);
            }
            fenv->transitionState++;
        }
        break;
    case 5:
        Heap_Free(fenv->unk18);
        return TRUE;
    }
    return FALSE;
}

void sub_02056A54(FieldSystem *fieldSystem) {
    VecFx32 pos;
    VecFx32 delta;
    const VecFx32 *curTarget = Camera_GetCurrentTarget(fieldSystem->camera);
    VecFx32 lookAt = Camera_GetLookAtCamTarget(fieldSystem->camera);
    u32 dir;

    VEC_Subtract(&lookAt, curTarget, &delta);
    dir = PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar);
    PlayerAvatar_CopyPositionVector(fieldSystem->playerAvatar, &pos);
    if (dir == 3) {
        pos.x -= FX32_CONST(16);
    } else {
        pos.x += FX32_CONST(16);
    }
    pos.y = sub_02054940(fieldSystem, pos.y, pos.x, pos.z, NULL);
    sub_0205C810(fieldSystem->playerAvatar, &pos, dir);
    Camera_SetLookAtTargetAndRecalcPos(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_SetFixedTarget(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_OffsetLookAtPosAndTarget(&delta, fieldSystem->camera);
}

void sub_02056AEC(FieldSystem *fieldSystem) {
    VecFx32 pos;
    VecFx32 delta;
    const VecFx32 *curTarget = Camera_GetCurrentTarget(fieldSystem->camera);
    VecFx32 lookAt = Camera_GetLookAtCamTarget(fieldSystem->camera);
    u32 dir;
    u8 behavior;

    VEC_Subtract(&lookAt, curTarget, &delta);
    dir = PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar);
    PlayerAvatar_CopyPositionVector(fieldSystem->playerAvatar, &pos);
    behavior = GetMetatileBehavior(fieldSystem, PlayerAvatar_GetXCoord(fieldSystem->playerAvatar), PlayerAvatar_GetZCoord(fieldSystem->playerAvatar));
    if (MetatileBehavior_IsWarpStairsEast(behavior)) {
        pos.x += FX32_CONST(16);
        dir = 2;
    } else if (MetatileBehavior_IsWarpStairsWest(behavior)) {
        pos.x -= FX32_CONST(16);
        dir = 3;
    }
    pos.y = sub_02054940(fieldSystem, pos.y, pos.x, pos.z, NULL);
    sub_0205C810(fieldSystem->playerAvatar, &pos, dir);
    Camera_SetLookAtTargetAndRecalcPos(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_SetFixedTarget(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_OffsetLookAtPosAndTarget(&delta, fieldSystem->camera);
    if (FollowMon_IsActive(fieldSystem)) {
        MapObject_SetFacingDirectionDirect(FollowMon_GetMapObject(fieldSystem), dir);
    }
}

void sub_02056BC8(FieldSystem *fieldSystem) {
    VecFx32 pos;
    VecFx32 delta;
    const VecFx32 *curTarget = Camera_GetCurrentTarget(fieldSystem->camera);
    VecFx32 lookAt = Camera_GetLookAtCamTarget(fieldSystem->camera);
    LocalMapObject *obj;

    VEC_Subtract(&lookAt, curTarget, &delta);
    obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    PlayerAvatar_CopyPositionVector(fieldSystem->playerAvatar, &pos);
    PlayerAvatar_ToggleAutomaticHeightUpdating(fieldSystem->playerAvatar, FALSE);
    pos.y -= FX32_CONST(32);
    sub_0205C810(fieldSystem->playerAvatar, &pos, 0);
    Camera_SetLookAtTargetAndRecalcPos(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_SetFixedTarget(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_OffsetLookAtPosAndTarget(&delta, fieldSystem->camera);
    MapObject_ClearHeldMovementIfActive(obj);
    Field_PlayerAvatar_OrrTransitionFlags(fieldSystem->playerAvatar, 512);
    Field_PlayerAvatar_ApplyTransitionFlags(fieldSystem->playerAvatar);
    sub_0205F328(obj, 0);
}

void sub_02056C64(FieldSystem *fieldSystem) {
    VecFx32 pos;
    VecFx32 delta;
    const VecFx32 *curTarget = Camera_GetCurrentTarget(fieldSystem->camera);
    VecFx32 lookAt = Camera_GetLookAtCamTarget(fieldSystem->camera);
    LocalMapObject *obj;

    VEC_Subtract(&lookAt, curTarget, &delta);
    obj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);
    PlayerAvatar_CopyPositionVector(fieldSystem->playerAvatar, &pos);
    PlayerAvatar_ToggleAutomaticHeightUpdating(fieldSystem->playerAvatar, FALSE);
    pos.y += FX32_CONST(32);
    sub_0205C810(fieldSystem->playerAvatar, &pos, 0);
    Camera_SetLookAtTargetAndRecalcPos(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_SetFixedTarget(PlayerAvatar_GetPositionVector(fieldSystem->playerAvatar), fieldSystem->camera);
    Camera_OffsetLookAtPosAndTarget(&delta, fieldSystem->camera);
    MapObject_ClearHeldMovementIfActive(obj);
    Field_PlayerAvatar_OrrTransitionFlags(fieldSystem->playerAvatar, 512);
    Field_PlayerAvatar_ApplyTransitionFlags(fieldSystem->playerAvatar);
    sub_0205F328(obj, 0);
}

void sub_02056D00(TaskManager *taskManager, u16 a1) {
    UnkStruct_02056D00 *env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_02056D00));
    memset(env, 0, sizeof(UnkStruct_02056D00));
    env->unk2 = a1;
    TaskManager_Call(taskManager, sub_02056D30, env);
}

static BOOL sub_02056D30(TaskManager *man) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(man);
    UnkStruct_02056D00 *env = TaskManager_GetEnvironment(man);
    switch (env->state) {
    case 0:
        env->saveData = fieldSystem->saveData;
        env->unkC = env->unk2;
        env->unk4 = &fieldSystem->unkB4;
        CallApplicationAsTask(man, &_020FC790, &env->unk4);
        env->state++;
        break;
    case 1:
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}
