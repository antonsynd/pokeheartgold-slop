#include <nitro/mi/memory.h>

#include "global.h"

#include "constants/maps.h"

#include "assert.h"
#include "bag.h"
#include "field_system.h"
#include "friend_group.h"
#include "frontier_data.h"
#include "heap.h"
#include "launch_application.h"
#include "overlay_72.h"
#include "party.h"
#include "party_menu.h"
#include "player_data.h"
#include "pokedex_util.h"
#include "save_special_ribbons.h"
#include "save_trainer_card.h"
#include "scrcmd_9.h"
#include "script_manager.h"
#include "task.h"
#include "unk_0202D230.h"
#include "unk_02030A98.h"
#include "unk_02035900.h"
#include "unk_020379A0.h"
#include "unk_02037C94.h"
#include "unk_0204B538.h"
#include "unk_02088288.h"

extern void sub_0202D638(FrontierData *a0, u32 a1);
extern u32 sub_0202D63C(FrontierData *a0);

typedef struct PartyMenuTaskWork {
    int unk0;            // 0x00
    u32 state;           // 0x04
    u8 context;          // 0x08
    u8 unk9;             // 0x09
    u8 minMons;          // 0x0a
    u8 maxMons;          // 0x0b
    u8 maxLevel;         // 0x0c
    u8 partySlot;        // 0x0d
    u8 selectedOrder[6]; // 0x0e
    void **unk14;        // 0x14
} PartyMenuTaskWork;     // 0x18

typedef struct WifiConnectTaskWork {
    int unk0;                      // 0x00
    u32 state;                     // 0x04
    NintendoWifiConnectArgs *unk8; // 0x08
    u8 fillerC[0x4];               // 0x0c
    u16 varId;                     // 0x10
    u16 unk12;                     // 0x12
    u16 unk14;                     // 0x14
    u8 filler16[0x2];              // 0x16
} WifiConnectTaskWork;             // 0x18

typedef struct LinkAllyVarTaskWork {
    u16 selector;      // 0x00
    u16 varId;         // 0x02
} LinkAllyVarTaskWork; // 0x04

void sub_02067118(TaskManager *taskManager, void **a1, u8 a2, u8 a3, u8 a4, u8 a5, u8 a6, u8 a7);
void sub_02067200(TaskManager *taskManager, u32 a1, u32 a2, u16 a3);
void sub_020672A4(TaskManager *taskManager, u32 a1, u32 a2);
u32 sub_020672D8(SaveData *saveData);
u32 sub_02067398(SaveData *saveData);
void sub_02067484(FieldSystem *fieldSystem, int *a1);
u32 sub_020674A4(u32 a0);
u32 sub_020674BC(SaveData *saveData);
u32 sub_020674E0(SaveData *saveData);
u32 sub_0206751C(SaveData *saveData);
BOOL FieldSystem_MapIsBattleTowerMultiPartnerSelectRoom(FieldSystem *fieldSystem);
void sub_0206759C(SaveData *saveData, int a1);

static const u8 _020FE4B0[] = { 0x00, 0x01, 0x02, 0x03, 0x04 };

static int sub_02066EDC(PartyMenuTaskWork *work, FieldSystem *fieldSystem, enum HeapID heapID) {
    PartyMenuArgs *args = Heap_AllocAtEnd(heapID, sizeof(PartyMenuArgs));
    SaveData *saveData = fieldSystem->saveData;
    u8 i;
    MI_CpuFill8(args, 0, sizeof(PartyMenuArgs));
    args->options = Save_PlayerData_GetOptionsAddr(saveData);
    args->party = SaveArray_Party_Get(saveData);
    args->bag = Save_Bag_Get(saveData);
    args->unk_25 = 0;
    args->context = work->context;
    args->minMonsToSelect = work->minMons;
    args->maxMonsToSelect = work->maxMons;
    args->maxLevel = work->maxLevel;
    args->partySlot = work->partySlot;
    args->menuInputStatePtr = &fieldSystem->menuInputState;
    for (i = 0; i < 6; i++) {
        args->selectedOrder[i] = work->selectedOrder[i];
    }
    FieldSystem_LaunchApplication(fieldSystem, &gOverlayTemplate_PartyMenu, args);
    *work->unk14 = args;
    return 1;
}

