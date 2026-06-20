#include "unk_02067A60.h"

// External symbols declared locally with the types they were matched against
// (opaque structs as void *), keeping this TU self-contained / IPA-safe.
void *Save_VarsFlags_Get(void *saveData);
void StrengthFlagAction(void *varsFlags, int a1);
void ClearFlag972(void *varsFlags);
void SysFlagFlashClear(void *varsFlags);
void SysFlagDefogClear(void *varsFlags);
BOOL Save_VarsFlags_CheckSafariSysFlag(void *varsFlags);
void Save_VarsFlags_ClearSafariSysFlag(void *varsFlags);
void Save_VarsFlags_ClearHaveFollowerFlag(void *varsFlags);
void Save_VarsFlags_SetFollowerTrainerNum(void *varsFlags, int a1);
void FlypointFlagAction(FieldSystem *fieldSystem, u32 mapId);
void *Save_Roamers_Get(void *saveData);
void RoamerSave_SetFlute(void *roamers, int a1);
void Save_RandomizeRoamersLocation(void *roamers);
void Save_UpdateRoamersLocation(void *roamers);
void UpdatePlayerLocationHistoryIfAnyRoamersActive(void *roamers, u32 mapId);
BOOL MapHeader_IsCave(u32 mapId);
BOOL MapHeader_IsBikeAllowed(u32 mapId);
void *Save_LocalFieldData_Get(void *saveData);
void *LocalFieldData_GetPlayer(void *localFieldData);
void *LocalFieldData_GetSpecialSpawnWarpPtr(void *localFieldData);
void GetFlyWarpData(u16 mapId, void *out);
void GetSpecialSpawnWarpData(u16 mapId, void *out);
int sub_0203BB50(u16 a0);
void sub_02053908(TaskManager *taskManager, u32 mapId, int warpId, int x, int y, int direction);

void *Heap_Alloc(enum HeapID heapID, u32 size);
void *Heap_AllocAtEnd(enum HeapID heapID, u32 size);
void Heap_Free(void *ptr);
void GF_AssertFail(void);

FieldSystem *TaskManager_GetFieldSystem(TaskManager *taskManager);
void *TaskManager_GetEnvironment(TaskManager *taskManager);
void TaskManager_Call(TaskManager *taskManager, BOOL (*taskFunc)(TaskManager *, int *), void *env);
BOOL ov01_02205A60(TaskManager *taskManager, int *state);
void ov01_02205D68(FieldSystem *fieldSystem);

void *PlayerAvatar_GetMapObject(void *avatar);
s32 PlayerAvatar_GetState(void *avatar);
int PlayerAvatar_GetGender(void *avatar);

void *SaveArray_Party_Get(void *saveData);
u8 GetIdxOfFirstAliveMonInParty_CrashIfNone(void *party);
u32 GetMonData(Pokemon *mon, int attr, void *ptr);
void PlayCry(u16 species, u8 form);
BOOL IsCryFinished(void);

BOOL FollowMon_IsVisible(FieldSystem *fieldSystem);
BOOL ov02_02250780(FieldSystem *fieldSystem, int a1);
void FieldSystem_UnkSub108_AddMonMood(void *a0, int a1);
void ov02_022507B4(FieldSystem *fieldSystem, int a1);
void *ov02_02249458(FieldSystem *fieldSystem, int a1, Pokemon *pokemon, int gender);
BOOL ov02_0224953C(void *a0);
void ov02_02249548(void *a0);

void *EventObjectMovementMan_Create(void *object, const void *data);
BOOL EventObjectMovementMan_IsFinish(void *man);
void EventObjectMovementMan_Delete(void *man);

#define FS_SAVE(fs) (*(void **)((u8 *)(fs) + 0x0C))
#define FS_LOC(fs)  (*(u32 **)((u8 *)(fs) + 0x20))

struct UnkStruct_02067BF8 {
    FieldSystem *fieldSystem; // 0x00
    u16 state;                // 0x04
    u16 unk06;                // 0x06
    u16 unk08;                // 0x08
    s16 unk0a;                // 0x0a
    s16 unk0c;                // 0x0c
    u16 unk0e;                // 0x0e
    Pokemon *pokemon;         // 0x10
    void *unk14;              // 0x14
    void *unk18;              // 0x18
};

extern const u16 _020FE7AC[];

