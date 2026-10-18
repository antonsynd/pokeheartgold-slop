#include "global.h"

#include "map_object.h"
#include "overlay_01_021F944C.h"

typedef struct UnkStruct_0206402C {
    u32 unk0;
    u8 filler_04[4];
    Sprite *sprite;
    u8 unkC[4];
} UnkStruct_0206402C;

int ov01_021F94C0(LocalMapObject *object, Sprite **sprite, int id);
void ov01_021F9630(Sprite *sprite, void *a1);

void sub_0206402C(LocalMapObject *object) {
    UnkStruct_0206402C *data = (UnkStruct_0206402C *)sub_0205F40C(object);

    if (ov01_021FA2D4(object) == TRUE) {
        return;
    }
    if (data->sprite == NULL) {
        if (data->unk0 != 0xFFFF) {
            ov01_021F94C0(object, &data->sprite, data->unk0);
        } else {
            GF_ASSERT(FALSE);
        }
    }
    if (data->sprite != NULL) {
        ov01_021F9630(data->sprite, data->unkC);
        ov01_021FA3E8(object, data->sprite);
        MapObject_ClearFlagsBits(object, MAPOBJECTFLAG_UNK21);
    }
}
