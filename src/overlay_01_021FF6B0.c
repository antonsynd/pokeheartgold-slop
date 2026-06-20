#include "overlay_01_021FF6B0.h"

#include "global.h"

#include "map_object.h"

struct UnkOv01_021FF6B0 {
    void *unk0;
};

typedef struct {
    FieldSystem *unk0;
    FieldSystem *unk4;
    UnkOv01_021FF6B0 *unk8;
    LocalMapObject *unkC;
} UnkOv01_021FF6B0_Data;

typedef struct {
    int unk0;
    u32 unk4;
    u32 unk8;
    int unkC;
    UnkOv01_021FF6B0_Data unk10;
    void *unk20;
} UnkOv01_021FF6B0_Work;

typedef BOOL (*UnkOv01_021FF6B0_Cb1)(void *, UnkOv01_021FF6B0_Work *);
typedef void (*UnkOv01_021FF6B0_Cb2)(void *, UnkOv01_021FF6B0_Work *);

typedef struct {
    u32 unk0;
    UnkOv01_021FF6B0_Cb1 unk4;
    UnkOv01_021FF6B0_Cb1 unk8;
    UnkOv01_021FF6B0_Cb2 unkC;
    UnkOv01_021FF6B0_Cb2 unk10;
} UnkOv01_021FF6B0_Template;

extern UnkOv01_021FF6B0 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_021FF6B0 *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FF6B0_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FF6B0_Data *a4, int a5);
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

extern UnkOv01_021FF6B0_Data *sub_02068D98(void *a0);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_020611C8(u32 x, u32 y, VecFx32 *a2);
extern BOOL sub_02023DA4(void *a0);
extern void sub_02023E50(void *a0, VecFx32 *a1);
extern void sub_02023F04(void *a0, int a1);
extern int sub_02023F70(void *a0);

static void ov01_021FF6DC(UnkOv01_021FF6B0 *manager);
static void ov01_021FF724(UnkOv01_021FF6B0 *manager);
static BOOL ov01_021FF7B0(void *param0, UnkOv01_021FF6B0_Work *work);
static BOOL ov01_021FF7F4(void *param0, UnkOv01_021FF6B0_Work *work);
static void ov01_021FF800(void *param0, UnkOv01_021FF6B0_Work *work);
static void ov01_021FF830(void *param0, UnkOv01_021FF6B0_Work *work);

static const UnkOv01_021FF6B0_Template ov01_022091EC = {
    sizeof(UnkOv01_021FF6B0_Work), ov01_021FF7B0, ov01_021FF7F4, ov01_021FF800, ov01_021FF830
};

static const u32 ov01_02209200[] = { 0, 9, 1, 0, 0, 2 };

UnkOv01_021FF6B0 *ov01_021FF6B0(void *a0) {
    UnkOv01_021FF6B0 *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FF6B0), 0, 0);
    manager->unk0 = a0;
    ov01_021FF6DC(manager);
    return manager;
}

void ov01_021FF6CC(UnkOv01_021FF6B0 *manager) {
    ov01_021FF724(manager);
    ov01_021F1448(manager);
}

static void ov01_021FF6DC(UnkOv01_021FF6B0 *manager) {
    ov01_021F18D4(manager->unk0, 6, 0x79);
    ov01_021F1908(manager->unk0, 6, 0x91);
    ov01_021F1930(manager->unk0, 7, 0x14, 1);
    ov01_021F1758(manager->unk0, 8, 6, 6, 7, 0, ov01_02209200);
}

static void ov01_021FF724(UnkOv01_021FF6B0 *manager) {
    ov01_021F18FC(manager->unk0, 6);
    ov01_021F1924(manager->unk0, 6);
    ov01_021F1970(manager->unk0, 7);
    ov01_021F18C8(manager->unk0, 8);
}

void *ov01_021FF74C(LocalMapObject *mapObject) {
    UnkOv01_021FF6B0_Data data;
    VecFx32 position;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.unk0 = MapObject_GetFieldSystem(mapObject);
    data.unk4 = fieldSystem;
    data.unk8 = ov01_021F1450(fieldSystem, 0xb);
    data.unkC = mapObject;
    MapObject_CopyPositionVector(mapObject, &position);
    sub_020611C8(MapObject_GetXCoord(mapObject), MapObject_GetZCoord(mapObject), &position);
    return ov01_021F1620(fieldSystem, &ov01_022091EC, &position, 0, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static BOOL ov01_021FF7B0(void *param0, UnkOv01_021FF6B0_Work *work) {
    VecFx32 vec;
    work->unk10 = *sub_02068D98(param0);
    work->unk4 = MapObject_GetID(work->unk10.unkC);
    work->unk8 = MapObject_GetMapID(work->unk10.unkC);
    sub_02068DB8(param0, &vec);
    work->unk20 = ov01_021F1740(work->unk10.unk4, 8, &vec);
    return TRUE;
}

static BOOL ov01_021FF7F4(void *param0, UnkOv01_021FF6B0_Work *work) {
    return sub_02023DA4(work->unk20);
}

static void ov01_021FF800(void *param0, UnkOv01_021FF6B0_Work *work) {
    if (work->unk0 == 0) {
        sub_02023F04(work->unk20, 0x1000);
        if (sub_02023F70(work->unk20) / 0x1000 >= 9) {
            ov01_021F1640(param0);
        }
    }
}

static void ov01_021FF830(void *param0, UnkOv01_021FF6B0_Work *work) {
    VecFx32 vec;
    sub_02068DB8(param0, &vec);
    vec.z += 2 << 0xe;
    sub_02023E50(work->unk20, &vec);
}
