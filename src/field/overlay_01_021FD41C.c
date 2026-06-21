#include "global.h"

#include "field_system.h"
#include "gf_rtc.h"
#include "map_object.h"
#include "sys_task_api.h"

typedef struct {
    u8 unk0[0xc];
    NNSG3dResMdl *unkC;
    u8 unk10[4];
} UnkOv01_021FD41C_sub;

typedef struct {
    s32 unk0;
    s32 unk4;
    u8 unk8[8];
    fx32 unk10;
    fx32 unk14;
    fx32 unk18;
    fx32 unk1c;
    LocalMapObject *unk20;
    SysTask *unk24;
    UnkOv01_021FD41C_sub unk28[4];
    NNSG3dRenderObj unk78[4];
} UnkOv01_021FD41C_Work;

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    int unkC;
    u32 unk10;
    FieldSystem *unk14;
    void *unk18;
    LocalMapObject *unk1c;
} UnkOv01_021FD41C_InstanceWork;

typedef struct {
    FieldSystem *unk0;
    void *unk4;
    LocalMapObject *unk8;
} UnkOv01_021FD41C_Data;

typedef BOOL (*UnkOv01_021FD41C_Cb1)(void *, UnkOv01_021FD41C_InstanceWork *);
typedef void (*UnkOv01_021FD41C_Cb2)(void *, UnkOv01_021FD41C_InstanceWork *);

typedef struct {
    int unk0;
    UnkOv01_021FD41C_Cb1 unk4;
    UnkOv01_021FD41C_Cb1 unk8;
    UnkOv01_021FD41C_Cb2 unkC;
    UnkOv01_021FD41C_Cb2 unk10;
} UnkOv01_021FD41C_Template;

extern UnkOv01_021FD41C_Work *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern FieldSystem *ov01_021F1468(LocalMapObject *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FD41C_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FD41C_Data *a4, int a5);
extern void ov01_021F1640(int a0);
extern void ov01_021F19F4(void *a0, UnkOv01_021FD41C_sub *a1, int a2, int a3, int a4);
extern UnkOv01_021FD41C_Work *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern BOOL ov01_021F8F88(LocalMapObject *a0);
extern void ov01_021F8FA0(LocalMapObject *a0, VecFx32 *a1);

