#include "unk_02078834.h"

#include "global.h"

#include "encounter.h"
#include "field_system.h"
#include "heap.h"
#include "launch_application.h"
#include "overlay_13_thumb_1.h"
#include "overlay_manager.h"
#include "poke_overlay.h"
#include "save_vars_flags.h"
#include "sys_flags.h"
#include "unk_020968B0.h"

FS_EXTERN_OVERLAY(OVY_44);
FS_EXTERN_OVERLAY(OVY_90);
FS_EXTERN_OVERLAY(OVY_91);
FS_EXTERN_OVERLAY(OVY_92);
FS_EXTERN_OVERLAY(OVY_93);

typedef struct {
    SaveData *saveData; // 0x00
    int unk4;           // 0x04
    int unk8;           // 0x08
} UnkSub0;              // 0x0C

typedef struct {
    UnkSub0 *unk0; // 0x00
    int state;     // 0x04
    u16 *unk8;     // 0x08
    u8 unkC;       // 0x0C
    u8 unkD;       // 0x0D
    void *unk10;   // 0x10
    int unk14;     // 0x14
} Work;            // 0x18

typedef struct {
    u8 unk0;        // 0x00
    u8 unk1;        // 0x01
    u8 unk2;        // 0x02
    u8 unk3;        // 0x03
    u8 unk4;        // 0x04
    SaveData *unk8; // 0x08
} UnkBattleArgs;    // 0x0C

typedef struct {
    u8 filler0[0x34];
    SaveData *unk34; // 0x34
    u8 unk38;        // 0x38
    u8 unk39;        // 0x39
} UnkAppArgs3C;      // 0x3C

typedef struct {
    u8 filler0[0x34];
    SaveData *unk34; // 0x34
    int unk38;       // 0x38
    int unk3c;       // 0x3C
} UnkAppArgs40;      // 0x40

// Layout of UnkStruct_ov44_0223197C / UnkStruct_ov44_02231958 as touched here.
// Declared locally to avoid pulling overlay_44_02232E9C.h (which declares the
// ov44_* template functions with non-OverlayFunction signatures).
typedef struct {
    u8 filler0[0x1B];
    u8 unk1B; // 0x1B
    u8 filler1C[8];
} TrainerEntry; // 0x24

typedef struct {
    TrainerEntry unk0;        // 0x00
    TrainerEntry unk24[0x20]; // 0x24
} TrainerInfo;

extern int ov91_0225C540(OverlayManager *manager, int *state);
extern int ov91_0225C58C(OverlayManager *manager, int *state);
extern int ov91_0225C9EC(OverlayManager *manager, int *state);
extern int ov92_0225CAB4(OverlayManager *manager, int *state);
extern int ov92_0225CDF4(OverlayManager *manager, int *state);
extern int ov92_0225D36C(OverlayManager *manager, int *state);
extern int ov93_0225C540(OverlayManager *manager, int *state);
extern int ov93_0225C574(OverlayManager *manager, int *state);
extern int ov93_0225C6C0(OverlayManager *manager, int *state);
extern int ov44_0222A4B4(OverlayManager *manager, int *state);
extern int ov44_0222A60C(OverlayManager *manager, int *state);
extern int ov44_0222A758(OverlayManager *manager, int *state);
extern int ov44_02232EA8(OverlayManager *manager, int *state);
extern int ov44_02232F64(OverlayManager *manager, int *state);
extern int ov44_022330A8(OverlayManager *manager, int *state);

extern BOOL sub_0203A05C(SaveData *saveData);
extern void sub_020378E4(int a0);
extern TrainerInfo *sub_020398C8(void);
extern void LoadOVY13(void);

static BOOL sub_02078834(TaskManager *taskman);
static Work *sub_02078B2C(void);
static void sub_02078B9C(Work *work, FieldSystem *fieldSystem, enum HeapID heapId, int a3);
static int sub_02078BD8(Work *work);
static UnkAppArgs3C *sub_02078C18(FieldSystem *fieldSystem, enum HeapID heapId, int a2);
static void sub_02078C60(void *a0);
static UnkAppArgs40 *sub_02078C74(FieldSystem *fieldSystem, enum HeapID heapId, int a2);
static void sub_02078CB4(void *a0);
static UnkAppArgs3C *sub_02078CC8(FieldSystem *fieldSystem, enum HeapID heapId, int a2);
static void sub_02078D10(void *a0);

BOOL sub_02078D24(s32 a0);

static const u8 sBattleModeData[] = { 0x03, 0x04, 0x04, 0x04 };