static int sub_02066F90(PartyMenuTaskWork *work, FieldSystem *fieldSystem) {
    PartyMenuArgs *args;
    if (FieldSystem_ApplicationIsRunning(fieldSystem)) {
        return 1;
    }
    args = *work->unk14;
    switch (args->partySlot) {
    case 7:
        work->unk0 = 0;
        return 4;
    case 6:
        work->unk0 = 1;
        return 4;
    }
    MI_CpuCopy8(args->selectedOrder, work->selectedOrder, 6);
    work->partySlot = args->partySlot;
    Heap_Free(args);
    *work->unk14 = NULL;
    return 2;
}

static int sub_02066FEC(PartyMenuTaskWork *work, FieldSystem *fieldSystem, enum HeapID heapID) {
    SaveData *saveData = fieldSystem->saveData;
    PokemonSummaryArgs *args = Heap_AllocAtEnd(heapID, sizeof(PokemonSummaryArgs));
    MI_CpuFill8(args, 0, sizeof(PokemonSummaryArgs));
    args->options = Save_PlayerData_GetOptionsAddr(saveData);
    args->party = SaveArray_Party_Get(saveData);
    args->natDexEnabled = SaveArray_IsNatDexEnabled(saveData);
    args->unk2C = sub_02088288(saveData);
    args->unk11 = 1;
    args->partySlot = work->partySlot;
    args->partyCount = Party_GetCount(args->party);
    args->moveToLearn = 0;
    args->unk12 = work->unk9;
    args->ribbons = Save_SpecialRibbons_Get(saveData);
    args->menuInputStatePtr = &fieldSystem->menuInputState;
    args->isFlag982Set = sub_0208828C(saveData);
    sub_02089D40(args, _020FE4B0);
    sub_0208AD34(args, Save_PlayerData_GetProfile(saveData));
    FieldSystem_LaunchApplication(fieldSystem, &gOverlayTemplate_PokemonSummary, args);
    *work->unk14 = args;
    return 3;
}

static int sub_02067088(PartyMenuTaskWork *work, FieldSystem *fieldSystem) {
    PokemonSummaryArgs *args;
    if (FieldSystem_ApplicationIsRunning(fieldSystem)) {
        return 3;
    }
    args = *work->unk14;
    work->partySlot = args->partySlot;
    Heap_Free(args);
    *work->unk14 = NULL;
    return 0;
}

static BOOL sub_020670B0(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    PartyMenuTaskWork *work = TaskManager_GetEnvironment(taskman);
    switch (work->state) {
    case 0:
        work->state = sub_02066EDC(work, fieldSystem, HEAP_ID_FIELD2);
        break;
    case 1:
        work->state = sub_02066F90(work, fieldSystem);
        break;
    case 2:
        work->state = sub_02066FEC(work, fieldSystem, HEAP_ID_FIELD2);
        break;
    case 3:
        work->state = sub_02067088(work, fieldSystem);
        break;
    case 4:
        Heap_Free(work);
        return TRUE;
    }
    return FALSE;
}

void sub_02067118(TaskManager *taskManager, void **a1, u8 a2, u8 a3, u8 a4, u8 a5, u8 a6, u8 a7) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    PartyMenuTaskWork *work = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenuTaskWork));
    MI_CpuFill8(work, 0, sizeof(PartyMenuTaskWork));
    work->context = a2;
    work->unk9 = a3;
    work->minMons = a4;
    work->maxMons = a5;
    work->maxLevel = a6;
    work->partySlot = a7;
    work->unk14 = a1;
    TaskManager_Call(fieldSystem->taskman, sub_020670B0, work);
}

static int sub_02067164(WifiConnectTaskWork *work, FieldSystem *fieldSystem) {
    if (sub_0203A05C(fieldSystem->saveData)) {
        work->unk8 = NintendoWifiConnection_LaunchApp(fieldSystem, work->unk12, work->unk14);
        return 1;
    }
    work->unk0 = 1;
    return 2;
}