extern void NNS_G3dMdlSetMdlAlphaAll(NNSG3dResMdl *pMdl, int alpha);
extern UnkOv01_021FD41C_Data *sub_02068D98(void *a0);
extern u32 sub_02068D90(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_02069784(UnkOv01_021FD41C_sub *a0);
extern void sub_02069978(NNSG3dRenderObj *a0, UnkOv01_021FD41C_sub *a1);
extern void sub_020699AC(NNSG3dRenderObj *a0, VecFx32 *a1, VecFx32 *a2, MtxFx33 *a3);
extern void sub_020699BC(NNSG3dRenderObj *a0, VecFx32 *a1);

UnkOv01_021FD41C_Work *ov01_021FD41C(LocalMapObject *mapObject);
void ov01_021FD440(UnkOv01_021FD41C_Work *work);
void ov01_021FD640(LocalMapObject *mapObject);
void ov01_021FD684(LocalMapObject *mapObject);
void ov01_021FD8E8(LocalMapObject *mapObject, int a1);
void ov01_021FD9CC(u32 direction, VecFx32 *vec);

static void ov01_021FD458(UnkOv01_021FD41C_Work *work);
static void ov01_021FD47C(UnkOv01_021FD41C_Work *work);
static void ov01_021FD488(UnkOv01_021FD41C_Work *work, VecFx32 *dst);
static s32 ov01_021FD498(fx32 a0);
static void ov01_021FD4A4(UnkOv01_021FD41C_Work *work, TIMEOFDAY time);
static void ov01_021FD4D0(s32 *a0, s32 a1, s32 a2);
static void ov01_021FD4F4(SysTask *task, void *data);
static void ov01_021FD5CC(UnkOv01_021FD41C_Work *work);
static void ov01_021FD60C(UnkOv01_021FD41C_Work *work);
static void ov01_021FD624(UnkOv01_021FD41C_Work *work, s32 alpha);
static BOOL ov01_021FD6C8(void *param0, UnkOv01_021FD41C_InstanceWork *work);
static BOOL ov01_021FD714(void *param0, UnkOv01_021FD41C_InstanceWork *work);
static void ov01_021FD718(void *param0, UnkOv01_021FD41C_InstanceWork *work);
static void ov01_021FD7D4(void *param0, UnkOv01_021FD41C_InstanceWork *work);
static BOOL ov01_021FD784(void *param0, UnkOv01_021FD41C_InstanceWork *work);
static void ov01_021FD838(void *param0, UnkOv01_021FD41C_InstanceWork *work);
static void ov01_021FD92C(void *param0, UnkOv01_021FD41C_InstanceWork *work);
static void ov01_021FD980(void *param0, UnkOv01_021FD41C_InstanceWork *work);

static const struct {
    s32 arr_e90[4];
    UnkOv01_021FD41C_Template tmpl_ea0;
    fx32 arr_eb4[5];
    UnkOv01_021FD41C_Template tmpl_ec8;
    UnkOv01_021FD41C_Template tmpl_edc;
    VecFx32 arr_ef0[3];
    VecFx32 arr_f14[3];
    VecFx32 arr_f38[5];
} sRodata = {
    { 0x1F, 0x21, 0x22, 0x20 },
    { 0x20, ov01_021FD6C8, ov01_021FD714, ov01_021FD718, ov01_021FD7D4 },
    { 0xE000, 0x12000, 0x12000, 0x8000, 0x4000 },
    { 0x20, ov01_021FD784, ov01_021FD714, ov01_021FD718, ov01_021FD838 },
    { 0x20, ov01_021FD6C8, ov01_021FD714, ov01_021FD92C, ov01_021FD980 },
    { { 0x1000, 0, 0 }, { 0, 0x1000, 0 }, { 0, 0, 0x1000 } },
    { { 0x1000, 0, 0 }, { 0, 0x1000, 0 }, { 0, 0, 0x1000 } },
    {
     { 0x1000, 0x1000, 0x1000 },
     { 0x1400, 0x1000, 0x1400 },
     { 0x1400, 0x1000, 0x1000 },
     { 0x1200, 0x1000, 0x1000 },
     { 0xE00, 0x1000, 0xE00 },
     },
};

UnkOv01_021FD41C_Work *ov01_021FD41C(LocalMapObject *mapObject) {
    UnkOv01_021FD41C_Work *work = ov01_021F1430(mapObject, sizeof(UnkOv01_021FD41C_Work), 0, 0);
    work->unk20 = mapObject;
    ov01_021FD5CC(work);
    ov01_021FD458(work);
    return work;
}

void ov01_021FD440(UnkOv01_021FD41C_Work *work) {
    ov01_021FD47C(work);
    ov01_021FD60C(work);
    ov01_021F1448(work);
}

static void ov01_021FD458(UnkOv01_021FD41C_Work *work) {
    FieldSystem *fieldSystem = ov01_021F1468(work->unk20);
    u32 priority = MapObjectManager_GetPriority(fieldSystem->mapObjectManager) - 1;
    work->unk24 = SysTask_CreateOnMainQueue(ov01_021FD4F4, work, priority);
}

static void ov01_021FD47C(UnkOv01_021FD41C_Work *work) {
    SysTask_Destroy(work->unk24);
}

static void ov01_021FD488(UnkOv01_021FD41C_Work *work, VecFx32 *dst) {
    *dst = *(VecFx32 *)&work->unk14;
}

static s32 ov01_021FD498(fx32 a0) {
    s32 r1 = (s32)((u32)(a0 >> 0xb) >> 0x14);
    r1 = a0 + r1;
    return r1 >> 0xc;
}

static void ov01_021FD4A4(UnkOv01_021FD41C_Work *work, TIMEOFDAY time) {
    work->unk10 = sRodata.arr_eb4[work->unk4];
    *(VecFx32 *)&work->unk14 = sRodata.arr_f38[work->unk4];
}

static void ov01_021FD4D0(s32 *a0, s32 a1, s32 a2) {
    if (*a0 < a1) {
        *a0 += a2;
        if (*a0 > a1) {
            *a0 = a1;
            return;
        }
    } else if (*a0 > a1) {
        *a0 -= a2;
        if (*a0 < a1) {
            *a0 = a1;
        }
    }
}

static void ov01_021FD4F4(SysTask *task, void *data) {
    VecFx32 vec;
    UnkOv01_021FD41C_Work *work = data;
    TIMEOFDAY time = GF_RTC_GetTimeOfDay();
    switch (work->unk0) {
    case 0:
        work->unk4 = time;
        ov01_021FD4A4(work, time);
        ov01_021FD624(work, ov01_021FD498(work->unk10));
        work->unk0 = work->unk0 + 1;
        return;
    case 1:
        if (work->unk4 == (s32)time) {
            return;
        }
        work->unk0 = work->unk0 + 1;
        // fallthrough
    case 2: {
        fx32 target_scale = sRodata.arr_eb4[time];
        vec = sRodata.arr_f38[time];
        ov01_021FD4D0((s32 *)&work->unk14, vec.x, 0x10);
        ov01_021FD4D0((s32 *)&work->unk18, vec.y, 0x10);
        ov01_021FD4D0((s32 *)&work->unk1c, vec.z, 0x10);
        ov01_021FD4D0((s32 *)&work->unk10, target_scale, 2 << 8);
        ov01_021FD624(work, ov01_021FD498(work->unk10));
        if (vec.x == work->unk14 && vec.y == work->unk18 && vec.z == work->unk1c && target_scale == work->unk10) {
            work->unk4 = time;
            work->unk0 = 1;
        }
        break;
    }
    }
}

static void ov01_021FD5CC(UnkOv01_021FD41C_Work *work) {
    int i;
    for (i = 0; i < 4; i++) {
        ov01_021F19F4(work->unk20, &work->unk28[i], 0, sRodata.arr_e90[i], 0);
        sub_02069978(&work->unk78[i], &work->unk28[i]);
    }
}

static void ov01_021FD60C(UnkOv01_021FD41C_Work *work) {
    int i;
    for (i = 0; i < 4; i++) {
        sub_02069784(&work->unk28[i]);
    }
}

static void ov01_021FD624(UnkOv01_021FD41C_Work *work, s32 alpha) {
    NNSi_G3dModifyPolygonAttrMask(work->unk28[0].unkC, 1, 0x1f << 0x10);
    NNS_G3dMdlSetMdlAlphaAll(work->unk28[0].unkC, alpha);
}

void ov01_021FD640(LocalMapObject *mapObject) {
    UnkOv01_021FD41C_Data data;
    VecFx32 position;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.unk0 = fieldSystem;
    data.unk4 = ov01_021F1450(fieldSystem, 0);
    data.unk8 = mapObject;
    MapObject_CopyPositionVector(mapObject, &position);
    ov01_021F1620(fieldSystem, &sRodata.tmpl_ea0, &position, 0, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

void ov01_021FD684(LocalMapObject *mapObject) {
    UnkOv01_021FD41C_Data data;
    VecFx32 position;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.unk0 = fieldSystem;
    data.unk4 = ov01_021F1450(fieldSystem, 0);
    data.unk8 = mapObject;
    MapObject_CopyPositionVector(mapObject, &position);
    ov01_021F1620(fieldSystem, &sRodata.tmpl_ec8, &position, 3, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static BOOL ov01_021FD6C8(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
    UnkOv01_021FD41C_Data *data = sub_02068D98(param0);
    *(UnkOv01_021FD41C_Data *)&work->unk14 = *data;
    work->unk10 = sub_02068D90(param0);
    work->unk0 = MapObject_GetSpriteID(work->unk1c);
    work->unk4 = MapObject_GetID(work->unk1c);
    if (MapObject_CheckFlag25(work->unk1c) == 1) {
        work->unk8 = sub_0205F544(work->unk1c);
    } else {
        work->unk8 = MapObject_GetMapID(work->unk1c);
    }
    return 1;
}

static BOOL ov01_021FD714(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
}

static void ov01_021FD718(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
    VecFx32 pos;
    LocalMapObject *mapObject = work->unk1c;
    if (sub_0205F0F8(mapObject, work->unk0, work->unk4, work->unk8) == 0) {
        ov01_021F1640((int)param0);
        return;
    }
    if (sub_0205F5E8(mapObject, (MapObjectManagerFlagBits)8) != 0) {
        ov01_021F1640((int)param0);
        return;
    }
    work->unkC = 0;
    if (MapObject_TestFlagsBits(mapObject, (MapObjectFlagBits)0x00100200) == 1) {
        work->unkC = 1;
        return;
    }
    MapObject_CopyPositionVector(mapObject, &pos);
    sub_02068DA8(param0, &pos);
}

static void ov01_021FD7D4(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
    VecFx32 translation;
    VecFx32 scale;
    MtxFx33 matrix;
    if (work->unkC != 0) {
        return;
    }
    *(MtxFx33 *)&matrix = *(const MtxFx33 *)sRodata.arr_f14;
    ov01_021FD488((UnkOv01_021FD41C_Work *)work->unk18, &scale);
    sub_02068DB8(param0, &translation);
    translation.x -= 2 << 0xa;
    translation.y -= 2 << 0xd;
    translation.z += 2 << 0xb;
    sub_020699AC(&((UnkOv01_021FD41C_Work *)work->unk18)->unk78[0], &translation, &scale, &matrix);
}

static BOOL ov01_021FD784(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
    UnkOv01_021FD41C_Data *data = sub_02068D98(param0);
    *(UnkOv01_021FD41C_Data *)&work->unk14 = *data;
    work->unk10 = sub_02068D90(param0);
    work->unk0 = MapObject_GetSpriteID(work->unk1c);
    work->unk4 = MapObject_GetID(work->unk1c);
    if (MapObject_CheckFlag25(work->unk1c) == 1) {
        work->unk8 = sub_0205F544(work->unk1c);
    } else {
        work->unk8 = MapObject_GetMapID(work->unk1c);
    }
    work->unkC = 1;
    return 1;
}

static void ov01_021FD838(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
    VecFx32 translation;
    VecFx32 scale;
    MtxFx33 matrix;
    VecFx32 off;
    LocalMapObject *mapObject;
    UnkOv01_021FD41C_Work *mainWork;
    if (work->unkC != 0) {
        return;
    }
    *(MtxFx33 *)&matrix = *(const MtxFx33 *)sRodata.arr_ef0;
    mainWork = (UnkOv01_021FD41C_Work *)work->unk18;
    mapObject = work->unk1c;
    ov01_021FD488(mainWork, &scale);
    if (ov01_021F8F88(mapObject) != 0) {
        sub_02068DB8(param0, &translation);
        translation.x -= 2 << 0xa;
        translation.y -= 2 << 0xd;
        translation.z += 2 << 0xb;
        ov01_021FD9CC(MapObject_GetFacingDirection(mapObject), &translation);
    } else {
        MapObject_CopyPositionVector(mapObject, &translation);
        ov01_021F8FA0(mapObject, &off);
        translation.x += off.x;
        translation.z += off.z;
        translation.x -= 2 << 0xa;
        translation.y -= 2 << 0xd;
        translation.z += 2 << 0xb;
    }
    sub_020699AC(&mainWork->unk78[0], &translation, &scale, &matrix);
}

void ov01_021FD8E8(LocalMapObject *mapObject, int a1) {
    UnkOv01_021FD41C_Data data;
    VecFx32 position;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.unk0 = fieldSystem;
    data.unk4 = ov01_021F1450(fieldSystem, 0);
    data.unk8 = mapObject;
    MapObject_CopyPositionVector(mapObject, &position);
    ov01_021F1620(fieldSystem, &sRodata.tmpl_edc, &position, a1, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static void ov01_021FD92C(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
    VecFx32 pos;
    LocalMapObject *mapObject = work->unk1c;
    if (sub_0205F0F8(mapObject, work->unk0, work->unk4, work->unk8) == 0) {
        ov01_021F1640((int)param0);
        return;
    }
    work->unkC = 0;
    if (MapObject_TestFlagsBits(mapObject, (MapObjectFlagBits)0x00100200) == 1) {
        work->unkC = 1;
        return;
    }
    MapObject_CopyPositionVector(mapObject, &pos);
    sub_02068DA8(param0, &pos);
}

static void ov01_021FD980(void *param0, UnkOv01_021FD41C_InstanceWork *work) {
    VecFx32 pos;
    if (work->unkC == 1) {
        return;
    }
    {
        u32 idx = sub_02068D90(param0);
        UnkOv01_021FD41C_Work *mainWork = (UnkOv01_021FD41C_Work *)work->unk18;
        sub_02068DB8(param0, &pos);
        pos.x -= 2 << 0xa;
        pos.y -= 2 << 0xd;
        pos.z += 2 << 0xb;
        sub_020699BC(&mainWork->unk78[idx], &pos);
    }
}

void ov01_021FD9CC(u32 direction, VecFx32 *vec) {
    switch (direction) {
    case 0:
        vec->z += 2 << 0xc;
        break;
    case 1:
        vec->z -= 2 << 0xc;
        break;
    case 2:
        vec->x += 6 << 0xc;
        break;
    case 3:
        vec->x -= 6 << 0xc;
        break;
    }
}
