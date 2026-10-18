#include "global.h"

#include "map_object.h"
#include "metatile_behavior.h"
#include "unk_0205FD20.h"

// Called as matched
#define sub_0205F524(object) ((u32 (*)(LocalMapObject *))sub_0205F524)(object)

void sub_02060530(LocalMapObject *object, u8 behavior, u8 unused, u16 *attrs) {
    u32 mode;

    if (MapObjectManager_NotEndMovement(MapObject_GetManager(object)) == FALSE || (mode = (u32)(*attrs << 25) >> 29, mode == 0)) {
        return;
    }
    if (mode == 2) {
        u16 prevBehavior = sub_0205F524(object);

        if (MetatileBehavior_IsTallGrass(behavior) == TRUE || MetatileBehavior_IsVeryTallGrass(behavior) == TRUE || MetatileBehavior_IsTallGrass(prevBehavior) == TRUE || MetatileBehavior_IsVeryTallGrass(prevBehavior) == TRUE || sub_02060E54(object, behavior) == TRUE || MetatileBehavior_IsPuddle(behavior) == TRUE || MetatileBehavior_IsShallowWater(behavior) == TRUE || sub_02060EBC(object, behavior) == TRUE || MetatileBehavior_IsMud(behavior) == TRUE || MetatileBehavior_IsReflective(behavior) != FALSE) {
            MapObject_SetFlagsBits(object, MAPOBJECTFLAG_UNK20);
        } else {
            MapObject_ClearFlagsBits(object, MAPOBJECTFLAG_UNK20);
        }
    } else {
        if (MetatileBehavior_IsTallGrass(behavior) == TRUE || MetatileBehavior_IsVeryTallGrass(behavior) == TRUE || sub_02060E54(object, behavior) == TRUE || MetatileBehavior_IsPuddle(behavior) == TRUE || MetatileBehavior_IsShallowWater(behavior) == TRUE || sub_02060EBC(object, behavior) == TRUE || MetatileBehavior_IsMud(behavior) == TRUE || MetatileBehavior_IsReflective(behavior) != FALSE) {
            MapObject_SetFlagsBits(object, MAPOBJECTFLAG_UNK20);
        } else {
            MapObject_ClearFlagsBits(object, MAPOBJECTFLAG_UNK20);
        }
    }
}
