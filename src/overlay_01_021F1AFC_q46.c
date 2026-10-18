#include "global.h"

#include "map_object.h"
#include "overlay_01.h"
#include "unk_02062108.h"

typedef struct Ov01_021F2830 {
    u16 state;
    u16 unk02;
    void *unk04;
    int unk08;
    u8 filler_0C[8];
    LocalMapObject *object;
    void *unk18;
    u8 filler_1C[0x10];
    void *unk2C;
} Ov01_021F2830;

int sub_02060FA8(LocalMapObject *object, u32 direction);
u32 sub_0206234C(void *a0, int a1);
void ov01_021FEB30(void *a0, int a1);
void ov02_0224D9B8(void *a0);

int ov01_021F2830(Ov01_021F2830 *a0) {
    u32 direction;

    if (!MapObject_IsMovementPaused(a0->object)) {
        return 0;
    }
    direction = MapObject_GetNextFacingDirection(a0->object);
    if (MetatileBehavior_IsRockClimbInDirection((u8)sub_02060FA8(a0->object, direction), direction) == TRUE) {
        a0->state = a0->unk02;
        return 2;
    }
    MapObject_SetHeldMovement(a0->object, sub_0206234C(a0->unk04, 0x34));
    a0->unk08 = 0;
    a0->state++;
    ov01_021FEB30(a0->unk18, 0);
    ov02_0224D9B8(a0->unk2C);
    a0->unk2C = NULL;
    return 0;
}
