#include "global.h"

#include "constants/sndseq.h"

#include "field_system.h"
#include "heap.h"
#include "map_object.h"
#include "metatile_behavior.h"
#include "player_avatar.h"
#include "task.h"
#include "unk_02005D10.h"

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    FieldSystem *unkC;
    PlayerAvatar *unk10;
    int unk14;
} UnkOv01_021F3114;

BOOL ov01_021F3114(FieldSystem *fieldSystem, PlayerAvatar *avatar);

extern int sub_0206234C(int a0, int a1);
extern void sub_0205DFD4(PlayerAvatar *avatar, int a1);
extern BOOL sub_0205DFC8(PlayerAvatar *avatar);
extern BOOL sub_0205DA34(PlayerAvatar *avatar, LocalMapObject *mapObject, int direction);
extern void ov04_02256BE4(FieldSystem *fieldSystem, int a1);

static void ov01_021F3170(FieldSystem *fieldSystem, PlayerAvatar *avatar, int direction);
static int ov01_021F31A0(int direction);
static BOOL ov01_021F31CC(TaskManager *taskManager);
static void *ov01_021F3348(u32 size);
static void ov01_021F336C(void *work);

BOOL ov01_021F3114(FieldSystem *fieldSystem, PlayerAvatar *avatar) {
    u8 tile = sub_0205F504(PlayerAvatar_GetMapObject(avatar));
    int direction;
    if (sub_0205B9DC(tile) == 1) {
        direction = 3;
    } else if (sub_0205B9E8(tile) == 1) {
        direction = 2;
    } else if (sub_0205B9F4(tile) == 1) {
        direction = 0;
    } else if (sub_0205BA00(tile) == 1) {
        direction = 1;
    } else {
        return 0;
    }
    ov01_021F3170(fieldSystem, avatar, direction);
    return 1;
}

static void ov01_021F3170(FieldSystem *fieldSystem, PlayerAvatar *avatar, int direction) {
    UnkOv01_021F3114 *work = ov01_021F3348(sizeof(UnkOv01_021F3114));
    work->unkC = fieldSystem;
    work->unk10 = avatar;
    work->unk0 = direction;
    PlaySE(SEQ_SE_DP_F209);
    FieldSystem_CreateTask(fieldSystem, ov01_021F31CC, work);
}

static int ov01_021F31A0(int direction) {
    switch (direction) {
    case 0:
        return 2;
    case 2:
        return 1;
    case 1:
        return 3;
    case 3:
        return 0;
    }
    return 0;
}

static BOOL ov01_021F31CC(TaskManager *taskManager) {
    UnkOv01_021F3114 *work = TaskManager_GetEnvironment(taskManager);
    LocalMapObject *mapObject = PlayerAvatar_GetMapObject(work->unk10);
    u8 tile = sub_0205F504(mapObject);
    switch (work->unk8) {
    case 0:
        MapObject_SetFlagsBits(mapObject, (MapObjectFlagBits)(1 << 8));
        work->unk8++;
        break;
    case 1:
        if (sub_0205DFC8(work->unk10) != 0) {
            sub_0205DFD4(work->unk10, sub_0206234C(work->unk0, 0xc));
            PlayerAvatar_SetFacingDirection(work->unk10, work->unk0);
            work->unk8++;
            work->unk4 = 7;
        }
        break;
    case 2:
        if (work->unk4 == 2 || work->unk4 == 4 || work->unk4 == 6) {
            work->unk0 = ov01_021F31A0(work->unk0);
            PlayerAvatar_SetFacingDirection(work->unk10, work->unk0);
        }
        if (--work->unk4 != 0) {
            break;
        }
        if (sub_0205B9DC(tile) == 1) {
            work->unk0 = 3;
            ov04_02256BE4(work->unkC, tile);
        } else if (sub_0205B9E8(tile) == 1) {
            work->unk0 = 2;
            ov04_02256BE4(work->unkC, tile);
        } else if (sub_0205B9F4(tile) == 1) {
            work->unk0 = 0;
            ov04_02256BE4(work->unkC, tile);
        } else if (sub_0205BA00(tile) == 1) {
            work->unk0 = 1;
            ov04_02256BE4(work->unkC, tile);
        } else if (sub_0205BA0C(tile) == 1) {
            work->unk0 = ov01_021F31A0(work->unk0);
            MapObject_ClearFlagsBits(mapObject, (MapObjectFlagBits)0x80);
            MapObject_ClearFlagsBits(mapObject, (MapObjectFlagBits)(1 << 8));
            PlayerAvatar_SetFacingDirection(work->unk10, work->unk0);
            ov01_021F336C(work);
            StopSE(SEQ_SE_DP_F209, 0);
            return TRUE;
        } else {
            work->unk0 = ov01_021F31A0(work->unk0);
        }
        if (sub_0205DA34(work->unk10, mapObject, work->unk0) == 0) {
            work->unk8 = 1;
            break;
        }
        MapObject_ClearFlagsBits(mapObject, (MapObjectFlagBits)0x80);
        MapObject_ClearFlagsBits(mapObject, (MapObjectFlagBits)(1 << 8));
        PlayerAvatar_SetFacingDirection(work->unk10, work->unk0);
        ov01_021F336C(work);
        StopSE(SEQ_SE_DP_F209, 0);
        return TRUE;
    }
    return FALSE;
}

static void *ov01_021F3348(u32 size) {
    void *work = Heap_AllocAtEnd(HEAP_ID_FIELD1, size);
    GF_ASSERT(work != NULL);
    memset(work, 0, size);
    return work;
}

static void ov01_021F336C(void *work) {
    Heap_FreeExplicit(HEAP_ID_FIELD1, work);
}
