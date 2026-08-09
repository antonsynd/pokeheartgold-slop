#include "global.h"

#include "constants/game_stats.h"
#include "constants/sndseq.h"

#include "battle/battle_setup.h"
#include "msgdata/msg/msg_0096_D31R0201.h"

#include "bg_window.h"
#include "encounter.h"
#include "field_system.h"
#include "follow_mon.h"
#include "game_stats.h"
#include "heap.h"
#include "map_object.h"
#include "math_util.h"
#include "message_format.h"
#include "msgdata.h"
#include "options.h"
#include "overlay_01.h"
#include "overlay_01_021F1AFC.h"
#include "overlay_01_022001E4.h"
#include "party.h"
#include "player_avatar.h"
#include "player_data.h"
#include "pm_string.h"
#include "pokemon.h"
#include "render_window.h"
#include "script_pokemon_util.h"
#include "sys_task.h"
#include "sys_task_api.h"
#include "task.h"
#include "text.h"
#include "unk_02005D10.h"
#include "unk_02062108.h"
#include "unk_020689C8.h"
#include "unk_02092BE8.h"

struct FishingRodWork {
    int state;                // 0x00
    int unk04;                // 0x04
    int unk08;                // 0x08
    int rodType;              // 0x0C
    BattleSetup *battleSetup; // 0x10
    SysTask *task;            // 0x14
};

typedef struct FishingRodTaskData {
    int unk00;                // 0x00
    int unk04;                // 0x04
    int unk08;                // 0x08
    int state;                // 0x0C
    int unk10;                // 0x10
    int unk14;                // 0x14
    int unk18;                // 0x18
    int rodType;              // 0x1C
    FieldSystem *fieldSystem; // 0x20
    int unk24;                // 0x24
    u8 printerId;             // 0x28
    String *unk2c;            // 0x2C
    String *unk30;            // 0x30
    MessageFormat *unk34;     // 0x34
    Window window;            // 0x38
    MsgData *msgData;         // 0x48
} FishingRodTaskData;

typedef int (*FishingRodStateFunc)(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);

void ov01_02200400(int a0);
// Local prototype: the public encounter_check.h declares rodType as u8, but this
// caller was matched against an int-width param (no (u8) truncation at the call site).
BOOL FieldSystem_PerformFishEncounterCheck(FieldSystem *fieldSystem, int rodType, BattleSetup **pBattleSetup);

