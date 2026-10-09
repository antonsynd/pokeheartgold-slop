#include "global.h"

#include "assert.h"
#include "heap.h"
#include "map_object.h"
#include "overlay_01.h"
#include "overlay_01_022001E4.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "sys_task_api.h"
#include "unk_0205FD20.h"
#include "unk_02062108.h"
#include "unk_020689C8.h"

typedef struct UnkStruct_ApproachingTrainer {
    int state;
    int done;
    int direction;
    int sightRange;
    int unk10;
    int approachType;
    int approachNum;
    int delay;
    int unk20;
    LocalMapObject *mapObj;
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem;
} UnkStruct_ApproachingTrainer;

extern u32 sub_02060B90(LocalMapObject *mapObj, int x, int y, int z, int direction);
extern int sub_0206234C(int direction, int base);
extern int sub_02061200(int x, int y, int targetX, int targetY);
extern int sub_02064298(LocalMapObject *mapObj);
extern int sub_020648A0(UnkStruct_ApproachingTrainer *data);
extern int sub_020648C8(UnkStruct_ApproachingTrainer *data);
extern int sub_020648E4(UnkStruct_ApproachingTrainer *data);

int sub_0206464C(UnkStruct_ApproachingTrainer *data);
int sub_02064668(UnkStruct_ApproachingTrainer *data);
int sub_02064694(UnkStruct_ApproachingTrainer *data);
int sub_020646DC(UnkStruct_ApproachingTrainer *data);
int sub_02064714(UnkStruct_ApproachingTrainer *data);
int sub_02064730(UnkStruct_ApproachingTrainer *data);
int sub_02064748(UnkStruct_ApproachingTrainer *data);
int sub_02064764(UnkStruct_ApproachingTrainer *data);
int sub_02064778(UnkStruct_ApproachingTrainer *data);
int sub_02064790(UnkStruct_ApproachingTrainer *data);
int sub_020647A8(UnkStruct_ApproachingTrainer *data);
int sub_020647C0(UnkStruct_ApproachingTrainer *data);
int sub_020647E8(UnkStruct_ApproachingTrainer *data);
int sub_02064808(UnkStruct_ApproachingTrainer *data);
int sub_02064824(UnkStruct_ApproachingTrainer *data);
void sub_02064630(SysTask *task, void *data);
void sub_02064618(SysTask *task);
SysTask *sub_020645B4(FieldSystem *fieldSystem, LocalMapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum);

int (*const _020FE1A4[])(UnkStruct_ApproachingTrainer *) = {
    sub_0206464C,
    sub_02064668,
    sub_02064694,
    sub_020646DC,
    sub_02064714,
    sub_02064730,
    sub_02064748,
    sub_02064764,
    sub_02064778,
    sub_02064790,
    sub_020647A8,
    sub_020647C0,
    sub_020647E8,
    sub_02064808,
    sub_02064824,
    sub_020648A0,
    sub_020648C8,
    sub_020648E4,
};

int sub_020643B8(LocalMapObject *mapObj, int range, int playerX, int playerZ) {
    if (MapObject_GetXCoord(mapObj) == playerX) {
        int z = MapObject_GetZCoord(mapObj);

        if (playerZ < z && playerZ >= z - range) {
            return z - playerZ;
        }
    }

    return -1;
}

int sub_020643E4(LocalMapObject *mapObj, int range, int playerX, int playerZ) {
    if (MapObject_GetXCoord(mapObj) == playerX) {
        int z = MapObject_GetZCoord(mapObj);

        if (playerZ > z && playerZ <= z + range) {
            return playerZ - z;
        }
    }

    return -1;
}

int sub_02064410(LocalMapObject *mapObj, int range, int playerX, int playerZ) {
    if (MapObject_GetZCoord(mapObj) == playerZ) {
        int x = MapObject_GetXCoord(mapObj);

        if (playerX < x && playerX >= x - range) {
            return x - playerX;
        }
    }

    return -1;
}

int sub_0206443C(LocalMapObject *mapObj, int range, int playerX, int playerZ) {
    if (MapObject_GetZCoord(mapObj) == playerZ) {
        int x = MapObject_GetXCoord(mapObj);

        if (playerX > x && playerX <= x + range) {
            return playerX - x;
        }
    }

    return -1;
}