static const OverlayManagerTemplate sOverlayTemplates[] = {
    { ov91_0225C540, ov91_0225C58C, ov91_0225C9EC, FS_OVERLAY_ID(OVY_91) },
    { ov92_0225CAB4, ov92_0225CDF4, ov92_0225D36C, FS_OVERLAY_ID(OVY_92) },
    { ov44_02232EA8, ov44_02232F64, ov44_022330A8, FS_OVERLAY_ID(OVY_44) },
    { ov44_0222A4B4, ov44_0222A60C, ov44_0222A758, FS_OVERLAY_ID(OVY_44) },
    { ov93_0225C540, ov93_0225C574, ov93_0225C6C0, FS_OVERLAY_ID(OVY_93) },
};

static BOOL sub_02078834(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    Work *work = TaskManager_GetEnvironment(taskman);
    switch (work->state) {
    case 0:
        work->unk0->saveData = fieldSystem->saveData;
        // fallthrough
    case 1:
        work->state++;
        if (work->unk0->unk4 == 1 && sub_0203A05C(fieldSystem->saveData)) {
            work->state = 0xA;
            *work->unk8 = 0;
        }
        break;
    case 2:
        CallApplicationAsTask(taskman, &sOverlayTemplates[3], work->unk0);
        work->state++;
        break;
    case 3:
        if (sub_0203A05C(fieldSystem->saveData)) {
            SetFlag970(Save_VarsFlags_Get(fieldSystem->saveData));
        }
        switch (work->unk0->unk4) {
        case 0:
            break;
        case 3:
            work->unkC = 0;
            work->unkD = 0;
            work->state = 4;
            break;
        case 1:
            work->unkC = 0x32;
            work->unkD = 0;
            work->state = 4;
            break;
        case 2:
            work->unkC = 0x64;
            work->unkD = 0;
            work->state = 4;
            break;
        case 6:
            work->unkC = 0;
            work->unkD = 1;
            work->state = 4;
            break;
        case 4:
            work->unkC = 0x32;
            work->unkD = 1;
            work->state = 4;
            break;
        case 5:
            work->unkC = 0x64;
            work->unkD = 1;
            work->state = 4;
            break;
        case 7:
            work->state = 6;
            break;
        case 10:
            *work->unk8 = 1;
            work->state = 0xB;
            break;
        case 8:
            work->state = 9;
            break;
        case 12:
            work->state = 0xC;
            break;
        case 13:
            work->state = 0xE;
            break;
        case 14:
            work->state = 0x12;
            break;
        case 15:
            work->state = 0x16;
            break;
        case 9:
            work->state = 8;
            break;
        case 11:
            break;
        }
        break;
    case 4:
        CallTask_02050960(taskman, work->unk0->unk8, work->unkC, work->unkD);
        work->state++;
        break;
    case 5:
        work->state = 2;
        break;
    case 6:
        CallTask_WirelessTrade(taskman);
        work->state++;
        break;
    case 7:
        work->state = 2;
        break;
    case 8:
        Heap_Create(HEAP_ID_3, HEAP_ID_53, 0x40100);
        LoadOVY13();
        ov13_0221BA00(HEAP_ID_53);
        OS_ResetSystem(0);
        break;
    case 9:
    case 10:
    case 11:
        Heap_Free(work->unk0);
        Heap_Free(work);
        work->state++;
        return TRUE;
    case 12:
        sub_020378E4(0);
        work->unk10 = sub_020968B0(fieldSystem, NULL);
        work->state++;
        break;
    case 13:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            Heap_Free(work->unk10);
            work->state = 2;
        }
        break;
    case 14:
        sub_02078B9C(work, fieldSystem, HEAP_ID_FIELD2, 1);
        work->state++;
        break;
    case 15:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            work->state = sub_02078BD8(work);
        }
        break;
    case 16:
        work->unk10 = sub_02078C18(fieldSystem, HEAP_ID_FIELD2, work->unk14);
        work->state++;
        break;
    case 17:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            work->state = 2;
            sub_02078C60(work->unk10);
        }
        break;
    case 18:
        sub_02078B9C(work, fieldSystem, HEAP_ID_FIELD2, 2);
        work->state++;
        break;
    case 19:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            work->state = sub_02078BD8(work);
        }
        break;
    case 20:
        work->unk10 = sub_02078C74(fieldSystem, HEAP_ID_FIELD2, work->unk14);
        work->state++;
        break;
    case 21:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            work->state = 2;
            sub_02078CB4(work->unk10);
        }
        break;
    case 22:
        sub_02078B9C(work, fieldSystem, HEAP_ID_FIELD2, 3);
        work->state++;
        break;
    case 23:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            work->state = sub_02078BD8(work);
        }
        break;
    case 24:
        work->unk10 = sub_02078CC8(fieldSystem, HEAP_ID_FIELD2, work->unk14);
        work->state++;
        break;
    case 25:
        if (!FieldSystem_ApplicationIsRunning(fieldSystem)) {
            work->state = 2;
            sub_02078D10(work->unk10);
        }
        break;
    default:
        return TRUE;
    }
    return FALSE;
}