static SysTask *ov01_021FC748(FieldSystem *fieldSystem, int rodType, int encounter);
static int ov01_021FC76C(SysTask *task);
static int ov01_021FC778(SysTask *task);
static void ov01_021FC784(SysTask *task);
static void ov01_021FC798(SysTask *task, void *taskData);
static int ov01_021FC7C4(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC7DC(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC814(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC84C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC88C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC8E8(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC914(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC934(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC968(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC980(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC98C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC9AC(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC9DC(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FC9E8(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FCA2C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FCA58(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FCA94(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static int ov01_021FCAA8(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject);
static void *ov01_021FCAC4(u32 size);
static int ov01_021FCAE8(void);
static int ov01_021FCAFC(void);
static void ov01_021FCB14(FishingRodTaskData *data);
static void ov01_021FCB4C(FishingRodTaskData *data);
static void ov01_021FCB6C(FishingRodTaskData *data);
static void ov01_021FCB90(FishingRodTaskData *data, int msgId);
static int ov01_021FCBCC(FishingRodTaskData *data);
static int ov01_021FCC00(int rod);
static int ov01_021FCC2C(FishingRodTaskData *data);
static int ov01_021FCC74(u8 friendship);
static u8 ov01_021FCCB0(FishingRodTaskData *data);

static const s32 sFishingRodTime[] = {
    45,
    30,
    15,
};

static const s32 sFishingRodMoodBonus[5][3] = {
    { 0,  0,  0  },
    { 9,  6,  3  },
    { 15, 12, 6  },
    { 21, 18, 9  },
    { 30, 24, 12 },
};

static const FishingRodStateFunc sFishingRodStateFuncs[];

struct FishingRodWork *CreateFishingRodTaskEnv(FieldSystem *fieldSystem, enum HeapID heapID, int rod) {
    struct FishingRodWork *work = Heap_AllocAtEnd(heapID, sizeof(struct FishingRodWork));
    u8 *p = (u8 *)work;
    u32 i = sizeof(struct FishingRodWork);
    do {
        *p++ = 0;
    } while (--i);
    work->rodType = rod;
    work->unk04 = ov01_021FCC00(rod);
    return work;
}

BOOL Task_OverworldFish(TaskManager *taskManager) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    struct FishingRodWork *work = TaskManager_GetEnvironment(taskManager);
    switch (work->state) {
    case 0:
        MapObjectManager_PauseAllMovement(fieldSystem->mapObjectManager);
        work->battleSetup = NULL;
        work->unk08 = FieldSystem_PerformFishEncounterCheck(fieldSystem, work->rodType, &work->battleSetup);
        work->task = ov01_021FC748(fieldSystem, work->rodType, work->unk08);
        work->state++;
        break;
    case 1:
        if (ov01_021FC76C(work->task) == 1) {
            int caught = ov01_021FC778(work->task);
            ov01_021FC784(work->task);
            if (caught == 1) {
                GearPhoneRingManager_ResetIfActive(FieldSystem_GetGearPhoneRingManager(fieldSystem));
                GameStats_Inc(Save_GameStats_Get(fieldSystem->saveData), GAME_STAT_FISH_LANDED);
                FieldSystem_StartForcedWildBattle(fieldSystem, taskManager, work->battleSetup);
                Heap_Free(work);
                return FALSE;
            }
            if (work->battleSetup != NULL) {
                BattleSetup_Delete(work->battleSetup);
            }
            MapObjectManager_UnpauseAllMovement(fieldSystem->mapObjectManager);
            Heap_Free(work);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

static SysTask *ov01_021FC748(FieldSystem *fieldSystem, int rodType, int encounter) {
    FishingRodTaskData *data = ov01_021FCAC4(sizeof(FishingRodTaskData));
    data->fieldSystem = fieldSystem;
    data->rodType = rodType;
    data->unk00 = encounter;
    return SysTask_CreateOnMainQueue(ov01_021FC798, data, 0x80);
}

static int ov01_021FC76C(SysTask *task) {
    FishingRodTaskData *data = SysTask_GetData(task);
    return data->unk04;
}

static int ov01_021FC778(SysTask *task) {
    FishingRodTaskData *data = SysTask_GetData(task);
    return data->unk08;
}

static void ov01_021FC784(SysTask *task) {
    Heap_Free(SysTask_GetData(task));
    SysTask_Destroy(task);
}

static void ov01_021FC798(SysTask *task, void *taskData) {
    FishingRodTaskData *data = taskData;
    PlayerAvatar *playerAvatar = data->fieldSystem->playerAvatar;
    LocalMapObject *mapObject = PlayerAvatar_GetMapObject(playerAvatar);
    do {
    } while (sFishingRodStateFuncs[data->state](data, playerAvatar, mapObject));
}

static int ov01_021FC7C4(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    ov01_021FCB14(data);
    MapObject_UnpauseMovement(mapObject);
    data->state = 1;
    return 1;
}

static int ov01_021FC7DC(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    if (MapObject_AreBitsSetForMovementScriptInit(mapObject) == 1) {
        MapObject_ClearHeldMovementIfActive(mapObject);
        Field_PlayerAvatar_OrrTransitionFlags(playerAvatar, 0x20);
        Field_PlayerAvatar_ApplyTransitionFlags(playerAvatar);
        sub_0205F328(mapObject, 1);
        data->state = 2;
    }
    return 0;
}

static int ov01_021FC814(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk10++;
    if (data->unk10 == 0xA) {
        PlaySE(SEQ_SE_DP_FW104);
    }
    if (data->unk10 < 0x22) {
        return 0;
    }
    data->state = (data->unk00 == 1) ? 3 : 0xC;
    data->unk10 = 0;
    return 1;
}

static int ov01_021FC84C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk14 = (LCRandom() % 4 + 1) * 30;
    data->unk18 = sFishingRodTime[data->rodType];
    data->unk18 += ov01_021FCCB0(data);
    data->state = 4;
    return 1;
}

static int ov01_021FC88C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk14--;
    if (ov01_021FCAE8() == 1) {
        data->state = 0xA;
        return 1;
    }
    if (data->unk14 > 0) {
        return 0;
    }
    sub_0205F328(mapObject, 2);
    if (ov01_021FCC2C(data)) {
        data->unk24 = ov01_02200540(FollowMon_GetMapObject(data->fieldSystem), 0, 1);
    } else {
        data->unk24 = ov01_02200540(mapObject, 0, 1);
    }
    data->state = 5;
    return 1;
}

static int ov01_021FC8E8(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk18--;
    if (ov01_021FCAE8() == 1) {
        data->state = 6;
        return 1;
    }
    if (data->unk18 > 0) {
        return 0;
    }
    data->state = 0xB;
    return 0;
}

static int ov01_021FC914(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    ov01_02200400(data->unk24);
    sub_0205F328(mapObject, 3);
    data->unk10 = 0;
    data->state = 7;
    return 0;
}

static int ov01_021FC934(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk10++;
    if (data->unk24 != 0) {
        sub_02068B48(data->unk24);
        data->unk24 = 0;
    }
    if (data->unk10 > 0xF) {
        data->unk10 = 0;
        data->state = 8;
        ov01_021FCB90(data, msg_0096_D31R0201_00052);
    }
    return 0;
}

static int ov01_021FC968(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    if (ov01_021FCBCC(data) == 0) {
        return 0;
    }
    data->state = 9;
    return 1;
}

static int ov01_021FC980(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk08 = 1;
    data->state = 0xF;
    return 1;
}

static int ov01_021FC98C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    sub_0205F328(mapObject, 0);
    ov01_021FCB90(data, msg_0096_D31R0201_00051);
    data->unk10 = 0x10;
    data->state = 0xE;
    return 1;
}

static int ov01_021FC9AC(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    sub_0205F328(mapObject, 0);
    ov01_021FCB90(data, msg_0096_D31R0201_00050);
    data->unk10 = 0x10;
    data->state = 0xE;
    GameStats_Inc(Save_GameStats_Get(data->fieldSystem->saveData), GAME_STAT_FISH_GOT_AWAY);
    return 1;
}

static int ov01_021FC9DC(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk10 = 0x78;
    data->state = 0xD;
    return 1;
}

static int ov01_021FC9E8(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk10--;
    if (ov01_021FCAE8() == 1) {
        data->state = 0xA;
        return 1;
    }
    if (data->unk10 != 0) {
        return 0;
    }
    sub_0205F328(mapObject, 0);
    ov01_021FCB90(data, msg_0096_D31R0201_00049);
    data->unk10 = 0x10;
    data->state = 0xE;
    return 0;
}

static int ov01_021FCA2C(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    data->unk10++;
    if (data->unk10 < 0x10) {
        return 0;
    }
    data->unk10 = 0x10;
    if (ov01_021FCBCC(data) == 0) {
        return 0;
    }
    data->state = 0xF;
    return 1;
}

static int ov01_021FCA58(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    if (data->unk24 != 0) {
        ov01_02200400(data->unk24);
    }
    ov01_021FCB4C(data);
    Field_PlayerAvatar_OrrTransitionFlags(playerAvatar, PlayerAvatar_GetTransitionBits(PlayerAvatar_GetState(playerAvatar)));
    Field_PlayerAvatar_ApplyTransitionFlags(playerAvatar);
    data->unk10 = 0;
    data->state = 0x10;
    return 1;
}

static int ov01_021FCA94(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    if (++data->unk10 > 2) {
        data->state = 0x11;
    }
    return 0;
}

static int ov01_021FCAA8(FishingRodTaskData *data, PlayerAvatar *playerAvatar, LocalMapObject *mapObject) {
    if (data->unk24 != 0) {
        sub_02068B48(data->unk24);
        data->unk24 = 0;
    }
    data->unk04 = 1;
    return 0;
}

static void *ov01_021FCAC4(u32 size) {
    void *ptr = Heap_AllocAtEnd(HEAP_ID_FIELD1, size);
    GF_ASSERT(ptr);
    memset(ptr, 0, size);
    return ptr;
}

static int ov01_021FCAE8(void) {
    return (gSystem.newKeys & 1) != 0;
}

static int ov01_021FCAFC(void) {
    if (gSystem.newKeys & 3) {
        return 1;
    }
    return 0;
}

static void ov01_021FCB14(FishingRodTaskData *data) {
    data->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 0x28, HEAP_ID_FIELD1);
    data->unk2c = String_New(0x400, HEAP_ID_FIELD1);
    data->unk30 = String_New(0x400, HEAP_ID_FIELD1);
    data->unk34 = MessageFormat_New_Custom(8, 0x40, HEAP_ID_FIELD1);
}

static void ov01_021FCB4C(FishingRodTaskData *data) {
    MessageFormat_Delete(data->unk34);
    String_Delete(data->unk2c);
    String_Delete(data->unk30);
    DestroyMsgData(data->msgData);
}

static void ov01_021FCB6C(FishingRodTaskData *data) {
    FieldSystem *fieldSystem = data->fieldSystem;
    DialogBox_AddWindowToLayer3(fieldSystem->bgConfig, &data->window, GF_BG_LYR_MAIN_3);
    DialogBox_LoadFrame(&data->window, Save_PlayerData_GetOptionsAddr(fieldSystem->saveData));
}

static void ov01_021FCB90(FishingRodTaskData *data, int msgId) {
    FieldSystem *fieldSystem;
    ov01_021FCB6C(data);
    fieldSystem = data->fieldSystem;
    ReadMsgDataIntoString(data->msgData, msgId, data->unk30);
    StringExpandPlaceholders(data->unk34, data->unk2c, data->unk30);
    data->printerId = DialogBox_PrintMessage(&data->window, data->unk2c, Save_PlayerData_GetOptionsAddr(fieldSystem->saveData), 1);
}

static int ov01_021FCBCC(FishingRodTaskData *data) {
    if (DialogBox_IsPrintFinished(data->printerId) == 1 && ov01_021FCAFC() == 1) {
        ClearFrameAndWindow2(&data->window, FALSE);
        RemoveWindow(&data->window);
        return 1;
    }
    return 0;
}

static int ov01_021FCC00(int rod) {
    switch (rod) {
    default:
        GF_AssertFail();
        // fallthrough
    case 0:
        return 0x1BD;
    case 1:
        return 0x1BE;
    case 2:
        return 0x1BF;
    }
}

static int ov01_021FCC2C(FishingRodTaskData *data) {
    if (PlayerAvatar_GetState(data->fieldSystem->playerAvatar) == 2) {
        return 0;
    }
    if (FollowMon_IsActive(data->fieldSystem)) {
        if (ov01_021FCC74((u8)GetMonData(GetFirstAliveMonInParty_CrashIfNone(SaveArray_Party_Get(data->fieldSystem->saveData)), MON_DATA_FRIENDSHIP, NULL))) {
            return 1;
        }
    }
    return 0;
}

static int ov01_021FCC74(u8 friendship) {
    int threshold;
    if (friendship <= 0x63) {
        return 0;
    }
    if (friendship <= 0x95) {
        threshold = 20;
    } else if (friendship <= 0xC7) {
        threshold = 30;
    } else if (friendship <= 0xF9) {
        threshold = 40;
    } else {
        threshold = 50;
    }
    if (LCRandom() % 100 < threshold) {
        return 1;
    }
    return 0;
}

static u8 ov01_021FCCB0(FishingRodTaskData *data) {
    if (FollowMon_IsActive(data->fieldSystem)) {
        int bucket;
        int mood = FieldSystem_UnkSub108_GetMonMood(data->fieldSystem->unk108);
        u8 rod;
        if (mood <= -10) {
            bucket = 0;
        } else if (mood >= -9 && mood <= 9) {
            bucket = 1;
        } else if (mood >= 10 && mood < 50) {
            bucket = 2;
        } else if (mood >= 50 && mood < 100) {
            bucket = 3;
        } else {
            bucket = 4;
        }
        rod = data->rodType;
        if (rod > 2) {
            GF_AssertFail();
            return 0;
        }
        return sFishingRodMoodBonus[bucket][rod];
    }
    return 0;
}

static const FishingRodStateFunc sFishingRodStateFuncs[] = {
    ov01_021FC7C4,
    ov01_021FC7DC,
    ov01_021FC814,
    ov01_021FC84C,
    ov01_021FC88C,
    ov01_021FC8E8,
    ov01_021FC914,
    ov01_021FC934,
    ov01_021FC968,
    ov01_021FC980,
    ov01_021FC98C,
    ov01_021FC9AC,
    ov01_021FC9DC,
    ov01_021FC9E8,
    ov01_021FCA2C,
    ov01_021FCA58,
    ov01_021FCA94,
    ov01_021FCAA8,
};
