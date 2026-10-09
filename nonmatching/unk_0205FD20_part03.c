#include "global.h"

#include "map_object.h"

extern fx32 sub_02054940(FieldSystem *fieldSystem, fx32 y, fx32 x, fx32 z, u8 *outSelector);

int sub_02061200(int x, int y, int targetX, int targetY);
BOOL sub_0206121C(FieldSystem *fieldSystem, VecFx32 *position);
BOOL sub_02061248(FieldSystem *fieldSystem, VecFx32 *position, BOOL allowSelector2);

int sub_02061200(int x, int y, int targetX, int targetY) {
    if (x > targetX) {
        return 2;
    }
    if (x < targetX) {
        return 3;
    }
    if (y > targetY) {
        return 0;
    }
    return 1;
}

BOOL sub_0206121C(FieldSystem *fieldSystem, VecFx32 *position) {
    u8 selector;
    fx32 height = sub_02054940(fieldSystem, position->y, position->x, position->z, &selector);
    if (selector == 0) {
        return FALSE;
    }
    position->y = height;
    return TRUE;
}

BOOL sub_02061248(FieldSystem *fieldSystem, VecFx32 *position, BOOL allowSelector2) {
    u8 selector;
    fx32 height = sub_02054940(fieldSystem, position->y, position->x, position->z, &selector);
    if (selector == 0) {
        return FALSE;
    }
    if (selector == 2 && allowSelector2 == 0) {
        return FALSE;
    }
    position->y = height;
    return TRUE;
}
