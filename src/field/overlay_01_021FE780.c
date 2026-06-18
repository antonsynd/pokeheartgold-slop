#include "overlay_01_021FE780.h"

#include "global.h"

#include "map_object.h"

typedef struct {
    u8 unk0[0xc];
    NNSG3dResMdl *unkC;
    u8 unk10[4];
} UnkOv01_021FE780_sub;

typedef struct UnkOv01_021FE780 {
    void *unk0;
    UnkOv01_021FE780_sub unk4;
    NNSG3dRenderObj unk18;
} UnkOv01_021FE780;

typedef struct {
    int unk0;
    FieldSystem *unk4;
    UnkOv01_021FE780 *unk8;
    LocalMapObject *unkC;
} UnkOv01_021FE780_Data;

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    void *unk18;
    fx32 unk1c;
    fx32 unk20;
    UnkOv01_021FE780_Data data;
} UnkOv01_021FE780_Work;

typedef BOOL (*UnkOv01_021FE780_Cb1)(void *, UnkOv01_021FE780_Work *);
typedef void (*UnkOv01_021FE780_Cb2)(void *, UnkOv01_021FE780_Work *);

typedef struct {
    int unk0;
    UnkOv01_021FE780_Cb1 unk4;
    UnkOv01_021FE780_Cb1 unk8;
    UnkOv01_021FE780_Cb2 unkC;
    UnkOv01_021FE780_Cb2 unk10;
} UnkOv01_021FE780_Template;

extern UnkOv01_021FE780 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_021FE780 *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FE780_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FE780_Data *a4, int a5);
extern void ov01_021F1640(int a0);
extern void ov01_021F19F4(void *a0, UnkOv01_021FE780_sub *a1, int a2, int a3, int a4);

extern UnkOv01_021FE780_Data *sub_02068D98(void *a0);
extern void *sub_02068D74(void *a0);
extern void *sub_02068D90(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_02069784(UnkOv01_021FE780_sub *a0);
extern void sub_02069978(NNSG3dRenderObj *a0, UnkOv01_021FE780_sub *a1);
extern void sub_020699AC(NNSG3dRenderObj *a0, VecFx32 *a1, VecFx32 *a2, MtxFx33 *a3);
extern void sub_0206121C(void *a0, VecFx32 *a1);
extern void sub_02020DA4(MtxFx33 *rotation, u16 xAngle, u16 yAngle, u16 zAngle);

UnkOv01_021FE780 *ov01_021FE780(void *a0);
void ov01_021FE79C(UnkOv01_021FE780 *manager);
static void ov01_021FE7AC(UnkOv01_021FE780 *manager);
static void ov01_021FE7D0(UnkOv01_021FE780 *manager);
static BOOL ov01_021FE868(void *param0, UnkOv01_021FE780_Work *work);
static BOOL ov01_021FE8B0(void *param0, UnkOv01_021FE780_Work *work);
static void ov01_021FE8C8(void *param0, UnkOv01_021FE780_Work *work);
static void ov01_021FE970(void *param0, UnkOv01_021FE780_Work *work);
void ov01_021FE9F4(void *param0, void *a1);

static const VecFx32 ov01_022090D0 = { 0, 0x4000, 0x4000 };

static const VecFx32 ov01_022090C4 = { 0x1000, 0x1000, 0x1000 };

static const UnkOv01_021FE780_Template ov01_022090DC = {
    0x34, ov01_021FE868, ov01_021FE8B0, ov01_021FE8C8, ov01_021FE970
};

UnkOv01_021FE780 *ov01_021FE780(void *a0) {
    UnkOv01_021FE780 *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FE780), 0, 0);
    manager->unk0 = a0;
    ov01_021FE7AC(manager);
    return manager;
}

void ov01_021FE79C(UnkOv01_021FE780 *manager) {
    ov01_021FE7D0(manager);
    ov01_021F1448(manager);
}

static void ov01_021FE7AC(UnkOv01_021FE780 *manager) {
    ov01_021F19F4(manager->unk0, &manager->unk4, 0, 0x56, 0);
    sub_02069978(&manager->unk18, &manager->unk4);
}

static void ov01_021FE7D0(UnkOv01_021FE780 *manager) {
    sub_02069784(&manager->unk4);
}