void sub_02067A80(FieldSystem *fieldSystem, void *a1);
void sub_02067A88(FieldSystem *fieldSystem);
void sub_02067AE4(FieldSystem *fieldSystem);
void sub_02067B88(FieldSystem *fieldSystem);
void sub_02067BA4(FieldSystem *fieldSystem);
void sub_02067BC0(FieldSystem *fieldSystem);
void FieldSystem_ClearFollowingTrainer(FieldSystem *fieldSystem);
void sub_02067BE8(FieldSystem *fieldSystem);

struct UnkStruct_02067A60 *sub_02067A60(enum HeapID heapID) {
    void *p = Heap_Alloc(heapID, 0x24);
    MI_CpuClearFast(p, 0x24);
    return p;
}

void sub_02067A78(struct UnkStruct_02067A60 *a0) {
    Heap_Free(a0);
}

void sub_02067A80(FieldSystem *fieldSystem, void *a1) {
    *(void **)((u8 *)fieldSystem + 0xac) = a1;
}

void sub_02067A88(FieldSystem *fieldSystem) {
    StrengthFlagAction(Save_VarsFlags_Get(FS_SAVE(fieldSystem)), 0);
    FlypointFlagAction(fieldSystem, *FS_LOC(fieldSystem));
    RoamerSave_SetFlute(Save_Roamers_Get(FS_SAVE(fieldSystem)), 0);
    *(u16 *)((u8 *)fieldSystem + 0x7e) = 0;
    *(u16 *)((u8 *)fieldSystem + 0x7c) = 0;
    if (Save_VarsFlags_CheckSafariSysFlag(Save_VarsFlags_Get(FS_SAVE(fieldSystem))) == 0) {
        void *roamers = Save_Roamers_Get(FS_SAVE(fieldSystem));
        UpdatePlayerLocationHistoryIfAnyRoamersActive(roamers, *FS_LOC(fieldSystem));
        Save_UpdateRoamersLocation(roamers);
    }
}

void sub_02067AE4(FieldSystem *fieldSystem) {
    void *player;
    if (*(int *)((u8 *)fieldSystem + 0xac) == 1) {
        return;
    }
    ClearFlag972(Save_VarsFlags_Get(FS_SAVE(fieldSystem)));
    StrengthFlagAction(Save_VarsFlags_Get(FS_SAVE(fieldSystem)), 0);
    FlypointFlagAction(fieldSystem, *FS_LOC(fieldSystem));
    RoamerSave_SetFlute(Save_Roamers_Get(FS_SAVE(fieldSystem)), 0);
    *(u16 *)((u8 *)fieldSystem + 0x7e) = 0;
    *(u16 *)((u8 *)fieldSystem + 0x7c) = 0;
    UpdatePlayerLocationHistoryIfAnyRoamersActive(Save_Roamers_Get(FS_SAVE(fieldSystem)), *FS_LOC(fieldSystem));
    if (MapHeader_IsCave(*FS_LOC(fieldSystem)) == 0) {
        void *varsFlags = Save_VarsFlags_Get(FS_SAVE(fieldSystem));
        SysFlagFlashClear(varsFlags);
        SysFlagDefogClear(varsFlags);
    }
    player = LocalFieldData_GetPlayer(Save_LocalFieldData_Get(FS_SAVE(fieldSystem)));
    if (*(int *)((u8 *)player + 4) == 1) {
        if (MapHeader_IsBikeAllowed(*FS_LOC(fieldSystem)) == 0) {
            *(int *)((u8 *)player + 4) = 0;
            return;
        }
    }
    if (*(int *)((u8 *)player + 4) == 2) {
        *(int *)((u8 *)player + 4) = 0;
    }
}

void sub_02067B88(FieldSystem *fieldSystem) {
    Save_VarsFlags_ClearSafariSysFlag(Save_VarsFlags_Get(FS_SAVE(fieldSystem)));
    Save_RandomizeRoamersLocation(Save_Roamers_Get(FS_SAVE(fieldSystem)));
}

void sub_02067BA4(FieldSystem *fieldSystem) {
    Save_VarsFlags_ClearSafariSysFlag(Save_VarsFlags_Get(FS_SAVE(fieldSystem)));
    Save_RandomizeRoamersLocation(Save_Roamers_Get(FS_SAVE(fieldSystem)));
}

void sub_02067BC0(FieldSystem *fieldSystem) {
    Save_VarsFlags_ClearSafariSysFlag(Save_VarsFlags_Get(FS_SAVE(fieldSystem)));
}

