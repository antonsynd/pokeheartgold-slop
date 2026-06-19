#include "unk_02068FC8.h"

#include "global.h"

#include "field_system.h"
#include "game_stats.h"
#include "gf_rtc.h"
#include "heap.h"
#include "igt.h"
#include "launch_application.h"
#include "player_data.h"
#include "pokedex.h"
#include "save_trainer_card.h"
#include "save_vars_flags.h"
#include "string_util.h"
#include "sys_flags.h"
#include "task.h"
#include "unk_02030A98.h"
#include "unk_02055418.h"

typedef struct TrainerCardRecord {
    /* 0x000 */ u8 version;
    /* 0x001 */ u8 language;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 achievements;
    /* 0x004 */ union {
        u8 raw;
        struct {
            u8 flag0 : 1;
            u8 flag1 : 1;
            u8 flag2 : 1;
            u8 flag3 : 1;
            u8 flag4 : 1;
        } bits;
    } unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u16 badges;
    /* 0x008 */ u16 name[8];
    /* 0x018 */ u32 unk18;
    /* 0x01c */ u32 money;
    /* 0x020 */ u32 dexOwned;
    /* 0x024 */ u32 score;
    /* 0x028 */ u16 tid;
    /* 0x02a */ u16 igtHours;
    /* 0x02c */ u16 clearHour;
    /* 0x02e */ u8 igtMinutes;
    /* 0x02f */ u8 curYear;
    /* 0x030 */ u8 curMonth;
    /* 0x031 */ u8 curDay;
    /* 0x032 */ u8 clearYear;
    /* 0x033 */ u8 clearMonth;
    /* 0x034 */ u8 clearDay;
    /* 0x035 */ u8 clearMinute;
    /* 0x036 */ u8 pad36[2];
    /* 0x038 */ u32 unk38;
    /* 0x03c */ u32 unk3c;
    /* 0x040 */ u32 unk40;
    /* 0x044 */ u32 unk44;
    /* 0x048 */ struct {
        u32 unk0 : 1;
        u32 unk1 : 31;
    } unk48[8];
    /* 0x068 */ u8 signature[0x600];
    /* 0x668 */ u16 checksum;
    /* 0x66a */ u16 unk66a;
} TrainerCardRecord;

typedef struct TrainerCardTaskEnv {
    /* 0x000 */ int state;
    /* 0x004 */ void *handle;
    /* 0x008 */ TrainerCardAppArgs args;
} TrainerCardTaskEnv;

void *sub_020691A8(enum HeapID heapID);

extern void *sub_0205ABD8(struct UnkStruct_02059E1C *fieldSystem_unk80);
extern void sub_0205AC4C(struct UnkStruct_02059E1C *fieldSystem_unk80);
extern void sub_0205AC70(struct UnkStruct_02059E1C *fieldSystem_unk80);

static void sub_020692A0(int a0, int version, int achievements, int a2, u8 language, TrainerCardRecord *rec);
static void sub_020692C4(u16 tid, u8 gender, const u16 *name, u32 money, u32 dexOwned, int dexEnabled, u32 score, TrainerCardRecord *rec);
static void sub_02069308(u8 gameCleared, IGT *igt, RTCDate *curDate, RTCDate *clearDate, RTCTime *time, u8 a1, TrainerCardRecord *rec);
static void sub_020693AC(u32 a0, u32 a1, u32 a2, u32 a3, u8 signatureExists, int *signature, TrainerCardRecord *rec);
static void sub_0206940C(PlayerProfile *profile, FieldSystem *fieldSystem, TrainerCardRecord *rec);
static BOOL sub_02069498(TaskManager *taskManager);

