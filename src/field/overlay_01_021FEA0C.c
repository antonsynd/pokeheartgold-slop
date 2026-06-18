#include "overlay_01_021FEA0C.h"

#include "global.h"

#include "map_object.h"

typedef struct {
    u8 unk0[0xc];
    NNSG3dResMdl *unkC;
    u8 unk10[4];
} UnkOv01_021FEA0C_sub;

typedef struct {
    s32 unk0;
    u32 unk4;
    u8 unk8[8];
    void *unk10;
    UnkOv01_021FEA0C_sub unk14;
    NNSG3dRenderObj unk28;
} UnkOv01_021FEA0C;

typedef struct {
    int unk0;
    FieldSystem *unk4;
    void *unk8;
    UnkOv01_021FEA0C *manager;
    LocalMapObject *mapObject;
} UnkOv01_021FEA0C_Data;

typedef struct {
    u32 state;
    u32 unk4;
    u32 unk8;
    void *unkC;
    UnkOv01_021FEA0C_Data data;
} UnkOv01_021FEA0C_Work;

typedef BOOL (*UnkOv01_021FEA0C_Cb1)(void *, UnkOv01_021FEA0C_Work *);
typedef void (*UnkOv01_021FEA0C_Cb2)(void *, UnkOv01_021FEA0C_Work *);

typedef struct {
    int unk0;
    UnkOv01_021FEA0C_Cb1 unk4;
    UnkOv01_021FEA0C_Cb1 unk8;
    UnkOv01_021FEA0C_Cb2 unkC;
    UnkOv01_021FEA0C_Cb2 unk10;
} UnkOv01_021FEA0C_Template;

extern void *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_021FEA0C *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FEA0C_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FEA0C_Data *a4, int a5);
extern void ov01_021F19F4(void *a0, UnkOv01_021FEA0C_sub *a1, int a2, int a3, int a4);

extern UnkOv01_021FEA0C_Data *sub_02068D98(void *a0);
extern void *sub_02068D74(void *a0);
extern void *sub_02068D90(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_02069784(UnkOv01_021FEA0C_sub *a0);
extern void sub_02069978(NNSG3dRenderObj *a0, UnkOv01_021FEA0C_sub *a1);
extern void sub_020699AC(NNSG3dRenderObj *a0, VecFx32 *a1, VecFx32 *a2, MtxFx33 *a3);
extern void sub_0206121C(void *a0, VecFx32 *a1);
extern void sub_02020DA4(MtxFx33 *rotation, u16 xAngle, u16 yAngle, u16 zAngle);

static void ov01_021FEA30(UnkOv01_021FEA0C *manager);
static void ov01_021FEA38(UnkOv01_021FEA0C *manager);
static void ov01_021FEA48(UnkOv01_021FEA0C *manager);
static void ov01_021FEA7C(UnkOv01_021FEA0C *manager);
static void ov01_021FEA90(UnkOv01_021FEA0C *manager);
static void ov01_021FEAA0(UnkOv01_021FEA0C *manager);
static BOOL ov01_021FEB3C(void *param0, UnkOv01_021FEA0C_Work *work);
static BOOL ov01_021FEB78(void *param0, UnkOv01_021FEA0C_Work *work);
static void ov01_021FEB8C(void *param0, UnkOv01_021FEA0C_Work *work);
static void ov01_021FEBC0(void *param0, UnkOv01_021FEA0C_Work *work);

static const VecFx32 ov01_022090F0 = { 0x1000, 0x1000, 0x1000 };

static const UnkOv01_021FEA0C_Template ov01_022090FC = {
    0x24, ov01_021FEB3C, ov01_021FEB78, ov01_021FEB8C, ov01_021FEBC0
};

void *ov01_021FEA0C(void *a0) {
    UnkOv01_021FEA0C *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FEA0C), 0, 0);
    manager->unk10 = a0;
    return manager;
}

