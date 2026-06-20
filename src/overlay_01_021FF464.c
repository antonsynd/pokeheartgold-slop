#include "global.h"

#include "map_object.h"
#include "sprite.h"

typedef struct UnkOv01_021FF464 {
    void *unk0;
} UnkOv01_021FF464;

typedef struct {
    FieldSystem *unk0;
    FieldSystem *unk4;
    UnkOv01_021FF464 *unk8;
    LocalMapObject *unkC;
} UnkOv01_021FF464_Data;

typedef struct {
    int unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 unk10[4];
    UnkOv01_021FF464_Data unk14;
    Sprite *unk24;
} UnkOv01_021FF464_Work;

typedef BOOL (*UnkOv01_021FF464_Cb1)(void *, UnkOv01_021FF464_Work *);
typedef void (*UnkOv01_021FF464_Cb2)(void *, UnkOv01_021FF464_Work *);

typedef struct {
    u32 unk0;
    UnkOv01_021FF464_Cb1 unk4;
    UnkOv01_021FF464_Cb1 unk8;
    UnkOv01_021FF464_Cb2 unkC;
    UnkOv01_021FF464_Cb2 unk10;
} UnkOv01_021FF464_Template;

extern UnkOv01_021FF464 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern UnkOv01_021FF464 *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FF464_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FF464_Data *a4, int a5);
extern void ov01_021F1640(void *a0);
extern void *ov01_021F1740(FieldSystem *fieldSystem, int a1, VecFx32 *a2);
extern void ov01_021F1758(void *a0, int a1, int a2, int a3, int a4, int a5, const void *a6);
extern void ov01_021F18C8(void *a0, int a1);
extern void ov01_021F18D4(void *a0, int a1, int a2);
extern void ov01_021F18FC(void *a0, int a1);
extern void ov01_021F1908(void *a0, int a1, int a2);
extern void ov01_021F1924(void *a0, int a1);
extern void ov01_021F1930(void *a0, int a1, int a2, int a3);
extern void ov01_021F1970(void *a0, int a1);

extern UnkOv01_021FF464_Data *sub_02068D98(void *a0);
extern u32 sub_02068D90(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);

extern BOOL sub_02023DA4(Sprite *sprite);
extern void sub_02023E50(Sprite *sprite, VecFx32 *a1);
extern void sub_02023EA4(Sprite *sprite, int a1);
extern void sub_02023F04(Sprite *sprite, int a1);
extern void sub_02023F1C(Sprite *sprite, int a1);
extern int sub_02023F70(Sprite *sprite);

extern BOOL sub_0205F0F8(LocalMapObject *object, u32 spriteId, u32 objectId, u32 mapId);

UnkOv01_021FF464 *ov01_021FF464(void *a0);
void ov01_021FF480(UnkOv01_021FF464 *manager);
void *ov01_021FF4FC(LocalMapObject *mapObject, int a1);

static void ov01_021FF490(UnkOv01_021FF464 *manager);
static void ov01_021FF4D4(UnkOv01_021FF464 *manager);
static BOOL ov01_021FF54C(void *param0, UnkOv01_021FF464_Work *work);
static BOOL ov01_021FF5B8(void *param0, UnkOv01_021FF464_Work *work);
static void ov01_021FF5C4(void *param0, UnkOv01_021FF464_Work *work);
static void ov01_021FF658(void *param0, UnkOv01_021FF464_Work *work);

static const UnkOv01_021FF464_Template ov01_022091C0 = {
    sizeof(UnkOv01_021FF464_Work), ov01_021FF54C, ov01_021FF5B8, ov01_021FF5C4, ov01_021FF658
};

static const u32 ov01_022091D4[] = { 0, 0xC, 1, 0, 0, 2 };

UnkOv01_021FF464 *ov01_021FF464(void *a0) {
    UnkOv01_021FF464 *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FF464), 0, 0);
    manager->unk0 = a0;
    ov01_021FF490(manager);
    return manager;
}

