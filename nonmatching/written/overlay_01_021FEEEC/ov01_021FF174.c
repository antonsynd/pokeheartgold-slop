#include "global.h"

typedef struct {
    int x;
    int y;
    int z;
    void *fieldSystem;
    void *unk10;
    u32 unk14;
    void *mapObj;
    u32 unk1C;
    u32 unk20;
} UnkStruct_ov01_021FF174_Args;

typedef struct {
    u32 state;
    u32 spriteId;
    u32 id;
    u32 mapId;
    u32 unk10;
    u32 unk14;
    UnkStruct_ov01_021FF174_Args args;
    void *sprite;
} UnkStruct_ov01_021FF174;

UnkStruct_ov01_021FF174_Args *sub_02068D98(void *mgr);
u32 MapObject_GetSpriteID(void *obj);
u32 MapObject_GetID(void *obj);
u32 MapObject_GetMapID(void *obj);
fx32 MapObject_GetPositionVectorYCoord(void *obj);
u32 sub_0206121C(void *fieldSystem, VecFx32 *pos);
void sub_02068DA8(void *mgr, VecFx32 *pos);
void *ov01_021F1740(void *a0, int a1, VecFx32 *pos);
BOOL MapObject_TestFlagsBits(void *obj, u32 bits);
void sub_02023EA4(void *sprite, int arg1);
u32 sub_02068D90(void *mgr);
void sub_02023F1C(void *sprite, fx32 val);

int ov01_021FF174(void *mgr, UnkStruct_ov01_021FF174 *data) {
    VecFx32 pos;
    data->args = *sub_02068D98(mgr);
    data->spriteId = MapObject_GetSpriteID(data->args.mapObj);
    data->id = MapObject_GetID(data->args.mapObj);
    data->mapId = MapObject_GetMapID(data->args.mapObj);
    pos.x = data->args.x << 16;
    pos.z = data->args.z << 16;
    pos.y = MapObject_GetPositionVectorYCoord(data->args.mapObj);
    data->unk14 = sub_0206121C(data->args.fieldSystem, &pos);
    pos.x += 0x8000;
    pos.z += 0x12000;
    sub_02068DA8(mgr, &pos);
    data->sprite = ov01_021F1740(data->args.unk10, 0, &pos);
    if (MapObject_TestFlagsBits(data->args.mapObj, 0x200) == 1) {
        sub_02023EA4(data->sprite, 0);
    }
    if (sub_02068D90(mgr) == 0) {
        sub_02023F1C(data->sprite, 0xC000);
        data->state = 2;
    }
    return 1;
}