void FieldSystem_ClearFollowingTrainer(FieldSystem *fieldSystem) {
    void *varsFlags = Save_VarsFlags_Get(FS_SAVE(fieldSystem));
    Save_VarsFlags_ClearHaveFollowerFlag(varsFlags);
    Save_VarsFlags_SetFollowerTrainerNum(varsFlags, 0);
}

void sub_02067BE8(FieldSystem *fieldSystem) {
    Save_RandomizeRoamersLocation(Save_Roamers_Get(FS_SAVE(fieldSystem)));
}

struct UnkStruct_02067BF8 *sub_02067BF8(enum HeapID heapID, FieldSystem *fieldSystem, Pokemon *pokemon, u16 r3, u16 a4, s16 a5, s16 a6) {
    struct UnkStruct_02067BF8 *env = Heap_AllocAtEnd(heapID, sizeof(struct UnkStruct_02067BF8));
    u8 *p = (u8 *)env;
    u32 n = sizeof(struct UnkStruct_02067BF8);
    do {
        *p++ = 0;
    } while (--n);
    env->fieldSystem = fieldSystem;
    env->pokemon = pokemon;
    env->unk08 = a4;
    env->unk0a = a5;
    env->unk0c = a6;
    env->unk0e = r3;
    return env;
}

BOOL sub_02067C30(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    struct UnkStruct_02067BF8 *env = TaskManager_GetEnvironment(taskManager);
    switch (env->state) {
    case 0:
        TaskManager_Call(taskManager, ov01_02205A60, NULL);
        env->state++;
        break;
    case 1:
        if ((u32)(PlayerAvatar_GetState(*(void **)((u8 *)fieldSystem + 0x40)) - 1) <= 1) {
            env->state = 4;
            env->unk06 = 0;
        } else if (env->unk0e != GetIdxOfFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(FS_SAVE(fieldSystem)))) {
            ov01_02205D68(env->fieldSystem);
            env->state = 4;
            env->unk06 = 0;
        } else if (FollowMon_IsVisible(fieldSystem)) {
            int mood;
            if (ov02_02250780(fieldSystem, 2)) {
                mood = 2;
                FieldSystem_UnkSub108_AddMonMood(*(void **)((u8 *)fieldSystem + 0x108), 1);
            } else {
                mood = 1;
            }
            ov02_022507B4(fieldSystem, mood);
            env->unk06 = 1;
            env->state = 2;
        } else {
            env->state = 4;
            env->unk06 = 0;
        }
        break;
    case 2:
        PlayCry((u16)GetMonData(env->pokemon, 5, NULL), (u8)GetMonData(env->pokemon, 0x70, NULL));
        env->state++;
        break;
    case 3:
        if (IsCryFinished() == 0) {
            env->state++;
        }
        break;
    case 4:
        env->unk18 = EventObjectMovementMan_Create(PlayerAvatar_GetMapObject(*(void **)((u8 *)fieldSystem + 0x40)), _020FE7AC);
        env->state++;
        break;
    case 5:
        if (EventObjectMovementMan_IsFinish(env->unk18)) {
            EventObjectMovementMan_Delete(env->unk18);
            if (env->unk06 == 0) {
                env->unk14 = ov02_02249458(env->fieldSystem, 1, env->pokemon, PlayerAvatar_GetGender(*(void **)((u8 *)env->fieldSystem + 0x40)));
            } else {
                env->unk14 = ov02_02249458(env->fieldSystem, 2, env->pokemon, PlayerAvatar_GetGender(*(void **)((u8 *)env->fieldSystem + 0x40)));
            }
            env->state++;
        }
        break;
    case 6:
        if (ov02_0224953C(env->unk14)) {
            u8 warp[0x14];
            void *localFieldData;
            u16 mapId;
            ov02_02249548(env->unk14);
            localFieldData = Save_LocalFieldData_Get(FS_SAVE(fieldSystem));
            mapId = sub_0203BB50(env->unk08);
            GF_ASSERT(mapId);
            GetFlyWarpData(mapId, warp);
            GetSpecialSpawnWarpData(mapId, LocalFieldData_GetSpecialSpawnWarpPtr(localFieldData));
            sub_02053908(taskManager, *(u32 *)(warp + 0), -1, *(u32 *)(warp + 8), *(u32 *)(warp + 0xc), 1);
            Heap_Free(env);
        }
        break;
    }
    return FALSE;
}

const u16 _020FE7AC[] = { 73, 1, 33, 1, 74, 1, 254, 0 };
