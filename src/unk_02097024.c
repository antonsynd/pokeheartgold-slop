// clang-format off
#include "field_system.h"
#include "unk_02097024.h"
// clang-format on

#include "game_stats.h"
#include "heap.h"
#include "launch_application.h"
#include "options.h"
#include "overlay_manager.h"
#include "party_menu.h"
#include "player_data.h"
#include "task.h"
#include "unk_02037C94.h"
#include "unk_02088288.h"

typedef struct UnkStruct_02097024_sub {
    u32 unk00;
    u32 frame;
    SaveData *saveData;
    void *unk0c;
    Options *options;
    GameStats *gameStats;
    FieldSystem *fieldSystem;
} UnkStruct_02097024_sub;

typedef struct UnkStruct_02097024 {
    u32 state;
    u32 unk04;
    u32 unk08;
    u32 unk0c;
    u32 unk10;
    UnkStruct_02097024_sub sub;
    void *unk30;
    u32 unk34;
    u32 unk38;
} UnkStruct_02097024;

typedef struct UnkStruct_0209707C {
    u32 state;
    u32 unk04;
    UnkStruct_02097024_sub sub;
    UnkStruct_02097024 *unk24;
    FieldSystem *fieldSystem;
    PartyMenuArgs *partyArgs;
    PokemonSummaryArgs *summaryArgs;
} UnkStruct_0209707C;

static UnkStruct_02097024 *sub_02097024(UnkStruct_02097024_sub *src, enum HeapID heapId);
static void sub_02097060(UnkStruct_02097024 *work);
static u32 sub_02097078(UnkStruct_02097024 *work);
static BOOL sub_020970E4(UnkStruct_0209707C *work);
static BOOL sub_02097108(UnkStruct_0209707C *work);
static BOOL sub_02097148(UnkStruct_0209707C *work);
static BOOL sub_020971AC(UnkStruct_0209707C *work);
static BOOL sub_020971D4(UnkStruct_0209707C *work);
static BOOL sub_020971EC(UnkStruct_0209707C *work);

void *sub_02096C88(void *work, enum HeapID heapId);
void sub_02096CC8(void *work);
void sub_02096CF4(void *work);

BOOL ov85_021E5900(OverlayManager *manager, int *state);
BOOL ov85_021E5A34(OverlayManager *manager, int *state);
BOOL ov85_021E5AAC(OverlayManager *manager, int *state);
BOOL ov85_021E88AC(OverlayManager *manager, int *state);
BOOL ov85_021E8A08(OverlayManager *manager, int *state);
BOOL ov85_021E8B08(OverlayManager *manager, int *state);

FS_EXTERN_OVERLAY(OVY_85);

static const OverlayManagerTemplate _02108EB0 = {
    .init = ov85_021E5900,
    .exec = ov85_021E5AAC,
    .exit = ov85_021E5A34,
    .ovy_id = FS_OVERLAY_ID(OVY_85),
};

static const OverlayManagerTemplate _02108EA0 = {
    .init = ov85_021E88AC,
    .exec = ov85_021E8A08,
    .exit = ov85_021E8B08,
    .ovy_id = FS_OVERLAY_ID(OVY_85),
};

static BOOL (*const _02108EC0[])(UnkStruct_0209707C *) = {
    sub_020970E4,
    sub_02097108,
    sub_02097148,
    sub_020971AC,
    sub_020971D4,
    sub_020971EC,
};

static UnkStruct_02097024 *sub_02097024(UnkStruct_02097024_sub *src, enum HeapID heapId) {
    UnkStruct_02097024 *work = Heap_Alloc(heapId, sizeof(UnkStruct_02097024));
    memset(work, 0, sizeof(UnkStruct_02097024));
    work->sub = *src;
    work->unk30 = sub_02096C88(work, heapId);
    return work;
}

static void sub_02097060(UnkStruct_02097024 *work) {
    sub_02096CF4(work->unk30);
    sub_02096CC8(work->unk30);
    Heap_Free(work);
}

static u32 sub_02097078(UnkStruct_02097024 *work) {
    return work->unk10;
}

void *sub_0209707C(FieldSystem *fieldSystem) {
    UnkStruct_0209707C *work = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_0209707C));
    memset(work, 0, sizeof(UnkStruct_0209707C));
    work->fieldSystem = fieldSystem;
    work->sub.saveData = fieldSystem->saveData;
    work->sub.unk0c = fieldSystem->unk84;
    work->sub.options = Save_PlayerData_GetOptionsAddr(fieldSystem->saveData);
    work->sub.gameStats = Save_GameStats_Get(fieldSystem->saveData);
    work->sub.frame = Options_GetFrame(work->sub.options);
    work->sub.fieldSystem = fieldSystem;
    return work;
}

BOOL sub_020970C0(void *param) {
    UnkStruct_0209707C *work = param;
    if (_02108EC0[work->state](work) == 1) {
        Heap_Free(work);
        return TRUE;
    }
    return FALSE;
}

static BOOL sub_020970E4(UnkStruct_0209707C *work) {
    work->unk24 = sub_02097024(&work->sub, HEAP_ID_FIELD2);
    work->state = 1;
    FieldSystem_LaunchApplication(work->fieldSystem, &_02108EA0, work->unk24);
    return FALSE;
}

static BOOL sub_02097108(UnkStruct_0209707C *work) {
    if (FieldSystem_ApplicationIsRunning(work->fieldSystem) == 0) {
        if (sub_02097078(work->unk24) == 0) {
            work->state = 5;
        } else {
            sub_020398D4(1, 1);
            work->partyArgs = PartyMenu_LaunchApp_Unk5(work->fieldSystem, work->unk04);
            work->unk24->state = 1;
            work->state = 2;
        }
    }
    return FALSE;
}

static BOOL sub_02097148(UnkStruct_0209707C *work) {
    if (FieldSystem_ApplicationIsRunning(work->fieldSystem) == 0) {
        u8 slot = work->partyArgs->partySlot;
        Heap_Free(work->partyArgs);
        if (work->partyArgs->selectedAction == 1) {
            work->summaryArgs = PokemonSummary_CreateArgs(work->fieldSystem, HEAP_ID_3, 0);
            work->unk04 = slot;
            work->summaryArgs->partySlot = slot;
            PokemonSummary_LearnForget_LaunchApp(work->fieldSystem, work->summaryArgs);
            work->state = 3;
        } else {
            work->unk24->unk04 = slot;
            FieldSystem_LaunchApplication(work->fieldSystem, &_02108EB0, work->unk24);
            work->unk24->state = 3;
            work->state = 4;
        }
    }
    return FALSE;
}

static BOOL sub_020971AC(UnkStruct_0209707C *work) {
    if (FieldSystem_ApplicationIsRunning(work->fieldSystem) == 0) {
        Heap_Free(work->summaryArgs);
        work->partyArgs = PartyMenu_LaunchApp_Unk5(work->fieldSystem, work->unk04);
        work->state = 2;
    }
    return FALSE;
}

static BOOL sub_020971D4(UnkStruct_0209707C *work) {
    if (FieldSystem_ApplicationIsRunning(work->fieldSystem) == 0) {
        work->state = 5;
    }
    return FALSE;
}

static BOOL sub_020971EC(UnkStruct_0209707C *work) {
    sub_02097060(work->unk24);
    return TRUE;
}