#ifdef NONMATCHING
// MWCC places `sum` (the GameStats reduction) in the lowest spill slot (0x20)
// instead of in computation order (0x5c), shifting every prior spill by 4, and
// passes the `u8` stack param `a1` to sub_02069308 with a call-site narrow the
// retail build omits (a split-param the callee reads via ldrb). Both are
// register-allocator decisions that can't be steered from C in a single TU, so
// this function is kept as asm; the C below documents the logic.
void sub_02068FC8(int a0, int a1, int a2, int a3, FieldSystem *fieldSystem, TrainerCardAppArgs *trainerCard) {
    SaveData *saveData;
    PlayerProfile *profile;
    GameStats *gameStats;
    int achievements;
    u16 tid;
    u32 gender;
    const u16 *name;
    u32 money;
    int dexOwned;
    BOOL dexEnabled;
    IGT *igt;
    struct SaveTrainerCard *saveTrainerCard;
    u32 cap21;
    u32 cap1a;
    u32 cap15;
    u32 cap19;
    u32 cap5c;
    u32 cap16;
    u32 cap1b;
    u32 cap17;
    u32 cap1c;
    u32 cap14;
    u32 cap19b;
    u32 sum;
    BOOL signatureExists;
    int *signature;
    RTCDate curDate;
    RTCDate clearDate;
    RTCTime time;
    TrainerCardRecord *rec = (TrainerCardRecord *)trainerCard;
    const u8 *bytes;
    u32 i;
    int checksum;

    saveData = FieldSystem_GetSaveData(fieldSystem);
    profile = Save_PlayerData_GetProfile(saveData);
    gameStats = Save_GameStats_Get(saveData);
    memset(rec, 0, sizeof(TrainerCardRecord));
    rec->unk5 = a3;
    achievements = sub_020691E8(fieldSystem);
    sub_020692A0(a0, GAME_VERSION, achievements, a2, PlayerProfile_GetLanguage(profile), rec);
    tid = PlayerProfile_GetTrainerID_VisibleHalf(profile);
    gender = PlayerProfile_GetTrainerGender(profile);
    name = PlayerProfile_GetNamePtr(profile);
    money = PlayerProfile_GetMoney(profile);
    dexOwned = Pokedex_CountDexOwned(Save_Pokedex_Get(fieldSystem->saveData));
    dexEnabled = Pokedex_IsEnabled(Save_Pokedex_Get(fieldSystem->saveData));
    sub_020692C4(tid, gender, name, money, dexOwned, dexEnabled, GameStats_GetScore(gameStats), rec);
    igt = Save_PlayerData_GetIGTAddr(saveData);
    sub_02055624(fieldSystem, &curDate, &time);
    FieldSystem_GetGameClearTime(fieldSystem, &clearDate, &time);
    sub_02069308(CheckGameClearFlag(Save_VarsFlags_Get(fieldSystem->saveData)), igt, &curDate, &clearDate, &time, a1, rec);
    saveTrainerCard = Save_TrainerCard_Get(fieldSystem->saveData);
    cap21 = GameStats_GetCapped(gameStats, 0x21);
    cap1a = GameStats_GetCapped(gameStats, 0x1a);
    cap15 = GameStats_GetCapped(gameStats, 0x15);
    cap19 = GameStats_GetCapped(gameStats, 0x19);
    cap5c = GameStats_GetCapped(gameStats, 0x5c);
    sum = cap1a + (cap15 + (cap19 + (cap5c + GameStats_GetCapped(gameStats, 0x14))));
    cap16 = GameStats_GetCapped(gameStats, 0x16);
    cap1b = GameStats_GetCapped(gameStats, 0x1b);
    cap17 = GameStats_GetCapped(gameStats, 0x17);
    cap1c = GameStats_GetCapped(gameStats, 0x1c);
    cap14 = GameStats_GetCapped(gameStats, 0x14);
    cap19b = GameStats_GetCapped(gameStats, 0x19);
    signatureExists = TrainerCard_SignatureExists(saveTrainerCard);
    signature = TrainerCard_GetSignature(saveTrainerCard);
    sub_020693AC(cap21 + sum, cap16 + cap1b, cap17 + cap1c, cap14 + cap19b, signatureExists, signature, rec);
    sub_0206940C(profile, fieldSystem, rec);
    bytes = (const u8 *)rec;
    checksum = 0;
    for (i = 0; i < sizeof(TrainerCardRecord); i++) {
        checksum ^= bytes[i];
    }
    rec->checksum = checksum;
    rec->unk66a = 0;
}
#else
// clang-format off
asm void sub_02068FC8(int a0, int a1, int a2, int a3, FieldSystem *fieldSystem, TrainerCardAppArgs *trainerCard) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	str r0, [sp, #0x10]
	ldr r6, [sp, #0xb8]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	add r0, r6, #0
	str r3, [sp, #0x1c]
	ldr r5, [sp, #0xbc]
	bl FieldSystem_GetSaveData
	str r0, [sp, #0x20]
	bl Save_PlayerData_GetProfile
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl Save_GameStats_Get
	add r4, r0, #0
	ldr r2, =0x0000066C
	add r0, r5, #0
	mov r1, #0
	bl memset
	ldr r0, [sp, #0x1c]
	strb r0, [r5, #5]
	add r0, r6, #0
	bl sub_020691E8
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl PlayerProfile_GetLanguage
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x18]
	mov r1, #GAME_VERSION
	bl sub_020692A0
	add r0, r7, #0
	bl PlayerProfile_GetTrainerID_VisibleHalf
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl PlayerProfile_GetTrainerGender
	str r0, [sp, #0x2c]
	add r0, r7, #0
	bl PlayerProfile_GetNamePtr
	str r0, [sp, #0x30]
	add r0, r7, #0
	bl PlayerProfile_GetMoney
	str r0, [sp, #0x34]
	ldr r0, [r6, #0xc]
	bl Save_Pokedex_Get
	bl Pokedex_CountDexOwned
	str r0, [sp, #0x38]
	ldr r0, [r6, #0xc]
	bl Save_Pokedex_Get
	bl Pokedex_IsEnabled
	str r0, [sp, #0x3c]
	add r0, r4, #0
	bl GameStats_GetScore
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r5, [sp, #0xc]
	bl sub_020692C4
	ldr r0, [sp, #0x20]
	bl Save_PlayerData_GetIGTAddr
	str r0, [sp, #0x40]
	add r0, r6, #0
	add r1, sp, #0x94
	add r2, sp, #0x78
	bl sub_02055624
	add r0, r6, #0
	add r1, sp, #0x84
	add r2, sp, #0x78
	bl FieldSystem_GetGameClearTime
	ldr r0, [r6, #0xc]
	bl Save_VarsFlags_Get
	bl CheckGameClearFlag
	add r1, sp, #0x78
	str r1, [sp]
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	ldr r1, [sp, #0x40]
	str r5, [sp, #8]
	lsr r0, r0, #0x18
	add r2, sp, #0x94
	add r3, sp, #0x84
	bl sub_02069308
	ldr r0, [r6, #0xc]
	bl Save_TrainerCard_Get
	str r0, [sp, #0x44]
	add r0, r4, #0
	mov r1, #0x21
	bl GameStats_GetCapped
	str r0, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0x1a
	bl GameStats_GetCapped
	str r0, [sp, #0x4c]
	add r0, r4, #0
	mov r1, #0x15
	bl GameStats_GetCapped
	str r0, [sp, #0x50]
	add r0, r4, #0
	mov r1, #0x19
	bl GameStats_GetCapped
	str r0, [sp, #0x54]
	add r0, r4, #0
	mov r1, #0x5c
	bl GameStats_GetCapped
	str r0, [sp, #0x58]
	add r0, r4, #0
	mov r1, #0x14
	bl GameStats_GetCapped
	ldr r1, [sp, #0x58]
	add r1, r1, r0
	ldr r0, [sp, #0x54]
	add r1, r0, r1
	ldr r0, [sp, #0x50]
	add r1, r0, r1
	ldr r0, [sp, #0x4c]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	add r0, r4, #0
	mov r1, #0x16
	bl GameStats_GetCapped
	str r0, [sp, #0x60]
	add r0, r4, #0
	mov r1, #0x1b
	bl GameStats_GetCapped
	str r0, [sp, #0x64]
	add r0, r4, #0
	mov r1, #0x17
	bl GameStats_GetCapped
	str r0, [sp, #0x68]
	add r0, r4, #0
	mov r1, #0x1c
	bl GameStats_GetCapped
	str r0, [sp, #0x6c]
	add r0, r4, #0
	mov r1, #0x14
	bl GameStats_GetCapped
	str r0, [sp, #0x70]
	add r0, r4, #0
	mov r1, #0x19
	bl GameStats_GetCapped
	add r4, r0, #0
	ldr r0, [sp, #0x44]
	bl TrainerCard_SignatureExists
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x44]
	bl TrainerCard_GetSignature
	ldr r1, [sp, #0x74]
	ldr r2, [sp, #0x60]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x5c]
	ldr r3, [sp, #0x68]
	add r0, r1, r0
	ldr r1, [sp, #0x64]
	str r5, [sp, #8]
	add r1, r2, r1
	ldr r2, [sp, #0x6c]
	add r2, r3, r2
	ldr r3, [sp, #0x70]
	add r3, r3, r4
	bl sub_020693AC
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0206940C
	mov r3, #0
	ldr r0, =0x0000066C
	add r2, r3, #0
_02069186:
	ldrb r1, [r5, r2]
	add r2, r2, #1
	eor r3, r1
	cmp r2, r0
	blo _02069186
	ldr r0, =0x00000668
	mov r1, #0
	strh r3, [r5, r0]
	add r0, r0, #2
	strh r1, [r5, r0]
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	nop
}
// clang-format on
#endif

void *sub_020691A8(enum HeapID heapID) {
    void *ptr = Heap_Alloc(heapID, sizeof(TrainerCardRecord));
    memset(ptr, 0, sizeof(TrainerCardRecord));
    return ptr;
}

TrainerCardAppArgs *sub_020691C4(enum HeapID heapID) {
    TrainerCardAppArgs *ptr = Heap_Alloc(heapID, sizeof(TrainerCardAppArgs));
    memset(ptr, 0, sizeof(TrainerCardAppArgs));
    return ptr;
}

void sub_020691E0(TrainerCardAppArgs *trainerCard) {
    Heap_Free(trainerCard);
}

int sub_020691E8(FieldSystem *fieldSystem) {
    SaveData *saveData;
    SaveVarsFlags *varsFlags;
    u8 count;
    FrontierSave *frontierSave;

    saveData = FieldSystem_GetSaveData(fieldSystem);
    Save_GameStats_Get(saveData);
    varsFlags = Save_VarsFlags_Get(saveData);
    frontierSave = Save_Frontier_GetStatic(saveData);
    count = 0;
    if (CheckGameClearFlag(varsFlags)) {
        count++;
    }
    if (Pokedex_NationalDexIsComplete(Save_Pokedex_Get(saveData))) {
        count++;
    }
    if (FrontierSave_GetStat(frontierSave, 0, 0xff) >= 100 || FrontierSave_GetStat(frontierSave, 2, 0xff) >= 100 || FrontierSave_GetStat(frontierSave, 4, 0xff) >= 100 || FrontierSave_GetStat(frontierSave, 6, 0xff) >= 100 || FrontierSave_GetStat(frontierSave, 8, 0xff) >= 100) {
        count++;
    }
    if (Save_VarsFlags_CheckFlagInArray(varsFlags, 0xf1)) {
        count++;
    }
    if (Save_VarsFlags_CheckFlagInArray(varsFlags, 0x61 << 2)) {
        count++;
    }
    return count;
}

static void sub_020692A0(int a0, int version, int achievements, int a2, u8 language, TrainerCardRecord *rec) {
    rec->unk4.raw = (rec->unk4.raw & ~1) | (a0 & 1);
    rec->version = version;
    rec->achievements = achievements;
    rec->language = language;
    rec->unk2 = a2;
}

static void sub_020692C4(u16 tid, u8 gender, const u16 *name, u32 money, u32 dexOwned, int dexEnabled, u32 score, TrainerCardRecord *rec) {
    rec->tid = tid;
    rec->unk4.bits.flag2 = gender;
    CopyU16StringArrayN(rec->name, name, 8);
    rec->money = money;
    rec->dexOwned = dexOwned;
    rec->unk4.bits.flag3 = dexEnabled;
    rec->score = score;
}

static void sub_02069308(u8 gameCleared, IGT *igt, RTCDate *curDate, RTCDate *clearDate, RTCTime *time, u8 a1, TrainerCardRecord *rec) {
    int minute;

    rec->igtHours = GetIGTHours(igt);
    rec->igtMinutes = GetIGTMinutes(igt);
    rec->curYear = curDate->year;
    rec->curMonth = curDate->month;
    rec->curDay = curDate->day;
    if (gameCleared) {
        rec->clearYear = clearDate->year;
        rec->clearMonth = clearDate->month;
        rec->clearDay = clearDate->day;
        rec->clearHour = time->hour;
        minute = time->minute;
    } else {
        rec->clearYear = 0;
        rec->clearMonth = 0;
        rec->clearDay = 0;
        rec->clearHour = 0;
        minute = 0;
    }
    rec->clearMinute = minute;
    rec->unk4.bits.flag1 = a1;
    if (a1) {
        rec->unk18 = (u32)igt;
    } else {
        rec->unk18 = 0;
    }
}

static void sub_020693AC(u32 a0, u32 a1, u32 a2, u32 a3, u8 signatureExists, int *signature, TrainerCardRecord *rec) {
    rec->unk38 = a0;
    if (a0 > 999999) {
        rec->unk38 = 999999;
    }
    rec->unk3c = a1;
    rec->unk40 = a2;
    if (rec->unk3c > 9999) {
        rec->unk3c = 9999;
    }
    if (rec->unk40 > 9999) {
        rec->unk40 = 9999;
    }
    rec->unk44 = a3;
    if (a3 > 99999) {
        rec->unk44 = 99999;
    }
    rec->unk4.bits.flag4 = signatureExists;
    MI_CpuCopy8(signature, rec->signature, 0x600);
}

static void sub_0206940C(PlayerProfile *profile, FieldSystem *fieldSystem, TrainerCardRecord *rec) {
    u8 i;
    u16 mask;
    u8 j;

    TrainerCard_GetBadgeShininessArr(Save_TrainerCard_Get(fieldSystem->saveData));
    for (i = 0; i < 8; i++) {
        rec->unk48[i].unk0 = 0;
        rec->unk48[i].unk1 = 0;
    }
    mask = 1;
    for (j = 0; j < 16; j++) {
        if (PlayerProfile_TestBadgeFlag(profile, j)) {
            rec->badges |= mask;
        }
        mask <<= 1;
    }
}

void sub_02069464(FieldSystem *fieldSystem) {
    TrainerCardTaskEnv *env = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(TrainerCardTaskEnv));
    env->state = 0;
    env->handle = sub_0205ABD8(fieldSystem->unk80);
    TaskManager_Call(fieldSystem->taskman, sub_02069498, env);
}

static BOOL sub_02069498(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    TrainerCardTaskEnv *env = TaskManager_GetEnvironment(taskManager);

    switch (env->state) {
    case 0:
        sub_0205AC70(fieldSystem->unk80);
        env->state = 1;
        // fallthrough
    case 1:
        if (((TrainerCardRecord *)env->handle)->unk66a != 0) {
            env->state = 0xa;
        }
        break;
    case 0xa:
        MI_CpuCopy8(env->handle, &env->args, sizeof(TrainerCardRecord));
        TrainerCard_LaunchApp(fieldSystem, &env->args);
        env->state = 0xb;
        break;
    case 0xb:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            sub_0205AC4C(fieldSystem->unk80);
            Heap_Free(env);
            return TRUE;
        }
        break;
    }
    return FALSE;
}