void ov01_021FEA20(void *a0) {
    UnkOv01_021FEA0C *manager = a0;
    ov01_021FEA7C(manager);
    ov01_021F1448(manager);
}

static void ov01_021FEA30(UnkOv01_021FEA0C *manager) {
    manager->unk0++;
}

static void ov01_021FEA38(UnkOv01_021FEA0C *manager) {
    GF_ASSERT(--manager->unk0 >= 0);
}

static void ov01_021FEA48(UnkOv01_021FEA0C *manager) {
    if (manager->unk4 == 0) {
        ov01_021F19F4(manager->unk10, &manager->unk14, 0, 0x57, 1);
        sub_02069978(&manager->unk28, &manager->unk14);
        manager->unk4 = 1;
    }
}

static void ov01_021FEA7C(UnkOv01_021FEA0C *manager) {
    if (manager->unk4 == 1) {
        manager->unk4 = 0;
        sub_02069784(&manager->unk14);
    }
}

static void ov01_021FEA90(UnkOv01_021FEA0C *manager) {
    if (manager->unk0 == 0) {
        ov01_021FEA48(manager);
    }
}

static void ov01_021FEAA0(UnkOv01_021FEA0C *manager) {
    if (manager->unk0 == 0) {
        ov01_021FEA7C(manager);
    }
}

void ov01_021FEAB0(LocalMapObject *mapObject, int a1, int a2, int a3, int a4) {
    UnkOv01_021FEA0C_Data data;
    VecFx32 position;
    FieldSystem *fieldSystem;
    position.x = 0;
    position.y = 0;
    position.z = 0;
    fieldSystem = ov01_021F146C(mapObject);
    data.unk4 = fieldSystem;
    data.unk0 = a3;
    data.unk8 = MapObject_GetFieldSystem(mapObject);
    data.manager = ov01_021F1450(fieldSystem, 5);
    data.mapObject = mapObject;
    if (a4 == 0) {
        position.x = (a1 << 16) + (2 << 14);
        position.z = (a2 << 16) + (2 << 14);
        sub_0206121C(data.unk8, &position);
    } else {
        MapObject_CopyPositionVector(mapObject, &position);
    }
    ov01_021F1620(fieldSystem, &ov01_022090FC, &position, a4, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

void ov01_021FEB30(void *a0, void *a1) {
    ((UnkOv01_021FEA0C_Work *)sub_02068D74(a0))->unkC = a1;
}

static BOOL ov01_021FEB3C(void *param0, UnkOv01_021FEA0C_Work *work) {
    UnkOv01_021FEA0C_Data *data = sub_02068D98(param0);
    work->data = *data;
    work->unk4 = data->unk0;
    work->unkC = sub_02068D90(param0);
    ov01_021FEA90(work->data.manager);
    ov01_021FEA30(work->data.manager);
    return TRUE;
}

static BOOL ov01_021FEB78(void *param0, UnkOv01_021FEA0C_Work *work) {
    ov01_021FEA38(work->data.manager);
    ov01_021FEAA0(work->data.manager);
}

static void ov01_021FEB8C(void *param0, UnkOv01_021FEA0C_Work *work) {
    VecFx32 vec;
    VecFx32 position;
    LocalMapObject *mapObject = work->data.mapObject;
    if (work->unkC != 0) {
        vec.x = 0;
        vec.y = 0;
        vec.z = 0;
        sub_0205F9A0(mapObject, &vec);
        MapObject_CopyPositionVector(mapObject, &position);
        sub_02068DA8(param0, &position);
    }
}

static void ov01_021FEBC0(void *param0, UnkOv01_021FEA0C_Work *work) {
    MtxFx33 rotation;
    VecFx32 translation;
    VecFx32 scale;
    int angle;
    NNSG3dRenderObj *renderObj;
    if (work->state == 1) {
        return;
    }
    work->unk8++;
    scale = ov01_022090F0;
    angle = 0;
    renderObj = &work->data.manager->unk28;
    switch (work->unk4) {
    case 0:
        angle = 0xB4;
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
