#include "global.h"

#include "map_object.h"

extern const fx32 *_0210FACC;

void sub_02066438(LocalMapObject *object);

BOOL MapObjectMovementCmd101_Step1(LocalMapObject *object) {
    u32 *step = (u32 *)sub_0205F3E4(object);
    const fx32 *table = _0210FACC;
    VecFx32 vec = { 0, 0, 0 };

    vec.y = table[*step];

    MapObject_SetFacingVector(object, &vec);
    *step += 2;
    if (*step < 16) {
        return FALSE;
    }
    vec.y = 0;
    MapObject_SetFacingVector(object, &vec);
    MapObject_SetFlagsBits(object, MAPOBJECTFLAG_END_MOVEMENT | MAPOBJECTFLAG_UNK5 | MAPOBJECTFLAG_UNK17);
    sub_02066438(object);
    MapObject_IncrementMovementStep(object);
    return TRUE;
}