static int sub_0206718C(WifiConnectTaskWork *work, FieldSystem *fieldSystem) {
    if (FieldSystem_ApplicationIsRunning(fieldSystem)) {
        return 1;
    }
    work->unk0 = work->unk8->unk20;
    Heap_Free(work->unk8);
    return 2;
}

static BOOL sub_020671B0(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    WifiConnectTaskWork *work = TaskManager_GetEnvironment(taskman);
    switch (work->state) {
    case 0:
        work->state = sub_02067164(work, fieldSystem);
        break;
    case 1:
        work->state = sub_0206718C(work, fieldSystem);
        break;
    case 2:
        *GetVarPointer(fieldSystem, work->varId) = work->unk0;
        Heap_Free(work);
        return TRUE;
    }
    return FALSE;
}

void sub_02067200(TaskManager *taskManager, u32 a1, u32 a2, u16 a3) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    WifiConnectTaskWork *work = Heap_Alloc(HEAP_ID_FIELD2, sizeof(WifiConnectTaskWork));
    MI_CpuFill8(work, 0, sizeof(WifiConnectTaskWork));
    work->unk12 = a1;
    work->unk14 = a3;
    work->varId = a2;
    TaskManager_Call(fieldSystem->taskman, sub_020671B0, work);
}

static BOOL sub_02067238(TaskManager *taskman) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskman);
    LinkAllyVarTaskWork *work = TaskManager_GetEnvironment(taskman);
    u16 *p = sub_02037C44(1 - sub_0203769C());
    u16 *dest;
    if (p == NULL) {
        return FALSE;
    }
    dest = GetVarPointer(fieldSystem, work->varId);
    switch (work->selector) {
    case 0:
        *dest = sub_0204B610(fieldSystem, p);
        break;
    case 1:
        *dest = sub_0204B66C(fieldSystem, p);
        break;
    case 2:
        *dest = sub_0204B690(fieldSystem, p);
        break;
    }
    Heap_Free(work);
    return TRUE;
}

void sub_020672A4(TaskManager *taskManager, u32 a1, u32 a2) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    LinkAllyVarTaskWork *work = Heap_Alloc(HEAP_ID_FIELD2, sizeof(LinkAllyVarTaskWork));
    MI_CpuFill8(work, 0, sizeof(LinkAllyVarTaskWork));
    work->selector = a1;
    work->varId = a2;
    TaskManager_Call(fieldSystem->taskman, sub_02067238, work);
}

u32 sub_020672D8(SaveData *saveData) {
    u32 stat;
    FrontierData *frontierData;
    u8 a;
    u8 b;
    u8 c;
    stat = FrontierSave_GetStat(Save_Frontier_GetStatic(saveData), 0, 0xff);
    if (stat < 0x14) {
        return 0;
    }
    frontierData = Save_FrontierData_Get(saveData);
    a = sub_0202D5DC(frontierData, 0xd, 0);
    b = sub_0202D5DC(frontierData, 0, 0);
    c = sub_0202D5DC(frontierData, 1, 0);
    sub_0202D5DC(frontierData, 0xe, 0);
    sub_0202D5DC(frontierData, 2, 0);
    sub_0202D5DC(frontierData, 3, 0);
    if (a && b && c) {
        return 0;
    }
    if (a == 0) {
        sub_0202D5DC(frontierData, 0xd, 1);
        return 1;
    }
    if (stat < 0x32) {
        return 0;
    }
    if (b == 0) {
        sub_0202D5DC(frontierData, 0, 1);
        return 2;
    }
    if (stat < 0x64 || c != 0) {
        return 0;
    }
    sub_0202D5DC(frontierData, 1, 1);
    return 3;
}

