#include "global.h"

#include "map_object.h"

typedef struct {
    u8 unk0[0xc];
    NNSG3dResMdl *unkC;
    u8 unk10[4];
} UnkOv01_021FED9C_subA;

typedef struct {
    u8 unk0[0x24];
} UnkOv01_021FED9C_subB;

typedef struct UnkOv01_021FED9C {
    void *unk0;
    UnkOv01_021FED9C_subA unk4;
    UnkOv01_021FED9C_subB unk18;
} UnkOv01_021FED9C;

typedef struct {
    FieldSystem *fieldSystem;
    UnkOv01_021FED9C *manager;
} UnkOv01_021FED9C_Data;

typedef struct {
    UnkOv01_021FED9C_subB unk0;
    NNSG3dRenderObj unk24;
    FieldSystem *unk78;
    UnkOv01_021FED9C *unk7c;
} UnkOv01_021FED9C_Work;

typedef BOOL (*UnkOv01_021FED9C_Cb1)(void *, UnkOv01_021FED9C_Work *);
typedef void (*UnkOv01_021FED9C_Cb2)(void *, UnkOv01_021FED9C_Work *);

typedef struct {
    int unk0;
    UnkOv01_021FED9C_Cb1 unk4;
    UnkOv01_021FED9C_Cb1 unk8;
    UnkOv01_021FED9C_Cb2 unkC;
    UnkOv01_021FED9C_Cb2 unk10;
} UnkOv01_021FED9C_Template;

extern UnkOv01_021FED9C *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(UnkOv01_021FED9C *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_021FED9C *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FED9C_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FED9C_Data *a4, int a5);
extern void ov01_021F1640(int a0);
extern void ov01_021F19F4(void *a0, UnkOv01_021FED9C_subA *a1, int a2, int a3, int a4);
extern void ov01_021F1A18(void *a0, UnkOv01_021FED9C_subB *a1, int a2, int a3, int a4);
extern void ov01_021F1A34(void *a0, UnkOv01_021FED9C_Work *a1, UnkOv01_021FED9C_subA *a2, UnkOv01_021FED9C_subB *a3, int a4);

extern void sub_02069784(UnkOv01_021FED9C_subA *a0);
extern void sub_020698D0(UnkOv01_021FED9C_subB *a0);
extern void sub_020698E8(UnkOv01_021FED9C_subB *a0, int a1, int a2);
extern BOOL sub_02069948(UnkOv01_021FED9C_subB *a0);
extern void sub_02069998(NNSG3dRenderObj *a0, UnkOv01_021FED9C_subA *a1, UnkOv01_021FED9C_Work *a2);
extern void sub_020699BC(NNSG3dRenderObj *a0, VecFx32 *a1);
extern UnkOv01_021FED9C_Data *sub_02068D98(void *a0);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_020611C8(int x, int y, VecFx32 *a2);

UnkOv01_021FED9C *ov01_021FED9C(void *a0);
void ov01_021FEDB8(UnkOv01_021FED9C *manager);
void ov01_021FEE04(LocalMapObject *mapObject, int a1, int a2, int a3);
static void ov01_021FEDC8(UnkOv01_021FED9C *manager);
static void ov01_021FEDF0(UnkOv01_021FED9C *manager);
static BOOL ov01_021FEE64(void *param0, UnkOv01_021FED9C_Work *work);
static BOOL ov01_021FEE9C(void *param0, UnkOv01_021FED9C_Work *work);
static void ov01_021FEEA8(void *param0, UnkOv01_021FED9C_Work *work);
static void ov01_021FEED0(void *param0, UnkOv01_021FED9C_Work *work);

static const UnkOv01_021FED9C_Template ov01_02209124 = {
    0x80, ov01_021FEE64, ov01_021FEE9C, ov01_021FEEA8, ov01_021FEED0
};

UnkOv01_021FED9C *ov01_021FED9C(void *a0) {
    UnkOv01_021FED9C *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FED9C), 0, 0);
    manager->unk0 = a0;
    ov01_021FEDC8(manager);
    return manager;
}

void ov01_021FEDB8(UnkOv01_021FED9C *manager) {
    ov01_021FEDF0(manager);
    ov01_021F1448(manager);
}

static void ov01_021FEDC8(UnkOv01_021FED9C *manager) {
    ov01_021F19F4(manager->unk0, &manager->unk4, 0, 0x1E, 0);
    ov01_021F1A18(manager->unk0, &manager->unk18, 0, 0x87, 0);
}

static void ov01_021FEDF0(UnkOv01_021FED9C *manager) {
    sub_02069784(&manager->unk4);
    sub_020698D0(&manager->unk18);
}

void ov01_021FEE04(LocalMapObject *mapObject, int a1, int a2, int a3) {
    VecFx32 vec;
    UnkOv01_021FED9C_Data data;
    data.fieldSystem = ov01_021F146C(mapObject);
    data.manager = ov01_021F1450(data.fieldSystem, 7);
    sub_020611C8(a1, a3, &vec);
    vec.z += a2 << 3;
    vec.y = (MapObject_GetPreviousYCoord(mapObject) << 15) - (2 << 14);
    ov01_021F1620(data.fieldSystem, &ov01_02209124, &vec, 0, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static BOOL ov01_021FEE64(void *param0, UnkOv01_021FED9C_Work *work) {
    UnkOv01_021FED9C_Data *data = sub_02068D98(param0);
    work->unk78 = data->fieldSystem;
    work->unk7c = data->manager;
    ov01_021F1A34(work->unk78, work, &data->manager->unk4, &data->manager->unk18, 0);
    sub_02069998(&work->unk24, &work->unk7c->unk4, work);
    return TRUE;
}

static BOOL ov01_021FEE9C(void *param0, UnkOv01_021FED9C_Work *work) {
    sub_020698D0(&work->unk0);
}

static void ov01_021FEEA8(void *param0, UnkOv01_021FED9C_Work *work) {
    if (sub_02069948(&work->unk0) == 1) {
        ov01_021F1640((int)param0);
    } else {
        sub_020698E8(&work->unk0, 1 << 0xC, 0);
    }
}

static void ov01_021FEED0(void *param0, UnkOv01_021FED9C_Work *work) {
    VecFx32 vec;
    sub_02068DB8(param0, &vec);
    sub_020699BC(&work->unk24, &vec);
}
