#include "global.h"

#include "constants/global_fieldmap.h"

#include "map_object.h"
#include "unk_0205FD20.h"

typedef struct MapObjectMovementCmdWork {
    u16 unk0;
    s16 unk2;
    int unk4;
    fx32 unk8;
} MapObjectMovementCmdWork;

void sub_0206101C(LocalMapObject *object, int direction, fx32 speed);
void sub_020624CC(LocalMapObject *object, int direction, fx32 speed, int count, int a4);

BOOL MapObjectMovementCmd090_Step1(LocalMapObject *object) {
    MapObjectMovementCmdWork *work = (MapObjectMovementCmdWork *)sub_0205F3E4(object);
    sub_0206101C(object, work->unk4, work->unk8);
    sub_02061070(object);
    work->unk2--;
    if (work->unk2 > 0) {
        return FALSE;
    }
    MapObject_SetFlagsBits(object, MAPOBJECTFLAG_END_MOVEMENT | MAPOBJECTFLAG_UNK5);
    sub_02060F78(object);
    sub_0205F484(object);
    sub_0205F328(object, 0);
    MapObject_IncrementMovementStep(object);
    return TRUE;
}

BOOL MapObjectMovementCmd004_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_NORTH, 0x800, 32, 1);
    return TRUE;
}

BOOL MapObjectMovementCmd005_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_SOUTH, 0x800, 32, 1);
    return TRUE;
}

BOOL MapObjectMovementCmd006_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_WEST, 0x800, 32, 1);
    return TRUE;
}

BOOL MapObjectMovementCmd007_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_EAST, 0x800, 32, 1);
    return TRUE;
}

BOOL MapObjectMovementCmd008_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_NORTH, 0x1000, 16, 2);
    return TRUE;
}

BOOL MapObjectMovementCmd009_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_SOUTH, 0x1000, 16, 2);
    return TRUE;
}

BOOL MapObjectMovementCmd010_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_WEST, 0x1000, 16, 2);
    return TRUE;
}

BOOL MapObjectMovementCmd011_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_EAST, 0x1000, 16, 2);
    return TRUE;
}

BOOL MapObjectMovementCmd012_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_NORTH, 0x2000, 8, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd013_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_SOUTH, 0x2000, 8, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd014_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_WEST, 0x2000, 8, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd015_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_EAST, 0x2000, 8, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd016_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_NORTH, 0x4000, 4, 4);
    return TRUE;
}

BOOL MapObjectMovementCmd017_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_SOUTH, 0x4000, 4, 4);
    return TRUE;
}

BOOL MapObjectMovementCmd018_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_WEST, 0x4000, 4, 4);
    return TRUE;
}

BOOL MapObjectMovementCmd019_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_EAST, 0x4000, 4, 4);
    return TRUE;
}

BOOL MapObjectMovementCmd020_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_NORTH, 0x8000, 2, 5);
    return TRUE;
}

BOOL MapObjectMovementCmd021_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_SOUTH, 0x8000, 2, 5);
    return TRUE;
}

BOOL MapObjectMovementCmd022_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_WEST, 0x8000, 2, 5);
    return TRUE;
}

BOOL MapObjectMovementCmd023_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_EAST, 0x8000, 2, 5);
    return TRUE;
}

BOOL MapObjectMovementCmd084_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_NORTH, 0x10000, 1, 0);
    return TRUE;
}

BOOL MapObjectMovementCmd085_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_SOUTH, 0x10000, 1, 0);
    return TRUE;
}

BOOL MapObjectMovementCmd086_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_WEST, 0x10000, 1, 0);
    return TRUE;
}

BOOL MapObjectMovementCmd087_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_EAST, 0x10000, 1, 0);
    return TRUE;
}

BOOL MapObjectMovementCmd088_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_NORTH, 0x4000, 4, 9);
    return TRUE;
}

BOOL MapObjectMovementCmd089_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_SOUTH, 0x4000, 4, 9);
    return TRUE;
}

BOOL MapObjectMovementCmd090_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_WEST, 0x4000, 4, 9);
    return TRUE;
}

BOOL MapObjectMovementCmd091_Step0(LocalMapObject *object) {
    sub_020624CC(object, DIR_EAST, 0x4000, 4, 9);
    return TRUE;
}

void sub_020627B0(LocalMapObject *object, u32 direction, int a2, u16 a3) {
    MapObjectMovementCmdWork *work = (MapObjectMovementCmdWork *)sub_0205F3C0(object, sizeof(MapObjectMovementCmdWork));
    work->unk0 = a3;
    work->unk2 = a2 + 1;
    MapObject_SetFacingDirection(object, direction);
    sub_0205F328(object, a3);
    sub_02060F78(object);
    MapObject_IncrementMovementStep(object);
}
