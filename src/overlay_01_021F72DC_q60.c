#include "global.h"

#include "map_object.h"

typedef struct Ov01_021F8A4C {
    s8 facingDirection;
    u8 filler_1;
    u8 unk2;
    u8 filler_3;
    void *unk4;
} Ov01_021F8A4C;

BOOL ov01_021FA2D4(LocalMapObject *object);
int ov01_021FA44C(u32 direction);
void sub_02023EE0(void *a0, int a1);
void sub_02023F40(void *a0, int a1);
void sub_02023F04(void *a0, fx32 a1);
void ov01_021FA3E8(LocalMapObject *object, void *a1);
void ov01_021F8C88(LocalMapObject *object, void *a1);

void ov01_021F8A4C(LocalMapObject *object) {
    Ov01_021F8A4C *data = (Ov01_021F8A4C *)sub_0205F40C(object);
    void *anim = data->unk4;
    u32 direction;

    if (ov01_021FA2D4(object) == TRUE || anim == NULL) {
        return;
    }
    direction = MapObject_GetFacingDirection(object);
    if (direction != data->facingDirection) {
        sub_02023EE0(anim, ov01_021FA44C(direction));
        sub_02023F40(anim, 0);
    }
    sub_02023F04(anim, FX32_ONE);
    ov01_021FA3E8(object, anim);
    ov01_021F8C88(object, anim);
    data->facingDirection = direction;
    data->unk2 = sub_0205F330(object);
}
