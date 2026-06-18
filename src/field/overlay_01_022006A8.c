#include "global.h"

#include "map_object.h"

typedef struct {
    void *unk0;
} UnkManager_022006A8;

typedef struct {
    FieldSystem *fieldSystem;
    FieldSystem *unk4;
    void *unk8;
    LocalMapObject *mapObject;
} UnkData_022006A8;

typedef struct {
    int unk0;
    u32 unk4;
    u32 unk8;
    u8 unkC[4];
    UnkData_022006A8 unk10;
    void *unk20;
} UnkWork_022006A8;

typedef BOOL (*UnkCb1_022006A8)(void *, UnkWork_022006A8 *);
typedef void (*UnkCb2_022006A8)(void *, UnkWork_022006A8 *);

typedef struct {
    int unk0;
    UnkCb1_022006A8 unk4;
    UnkCb1_022006A8 unk8;
    UnkCb2_022006A8 unkC;
    UnkCb2_022006A8 unk10;
} UnkTemplate_022006A8;

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
} UnkConfig_022006A8;

extern UnkManager_022006A8 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(UnkManager_022006A8 *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern void *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void ov01_021F1620(FieldSystem *fieldSystem, const UnkTemplate_022006A8 *a1, VecFx32 *a2, int a3, UnkData_022006A8 *a4, int a5);
extern void ov01_021F1640(int a0);
extern void *ov01_021F1740(FieldSystem *fieldSystem, int a1, VecFx32 *a2);
extern void ov01_021F1758(void *a0, int a1, int a2, int a3, int a4, int a5, const UnkConfig_022006A8 *a6);
extern void ov01_021F18C8(void *a0, int a1);
extern void ov01_021F18D4(void *a0, int a1, int a2);
extern void ov01_021F18FC(void *a0, int a1);
extern void ov01_021F1930(void *a0, int a1, int a2, int a3);
extern void ov01_021F1970(void *a0, int a1);

extern UnkData_022006A8 *sub_02068D98(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern BOOL sub_02023DA4(void *a0);
extern void sub_02023E50(void *a0, VecFx32 *a1);

UnkManager_022006A8 *ov01_022006A8(void *a0);
void ov01_022006C4(UnkManager_022006A8 *manager);
static void ov01_022006D4(UnkManager_022006A8 *manager);
static void ov01_02200710(UnkManager_022006A8 *manager);
void ov01_02200730(LocalMapObject *mapObject);
static BOOL ov01_02200780(void *param0, UnkWork_022006A8 *work);
static BOOL ov01_022007D0(void *param0, UnkWork_022006A8 *work);
static void ov01_022007DC(void *param0, UnkWork_022006A8 *work);
static void ov01_022007F8(void *param0, UnkWork_022006A8 *work);

static const UnkTemplate_022006A8 ov01_02209308 = {
    sizeof(UnkWork_022006A8),
    ov01_02200780,
    ov01_022007D0,
    ov01_022007DC,
    ov01_022007F8,
};

static const UnkConfig_022006A8 ov01_0220931C = {
    0,
    1,
    1,
    0,
    0,
    2,
};

UnkManager_022006A8 *ov01_022006A8(void *a0) {
    UnkManager_022006A8 *manager = ov01_021F1430(a0, sizeof(UnkManager_022006A8), 0, 0);
    manager->unk0 = a0;
    ov01_022006D4(manager);
    return manager;
}

void ov01_022006C4(UnkManager_022006A8 *manager) {
    ov01_02200710(manager);
    ov01_021F1448(manager);
}

static void ov01_022006D4(UnkManager_022006A8 *manager) {
    ov01_021F18D4(manager->unk0, 4, 0x78);
    ov01_021F1930(manager->unk0, 3, 0x13, 1);
    ov01_021F1758(manager->unk0, 4, 4, 0, 3, 0, &ov01_0220931C);
}

static void ov01_02200710(UnkManager_022006A8 *manager) {
    ov01_021F18FC(manager->unk0, 4);
    ov01_021F1970(manager->unk0, 3);
    ov01_021F18C8(manager->unk0, 4);
}

void ov01_02200730(LocalMapObject *mapObject) {
    UnkData_022006A8 data;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.fieldSystem = MapObject_GetFieldSystem(mapObject);
    data.unk4 = fieldSystem;
    data.unk8 = ov01_021F1450(fieldSystem, 0x15);
    {
        VecFx32 vec = { 0, 0, 0 };
        data.mapObject = mapObject;
        ov01_021F1620(fieldSystem, &ov01_02209308, &vec, 0, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
    }
}

static BOOL ov01_02200780(void *param0, UnkWork_022006A8 *work) {
    VecFx32 vec = { 0, 0, 0 };
    work->unk10 = *sub_02068D98(param0);
    work->unk4 = MapObject_GetID(work->unk10.mapObject);
    work->unk8 = MapObject_GetMapID(work->unk10.mapObject);
    sub_02068DA8(param0, &vec);
    work->unk20 = ov01_021F1740(work->unk10.unk4, 4, &vec);
    return TRUE;
}

static BOOL ov01_022007D0(void *param0, UnkWork_022006A8 *work) {
    return sub_02023DA4(work->unk20);
}

static void ov01_022007DC(void *param0, UnkWork_022006A8 *work) {
    if (sub_0205F0A8(work->unk10.mapObject, work->unk4, work->unk8) == 0) {
        ov01_021F1640((int)param0);
    }
}

static void ov01_022007F8(void *param0, UnkWork_022006A8 *work) {
    VecFx32 pos;
    VecFx32 facing;
    LocalMapObject *mapObject = work->unk10.mapObject;
    if (sub_0205F0A8(mapObject, work->unk4, work->unk8) == 0) {
        ov01_021F1640((int)param0);
        return;
    }
    MapObject_CopyPositionVector(mapObject, &pos);
    MapObject_CopyFacingVector(mapObject, &facing);
    pos.x += facing.x;
    pos.y += facing.y;
    pos.z += facing.z;
    pos.z += 3 << 0xe;
    sub_02023E50(work->unk20, &pos);
}
