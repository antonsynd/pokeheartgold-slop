#include "overlay_01_021FE200.h"

#include "global.h"

#include "map_object.h"

typedef struct {
    u8 unk0[0xc];
    NNSG3dResMdl *unkC;
    u8 unk10[4];
} UnkOv01_021FE200_sub;

struct UnkOv01_021FE200 {
    void *unk0;
    UnkOv01_021FE200_sub unk4[10];
    UnkOv01_021FE200_sub unkCC[10];
    NNSG3dRenderObj unk194[10];
    NNSG3dRenderObj unk4DC[10];
};

typedef struct {
    int unk0;
    UnkOv01_021FE200_sub *unk4;
    NNSG3dRenderObj *unk8;
} UnkOv01_021FE200_Data;

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    void *unk10;
    UnkOv01_021FE200_sub *unk14;
    void *unk18;
} UnkOv01_021FE200_Work;

typedef BOOL (*UnkOv01_021FE200_Cb1)(void *, UnkOv01_021FE200_Work *);
typedef void (*UnkOv01_021FE200_Cb2)(void *, UnkOv01_021FE200_Work *);

typedef struct {
    u32 unk0;
    UnkOv01_021FE200_Cb1 unk4;
    UnkOv01_021FE200_Cb1 unk8;
    UnkOv01_021FE200_Cb2 unkC;
    UnkOv01_021FE200_Cb2 unk10;
} UnkOv01_021FE200_Template;

extern UnkOv01_021FE200 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_021FE200 *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FE200_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FE200_Data *a4, int a5);
extern void ov01_021F1640(int a0);
extern void ov01_021F19F4(void *a0, UnkOv01_021FE200_sub *a1, int a2, int a3, int a4);

extern void *sub_02068D90(void *a0);
extern UnkOv01_021FE200_Data *sub_02068D98(void *a0);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_02069784(UnkOv01_021FE200_sub *a0);
extern void sub_02069978(NNSG3dRenderObj *a0, UnkOv01_021FE200_sub *a1);
extern void sub_020699BC(void *a0, VecFx32 *a1);
extern void sub_020611C8(u32 x, u32 y, VecFx32 *a2);
extern void NNS_G3dMdlSetMdlAlphaAll(NNSG3dResMdl *pMdl, int alpha);

static void ov01_021FE230(UnkOv01_021FE200 *manager);
static void ov01_021FE2B8(UnkOv01_021FE200 *manager);
static NNSG3dRenderObj *ov01_021FE2DC(UnkOv01_021FE200 *manager, int type, int idx, int sel);
static UnkOv01_021FE200_sub *ov01_021FE35C(UnkOv01_021FE200 *manager, int type, int idx, int sel);
static void *ov01_021FE3F8(LocalMapObject *mapObject, int type);
static BOOL ov01_021FE4FC(void *param0, UnkOv01_021FE200_Work *work);
static BOOL ov01_021FE524(void *param0, UnkOv01_021FE200_Work *work);
static void ov01_021FE528(void *param0, UnkOv01_021FE200_Work *work);
static void ov01_021FE558(void *param0, UnkOv01_021FE200_Work *work);

static const UnkOv01_021FE200_Template ov01_02208FE0 = {
    sizeof(UnkOv01_021FE200_Work), ov01_021FE4FC, ov01_021FE524, ov01_021FE528, ov01_021FE558
};

static const u32 ov01_02208FF4[10] = {
    0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63
};

static const u32 ov01_0220901C[10] = {
    0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53
};

static const u32 ov01_02209044[4][4] = {
    { 4, 4, 7, 6 },
    { 4, 4, 9, 8 },
    { 8, 6, 5, 5 },
    { 9, 7, 5, 5 },
};

UnkOv01_021FE200 *ov01_021FE200(void *a0) {
    UnkOv01_021FE200 *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FE200), 0, 0);
    manager->unk0 = a0;
    ov01_021FE230(manager);
    return manager;
}

void ov01_021FE220(UnkOv01_021FE200 *manager) {
    ov01_021FE2B8(manager);
    ov01_021F1448(manager);
}

static void ov01_021FE230(UnkOv01_021FE200 *manager) {
    int i;
    for (i = 0; i < 10u; i++) {
        ov01_021F19F4(manager->unk0, &manager->unk4[i], 0, ov01_0220901C[i], 0);
        sub_02069978(&manager->unk194[i], &manager->unk4[i]);
        ov01_021F19F4(manager->unk0, &manager->unkCC[i], 0, ov01_02208FF4[i], 0);
        sub_02069978(&manager->unk4DC[i], &manager->unkCC[i]);
    }
}

static void ov01_021FE2B8(UnkOv01_021FE200 *manager) {
    int i;
    for (i = 0; i < 10; i++) {
        sub_02069784(&manager->unk4[i]);
        sub_02069784(&manager->unkCC[i]);
    }
}

