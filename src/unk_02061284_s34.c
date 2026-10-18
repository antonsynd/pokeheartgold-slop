#include "global.h"

#include "map_object.h"

typedef struct UnkDirectionList {
    int dirs[5];
} UnkDirectionList;

typedef struct UnkSpinData {
    s8 clockwise;
    s8 unk1;
    s8 unk2;
} UnkSpinData;

extern const UnkDirectionList _020FD754;
extern const UnkDirectionList _020FD768;

BOOL sub_020617AC(LocalMapObject *object, UnkSpinData *data) {
    UnkDirectionList clockwise = _020FD754;
    UnkDirectionList counterClockwise = _020FD768;
    int i;
    int *dirs = clockwise.dirs;
    int facing;

    if (data->clockwise != 2) {
        dirs = counterClockwise.dirs;
    }
    facing = MapObject_GetFacingDirection(object);
    for (i = 0; dirs[i] != -1; i++) {
        if (facing == dirs[i]) {
            break;
        }
    }
    GF_ASSERT(dirs[i] != -1);
    i++;
    if (dirs[i] == -1) {
        i = 0;
    }
    MapObject_SetFacingDirection(object, dirs[i]);
    data->unk2 = 0;
    return TRUE;
}