static Work *sub_02078B2C(void) {
    Work *work = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(Work));
    MI_CpuFill8(work, 0, sizeof(Work));
    work->unk0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkSub0));
    MI_CpuFill8(work->unk0, 0, sizeof(UnkSub0));
    return work;
}

void sub_02078B58(TaskManager *taskManager) {
    Work *work = sub_02078B2C();
    work->unk0->unk4 = 2;
    TaskManager_Call(taskManager, sub_02078834, work);
}

void sub_02078B78(TaskManager *taskManager, u16 *var_p) {
    Work *work = sub_02078B2C();
    work->unk0->unk4 = 1;
    work->unk8 = var_p;
    TaskManager_Call(taskManager, sub_02078834, work);
}

static void sub_02078B9C(Work *work, FieldSystem *fieldSystem, enum HeapID heapId, int a3) {
    UnkBattleArgs *args = Heap_Alloc(heapId, sizeof(UnkBattleArgs));
    args->unk0 = a3;
    args->unk1 = 2;
    args->unk2 = sBattleModeData[a3];
    args->unk3 = 0;
    args->unk4 = 0;
    args->unk8 = fieldSystem->saveData;
    work->unk10 = args;
    FieldSystem_LaunchApplication(fieldSystem, &sOverlayTemplates[2], args);
}

static int sub_02078BD8(Work *work) {
    UnkBattleArgs *args = work->unk10;
    if (args->unk3 == 1) {
        switch (args->unk0) {
        case 1:
            work->state = 0x10;
            break;
        case 2:
            work->state = 0x14;
            break;
        case 3:
        default:
            work->state = 0x18;
            break;
        }
    } else {
        work->state = 1;
    }
    work->unk14 = args->unk4;
    Heap_Free(work->unk10);
    return work->state;
}

static UnkAppArgs3C *sub_02078C18(FieldSystem *fieldSystem, enum HeapID heapId, int a2) {
    UnkAppArgs3C *args = Heap_Alloc(heapId, sizeof(UnkAppArgs3C));
    memset(args, 0, sizeof(UnkAppArgs3C));
    args->unk38 = a2;
    args->unk39 = 0;
    args->unk34 = fieldSystem->saveData;
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_90), OVY_LOAD_ASYNC);
    FieldSystem_LaunchApplication(fieldSystem, &sOverlayTemplates[0], args);
    return args;
}

static void sub_02078C60(void *a0) {
    Heap_Free(a0);
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_90));
}

static UnkAppArgs40 *sub_02078C74(FieldSystem *fieldSystem, enum HeapID heapId, int a2) {
    UnkAppArgs40 *args = Heap_Alloc(heapId, sizeof(UnkAppArgs40));
    memset(args, 0, sizeof(UnkAppArgs40));
    args->unk3c = a2;
    args->unk38 = 0;
    args->unk34 = fieldSystem->saveData;
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_90), OVY_LOAD_ASYNC);
    FieldSystem_LaunchApplication(fieldSystem, &sOverlayTemplates[1], args);
    return args;
}

static void sub_02078CB4(void *a0) {
    Heap_Free(a0);
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_90));
}

static UnkAppArgs3C *sub_02078CC8(FieldSystem *fieldSystem, enum HeapID heapId, int a2) {
    UnkAppArgs3C *args = Heap_Alloc(heapId, sizeof(UnkAppArgs3C));
    MI_CpuFill8(args, 0, sizeof(UnkAppArgs3C));
    args->unk38 = a2;
    args->unk39 = 0;
    args->unk34 = fieldSystem->saveData;
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_90), OVY_LOAD_ASYNC);
    FieldSystem_LaunchApplication(fieldSystem, &sOverlayTemplates[4], args);
    return args;
}

static void sub_02078D10(void *a0) {
    Heap_Free(a0);
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_90));
}

BOOL sub_02078D24(s32 a0) {
    TrainerInfo *info = sub_020398C8();
    u8 a = info->unk0.unk1B;
    u8 b = info->unk24[a0].unk1B;
    if (a == 0xC && b == 5) {
        return TRUE;
    }
    if (a == 0xD && b == 6) {
        return TRUE;
    }
    if (a == 0xE && b == 7) {
        return TRUE;
    }
    if (a == 9 && b == 2) {
        return TRUE;
    }
    if (a == 0xA && b == 3) {
        return TRUE;
    }
    if (a == 0xB && b == 4) {
        return TRUE;
    }
    if (a == 0xF && b == 8) {
        return TRUE;
    }
    if (a == 0x13 && b == 0x12) {
        return TRUE;
    }
    if (a == 0x15 && b == 0x14) {
        return TRUE;
    }
    if (a == 0x17 && b == 0x16) {
        return TRUE;
    }
    if (a == 0x19 && b == 0x18) {
        return TRUE;
    }
    if (a == 0x1B && b == 0x1A) {
        return TRUE;
    }
    if (a == 0x10 && b == 1) {
        return TRUE;
    }
    return FALSE;
}