BOOL sub_02064468(LocalMapObject *mapObj, int direction, int distance) {
    int x;
    int y;
    int z;
    int i;
    u32 flags;

    if (distance == 0) {
        return TRUE;
    }

    x = MapObject_GetXCoord(mapObj);
    z = MapObject_GetZCoord(mapObj);
    y = MapObject_GetYCoord(mapObj);
    x += GetDeltaXByFacingDirection(direction);
    z += GetDeltaYByFacingDirection(direction);

    for (i = 0; i < distance - 1; i++) {
        flags = sub_02060B90(mapObj, x, y, z, direction);
        flags &= ~1;

        if (flags) {
            return TRUE;
        }

        x += GetDeltaXByFacingDirection(direction);
        z += GetDeltaYByFacingDirection(direction);
    }

    flags = sub_02060B90(mapObj, x, y, z, direction);
    flags &= ~1;

    if (flags == 4) {
        return FALSE;
    }

    return TRUE;
}

int MapObject_GetTrainerNum(LocalMapObject *mapObj) {
    return ScriptNumToTrainerNum(MapObject_GetScriptID(mapObj));
}

int sub_02064518(LocalMapObject *mapObj) {
    return MapObject_GetTrainerNum(mapObj);
}

LocalMapObject *sub_02064520(FieldSystem *fieldSystem, MapObjectManager *manager, LocalMapObject *mapObj, int trainerNum) {
    s32 index = 0;
    LocalMapObject *partner;

    while (MapObjectManager_GetNextObjectWithFlagFromIndex(manager, &partner, &index, MAPOBJECTFLAG_ACTIVE)) {
        if (partner != mapObj) {
            int type = sub_02064298(partner);

            if (type == 1 || type == 2) {
                if (trainerNum == MapObject_GetTrainerNum(partner)) {
                    return partner;
                }
            }
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

SysTask *sub_0206457C(FieldSystem *fieldSystem, LocalMapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum) {
    return sub_020645B4(fieldSystem, mapObj, playerAvatar, direction, sightRange, unused, approachType, approachNum);
}

BOOL sub_0206460C(SysTask *task);

BOOL sub_02064598(SysTask *task) {
    GF_ASSERT(task != NULL);
    return sub_0206460C(task);
}

void sub_020645AC(SysTask *task) {
    sub_02064618(task);
}

SysTask *sub_020645B4(FieldSystem *fieldSystem, LocalMapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum) {
    UnkStruct_ApproachingTrainer *data;
    SysTask *task;

    data = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(UnkStruct_ApproachingTrainer));
    GF_ASSERT(data != NULL);
    memset(data, 0, sizeof(UnkStruct_ApproachingTrainer));

    data->direction = direction;
    data->sightRange = sightRange;
    data->unk10 = unused;
    data->approachType = approachType;
    data->approachNum = approachNum;
    data->fieldSystem = fieldSystem;
    data->mapObj = mapObj;
    data->playerAvatar = playerAvatar;

    task = SysTask_CreateOnMainQueue(sub_02064630, data, 0xFF);
    GF_ASSERT(task != NULL);
    return task;
}

BOOL sub_0206460C(SysTask *task) {
    UnkStruct_ApproachingTrainer *data = SysTask_GetData(task);

    return data->done;
}

void sub_02064618(SysTask *task) {
    UnkStruct_ApproachingTrainer *data = SysTask_GetData(task);

    Heap_FreeExplicit(HEAP_ID_FIELD1, data);
    SysTask_Destroy(task);
}

void sub_02064630(SysTask *task, void *data) {
    UnkStruct_ApproachingTrainer *work = data;
    int (*func)(UnkStruct_ApproachingTrainer *);

    do {
        func = _020FE1A4[work->state];
    } while (func(work) == 1);
}

int sub_0206464C(UnkStruct_ApproachingTrainer *data) {
    LocalMapObject *mapObj = data->mapObj;

    if (MapObject_CheckSingleMovement(mapObj) == TRUE) {
        MapObject_UnpauseMovement(mapObj);
    }

    data->state = 1;
    return 1;
}

int sub_02064668(UnkStruct_ApproachingTrainer *data) {
    LocalMapObject *mapObj = data->mapObj;

    if (MapObject_CheckSingleMovement(mapObj) == TRUE) {
        return 0;
    }

    ov01_021F9408(data->mapObj, data->direction);
    MapObject_SetFlagsBits(mapObj, MAPOBJECTFLAG_MOVEMENT_PAUSED);
    data->state = 2;
    return 1;
}

int sub_02064694(UnkStruct_ApproachingTrainer *data) {
    LocalMapObject *playerObj = PlayerAvatar_GetMapObject(data->playerAvatar);

    if (MapObject_IsMovementPaused(playerObj) == FALSE) {
        return 0;
    }

    switch (MapObject_GetMovement(data->mapObj)) {
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
        data->state = 7;
        return 1;
    }

    data->state = 3;
    return 1;
}

int sub_020646DC(UnkStruct_ApproachingTrainer *data) {
    if (MapObject_AreBitsSetForMovementScriptInit(data->mapObj) == FALSE) {
        return 0;
    }

    GF_ASSERT(data->direction != -1);

    MapObject_SetHeldMovement(data->mapObj, sub_0206234C(data->direction, 0));
    data->state = 4;
    return 0;
}

int sub_02064714(UnkStruct_ApproachingTrainer *data) {
    if (MapObject_IsMovementPaused(data->mapObj) == FALSE) {
        return 0;
    }

    data->state = 5;
    return 1;
}

int sub_02064730(UnkStruct_ApproachingTrainer *data) {
    data->unk20 = ov01_02200540(data->mapObj, 0, 0);
    data->state = 6;
    return 0;
}

int sub_02064748(UnkStruct_ApproachingTrainer *data) {
    if (ov01_022003F4(data->unk20) == TRUE) {
        sub_02068B48(data->unk20);
        data->state = 9;
    }

    return 0;
}

int sub_02064764(UnkStruct_ApproachingTrainer *data) {
    MapObject_SetHeldMovement(data->mapObj, 0x65);
    data->state = 8;
    return 0;
}

int sub_02064778(UnkStruct_ApproachingTrainer *data) {
    if (MapObject_IsMovementPaused(data->mapObj) == TRUE) {
        data->state = 9;
    }

    return 0;
}

int sub_02064790(UnkStruct_ApproachingTrainer *data) {
    data->delay++;

    if (data->delay >= 30) {
        data->delay = 0;
        data->state = 10;
    }

    return 0;
}

int sub_020647A8(UnkStruct_ApproachingTrainer *data) {
    if (data->sightRange <= 1) {
        data->state = 13;
        return 1;
    }

    data->state = 11;
    return 1;
}

int sub_020647C0(UnkStruct_ApproachingTrainer *data) {
    if (MapObject_AreBitsSetForMovementScriptInit(data->mapObj) == TRUE) {
        MapObject_SetHeldMovement(data->mapObj, sub_0206234C(data->direction, 12));
        data->state = 12;
    }

    return 0;
}

int sub_020647E8(UnkStruct_ApproachingTrainer *data) {
    if (MapObject_IsMovementPaused(data->mapObj) == FALSE) {
        return 0;
    }

    data->sightRange--;
    data->state = 10;
    return 1;
}

int sub_02064808(UnkStruct_ApproachingTrainer *data) {
    data->delay++;

    if (data->delay < 8) {
        return 0;
    }

    data->delay = 0;
    data->state = 14;
    return 1;
}

int sub_02064824(UnkStruct_ApproachingTrainer *data) {
    LocalMapObject *playerObj = PlayerAvatar_GetMapObject(data->playerAvatar);
    int playerX = MapObject_GetXCoord(playerObj);
    int playerZ = MapObject_GetZCoord(playerObj);
    int trainerX = MapObject_GetXCoord(data->mapObj);
    int trainerZ = MapObject_GetZCoord(data->mapObj);
    int direction = sub_02061200(playerX, playerZ, trainerX, trainerZ);

    if (direction != PlayerAvatar_GetFacingDirection(data->playerAvatar) && (data->approachNum == 0 || data->approachType == 2)) {
        if (MapObject_AreBitsSetForMovementScriptInit(playerObj) == TRUE) {
            MapObject_ClearFlagsBits(playerObj, MAPOBJECTFLAG_UNK7);
            MapObject_SetHeldMovement(playerObj, sub_0206234C(direction, 0));
            data->state = 15;
        }
    } else {
        data->state = 16;
    }

    return 0;
}