static NNSG3dRenderObj *ov01_021FE2DC(UnkOv01_021FE200 *manager, int type, int idx, int sel) {
    NNSG3dRenderObj *result = NULL;
    switch (type) {
    case 0:
        result = &manager->unk194[idx];
        break;
    case 1:
        result = &manager->unk194[ov01_02209044[sel][idx]];
        break;
    case 2:
    case 4:
        result = &manager->unk4DC[idx];
        break;
    case 3:
        result = &manager->unk4DC[ov01_02209044[sel][idx]];
        break;
    }
    if (result == NULL) {
        GF_AssertFail();
    }
    return result;
}

static UnkOv01_021FE200_sub *ov01_021FE35C(UnkOv01_021FE200 *manager, int type, int idx, int sel) {
    UnkOv01_021FE200_sub *result = NULL;
    switch (type) {
    case 0:
        result = &manager->unk4[idx];
        break;
    case 1:
        result = &manager->unk4[ov01_02209044[sel][idx]];
        break;
    case 2:
    case 4:
        result = &manager->unkCC[idx];
        break;
    case 3:
        result = &manager->unkCC[ov01_02209044[sel][idx]];
        break;
    }
    if (result == NULL) {
        GF_AssertFail();
    }
    return result;
}

void *ov01_021FE3C4(LocalMapObject *mapObject) {
    return ov01_021FE3F8(mapObject, 0);
}

void *ov01_021FE3D0(LocalMapObject *mapObject) {
    return ov01_021FE3F8(mapObject, 1);
}

void *ov01_021FE3DC(LocalMapObject *mapObject) {
    return ov01_021FE3F8(mapObject, 2);
}

void *ov01_021FE3E8(LocalMapObject *mapObject) {
    return ov01_021FE3F8(mapObject, 4);
}

void *ov01_021FE3F4(LocalMapObject *mapObject) {
    return NULL;
}

static void *ov01_021FE3F8(LocalMapObject *mapObject, int type) {
    VecFx32 position;
    UnkOv01_021FE200_Data data;
    u32 prevX = MapObject_GetPreviousXCoord(mapObject);
    u32 prevZ = MapObject_GetPreviousZCoord(mapObject);
    fx32 y = MapObject_GetPositionVectorYCoord(mapObject);
    u32 facingDir = MapObject_GetFacingDirection(mapObject);
    u32 prevFacingDir = MapObject_GetPreviousFacingDirection(mapObject);
    u32 priority = MapObject_GetPriorityPlusValue(mapObject, 2);
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    UnkOv01_021FE200 *manager = ov01_021F1450(fieldSystem, 2);

    if (MapObject_TestFlagsBits(mapObject, (MapObjectFlagBits)(2 << 8)) == TRUE) {
        return NULL;
    }

    data.unk0 = type;
    data.unk8 = ov01_021FE2DC(manager, type, facingDir, prevFacingDir);
    data.unk4 = ov01_021FE35C(manager, type, facingDir, prevFacingDir);
    sub_020611C8(prevX, prevZ, &position);
    position.y = y;
    switch (type) {
    case 0:
    case 1:
    case 4:
    case 5:
        position.y = y - (2 << 0xe);
        if ((u32)(type - 2) <= 1) {
            position.z -= (2 << 0xe) >> 2;
        } else {
            position.z += (2 << 0xe) >> 3;
        }
        break;
    case 2:
    case 3:
        position.y = y - (0xa << 0xc);
        if ((u32)(type - 2) <= 1) {
            position.z -= 2 << 0xc;
        } else {
            position.z += 2 << 0xc;
        }
        break;
    }
    return ov01_021F1620(fieldSystem, &ov01_02208FE0, &position, 0, &data, priority);
}

static BOOL ov01_021FE4FC(void *param0, UnkOv01_021FE200_Work *work) {
    UnkOv01_021FE200_Data *data;
    work->unk10 = sub_02068D90(param0);
    data = sub_02068D98(param0);
    work->unk18 = data->unk8;
    work->unk14 = data->unk4;
    work->unkC = 0x1f;
    work->unk10 = (void *)data->unk0;
    return TRUE;
}

static BOOL ov01_021FE524(void *param0, UnkOv01_021FE200_Work *work) {
}

static void ov01_021FE528(void *param0, UnkOv01_021FE200_Work *work) {
    switch (work->unk0) {
    case 0:
        work->unk4++;
        if (work->unk4 < 0x10) {
            break;
        }
        work->unk0++;
        break;
    case 1:
        if ((work->unkC -= 2) >= 0) {
            break;
        }
        ov01_021F1640((int)param0);
        break;
    }
}

static void ov01_021FE558(void *param0, UnkOv01_021FE200_Work *work) {
    VecFx32 vec;
    if (work->unk8 != 0) {
        return;
    }
    sub_02068DB8(param0, &vec);
    NNSi_G3dModifyPolygonAttrMask(work->unk14->unkC, 1, 0x1f << 0x10);
    NNS_G3dMdlSetMdlAlphaAll(work->unk14->unkC, work->unkC);
    sub_020699BC(work->unk18, &vec);
}