u32 ov01_021FE7DC(LocalMapObject *obj, u32 x, u32 y, u32 dir, u32 a4) {
    UnkOv01_021FE780_Data data;
    VecFx32 position = { 0, 0, 0 };

    data.unk0 = dir;
    data.unk4 = ov01_021F146C(obj);
    data.unk8 = ov01_021F1450(data.unk4, 4);
    data.unkC = obj;
    if (a4 == 0) {
        FieldSystem *fieldSystem = MapObject_GetFieldSystem(obj);
        position.x = (x << 16) + (2 << 14);
        position.z = (y << 16) + (2 << 14);
        sub_0206121C(fieldSystem, &position);
    } else {
        VecFx32 offset = ov01_022090D0;
        MapObject_CopyPositionVector(obj, &position);
        sub_0205F9A0(obj, &offset);
    }
    return (u32)ov01_021F1620(data.unk4, &ov01_022090DC, &position, a4, &data, MapObject_GetPriorityPlusValue(obj, 2));
}

static BOOL ov01_021FE868(void *param0, UnkOv01_021FE780_Work *work) {
    UnkOv01_021FE780_Data *data = sub_02068D98(param0);
    LocalMapObject *mapObject = data->unkC;
    work->data = *data;
    work->unkC = MapObject_GetID(mapObject);
    work->unk10 = MapObject_GetMapID(mapObject);
    work->unk8 = data->unk0;
    work->unk18 = sub_02068D90(param0);
    work->unk1c = 0x1000;
    work->unk20 = 0x400;
    return TRUE;
}

static BOOL ov01_021FE8B0(void *param0, UnkOv01_021FE780_Work *work) {
    LocalMapObject *mapObject = work->data.unkC;
    VecFx32 vec = { 0, 0, 0 };
    sub_0205F9A0(mapObject, &vec);
}

static void ov01_021FE8C8(void *param0, UnkOv01_021FE780_Work *work) {
    VecFx32 vec;
    VecFx32 position;
    LocalMapObject *mapObject = work->data.unkC;
    if (sub_0205F0A8(mapObject, work->unkC, work->unk10) == 0) {
        ov01_021F1640((int)param0);
        return;
    }
    work->unk0 = 0;
    work->unk4 = MapObject_GetFacingDirection(mapObject);
    if (work->unk4 == (u32)-1) {
        work->unk0 = 1;
        return;
    }
    if (work->unk18 != NULL) {
        work->unk8 = work->unk4;
        work->unk1c += work->unk20;
        if (work->unk1c >= (1 << 0xe)) {
            work->unk1c = 1 << 0xe;
            work->unk20 = -work->unk20;
        } else if (work->unk1c <= ((1 << 0xe) >> 2)) {
            work->unk1c = (1 << 0xe) >> 2;
            work->unk20 = -work->unk20;
        }
        vec.x = 0;
        vec.y = work->unk1c + (1 << 0xe);
        vec.z = 1 << 0xe;
        sub_0205F9A0(mapObject, &vec);
        MapObject_CopyPositionVector(mapObject, &position);
        position.y += work->unk1c - (1 << 0xc);
        sub_02068DA8(param0, &position);
    }
}

static void ov01_021FE970(void *param0, UnkOv01_021FE780_Work *work) {
    MtxFx33 rotation;
    VecFx32 translation;
    VecFx32 scale;
    int angle;
    NNSG3dRenderObj *renderObj;
    if (work->unk0 == 1) {
        return;
    }
    if (work->unk8 == (u32)-1) {
        return;
    }
    work->unk14++;
    scale = ov01_022090C4;
    angle = 0;
    renderObj = &work->data.unk8->unk18;
    switch (work->unk8) {
    case 0:
        angle = 0xB4;
        break;
    case 1:
        break;
    case 2:
        angle = 0x10E;
        break;
    case 3:
        angle = 0x5A;
        break;
    }
    sub_02020DA4(&rotation, 0, angle, 0);
    sub_02068DB8(param0, &translation);
    sub_020699AC(renderObj, &translation, &scale, &rotation);
}

void ov01_021FE9F4(void *param0, void *a1) {
    UnkOv01_021FE780_Work *work = sub_02068D74(param0);
    work->unk18 = a1;
    work->unk1c = 0x1000;
    work->unk20 = 0x400;
}