u32 sub_02067398(SaveData *saveData) {
    u32 stat;
    FrontierData *frontierData;
    u8 a;
    u8 b;
    u8 c;
    int d;
    int e;
    u8 f;
    stat = FrontierSave_GetStat(Save_Frontier_GetStatic(saveData), 0, 0xff);
    if (stat < 0x14) {
        return 0;
    }
    frontierData = Save_FrontierData_Get(saveData);
    a = sub_0202D5DC(frontierData, 0xd, 0);
    b = sub_0202D5DC(frontierData, 0, 0);
    c = sub_0202D5DC(frontierData, 1, 0);
    d = (u8)sub_0202D5DC(frontierData, 0xe, 0);
    e = (u8)sub_0202D5DC(frontierData, 2, 0);
    f = sub_0202D5DC(frontierData, 3, 0);
    if (a && b && c) {
        return 0;
    }
    if (a == 0) {
        if (d != 0) {
            return 4;
        }
        return 1;
    }
    if (stat < 0x32) {
        return 0;
    }
    if (b == 0) {
        if (e != 0) {
            return 5;
        }
        return 2;
    }
    if (stat < 0x64) {
        return 0;
    }
    if (c != 0) {
        return 0;
    }
    if (f != 0) {
        return 6;
    }
    return 3;
}

void sub_02067484(FieldSystem *fieldSystem, int *a1) {
    FrontierFieldSystem *frontierFsys = fieldSystem->frontierFsys;
    frontierFsys->unk24 += a1[0];
    frontierFsys->unk28 += a1[1];
    frontierFsys->unk26 += a1[2];
}

u32 sub_020674A4(u32 a0) {
    return 0x02E90EDD * a0 + 1;
}

static u32 sub_020674B0(u32 a0) {
    return 0x5D588B65 * a0 + 1;
}

u32 sub_020674BC(SaveData *saveData) {
    u32 x = sub_020674B0(sub_0202C7DC(Save_FriendGroup_Get(saveData)));
    sub_0202D638(Save_FrontierData_Get(saveData), x);
    return x;
}

u32 sub_020674E0(SaveData *saveData) {
    u32 local;
    FrontierData *frontierData = Save_FrontierData_Get(saveData);
    u32 x = sub_020674B0(sub_0202D63C(frontierData));
    sub_0202D638(frontierData, x);
    local = sub_020674A4(x);
    sub_0202D308(sub_0202D908(saveData), 0xa, &local);
    return local;
}

u32 sub_0206751C(SaveData *saveData) {
    u32 local;
    int i;
    int n;
    FrontierData *frontierData = Save_FrontierData_Get(saveData);
    u32 v = sub_0202D908(saveData);
    local = sub_020674A4(sub_0202D63C(frontierData));
    n = sub_0202D57C(frontierData, (u16)sub_0202D284(v, 0, 0), 0) * 0x18;
    for (i = 0; i < n; i++) {
        local = sub_020674A4(local);
    }
    sub_0202D308(sub_0202D908(saveData), 0xa, &local);
    return local;
}

BOOL FieldSystem_MapIsBattleTowerMultiPartnerSelectRoom(FieldSystem *fieldSystem) {
    if (fieldSystem->location->mapId == MAP_BATTLE_TOWER_PARTNER_ROOM) {
        return TRUE;
    }
    return FALSE;
}

void sub_0206759C(SaveData *saveData, int a1) {
    int *arr;
    PlayerProfile *profile;
    u8 i;
    if (a1 <= 0) {
        return;
    }
    arr = TrainerCard_GetBadgeShininessArr(Save_TrainerCard_Get(saveData));
    profile = Save_PlayerData_GetProfile(saveData);
    for (i = 0; i < 8; i++) {
        int shininess;
        if (!PlayerProfile_TestBadgeFlag(profile, i)) {
            continue;
        }
        shininess = GetShininessOfBadgeI(i, arr);
        if (shininess > 0 && shininess < 0xc8) {
            shininess = shininess - a1 * 10;
        } else {
            GF_ASSERT(shininess < 0xc8);
            shininess = 0;
        }
        if (shininess < 0) {
            shininess = 0;
        }
        SetShininessOfBadgeI(i, shininess, arr);
    }
}