void ov01_021FF480(UnkOv01_021FF464 *manager) {
    ov01_021FF4D4(manager);
    ov01_021F1448(manager);
}

static void ov01_021FF490(UnkOv01_021FF464 *manager) {
    ov01_021F18D4(manager->unk0, 3, 0x77);
    ov01_021F1908(manager->unk0, 2, 0x90);
    ov01_021F1930(manager->unk0, 2, 0x12, 1);
    ov01_021F1758(manager->unk0, 3, 3, 2, 2, 0, ov01_022091D4);
}

static void ov01_021FF4D4(UnkOv01_021FF464 *manager) {
    ov01_021F18FC(manager->unk0, 3);
    ov01_021F1924(manager->unk0, 2);
    ov01_021F1970(manager->unk0, 2);
    ov01_021F18C8(manager->unk0, 3);
}

void *ov01_021FF4FC(LocalMapObject *mapObject, int a1) {
    UnkOv01_021FF464_Data data;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.unk0 = MapObject_GetFieldSystem(mapObject);
    data.unk4 = fieldSystem;
    data.unk8 = ov01_021F1450(fieldSystem, 0xa);
    {
        VecFx32 vec = { 0, 0, 0 };
        data.unkC = mapObject;
        return ov01_021F1620(fieldSystem, &ov01_022091C0, &vec, a1, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
    }
}

static BOOL ov01_021FF54C(void *param0, UnkOv01_021FF464_Work *work) {
    VecFx32 vec = { 0, 0, 0 };
    work->unk14 = *sub_02068D98(param0);
    work->unk4 = MapObject_GetSpriteID(work->unk14.unkC);
    work->unk8 = MapObject_GetID(work->unk14.unkC);
    work->unkC = MapObject_GetMapID(work->unk14.unkC);
    sub_02068DA8(param0, &vec);
    work->unk24 = ov01_021F1740(work->unk14.unk4, 3, &vec);
    if (MapObject_TestFlagsBits(work->unk14.unkC, (MapObjectFlagBits)(2 << 8)) == 1) {
        sub_02023EA4(work->unk24, 0);
    }
    return TRUE;
}

static BOOL ov01_021FF5B8(void *param0, UnkOv01_021FF464_Work *work) {
    return sub_02023DA4(work->unk24);
}

static void ov01_021FF5C4(void *param0, UnkOv01_021FF464_Work *work) {
    int v;
    LocalMapObject *obj = work->unk14.unkC;
    if (sub_0205F0F8(obj, work->unk4, work->unk8, work->unkC) == 0) {
        ov01_021F1640(param0);
        return;
    }
    v = sub_02068D90(param0);
    if (v == 1 && MapObject_CheckFlag26(obj) == 0) {
        ov01_021F1640(param0);
        return;
    }
    if (MapObject_TestFlagsBits(obj, (MapObjectFlagBits)(2 << 8)) == 1) {
        sub_02023EA4(work->unk24, 0);
    } else {
        sub_02023EA4(work->unk24, 1);
    }
    if (work->unk0 == 0) {
        sub_02023F04(work->unk24, 1 << 0xc);
        if (sub_02023F70(work->unk24) / 0x1000 >= 0xc) {
            if (v == 0) {
                ov01_021F1640(param0);
                return;
            }
            sub_02023F1C(work->unk24, 0);
        }
    }
}

static void ov01_021FF658(void *param0, UnkOv01_021FF464_Work *work) {
    VecFx32 pos;
    VecFx32 facing;
    LocalMapObject *obj = work->unk14.unkC;
    if (sub_0205F0F8(obj, work->unk4, work->unk8, work->unkC) == 0) {
        ov01_021F1640(param0);
        return;
    }
    MapObject_CopyPositionVector(obj, &pos);
    MapObject_CopyFacingVector(obj, &facing);
    pos.x += facing.x;
    pos.z += facing.z;
    pos.z += 2 << 0xe;
    sub_02023E50(work->unk24, &pos);
}
