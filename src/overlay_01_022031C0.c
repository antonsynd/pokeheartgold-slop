#include "overlay_01_022031C0.h"

#include "global.h"

#include "field/overlay_01_021FB878.h"

#include "heap.h"
#include "map_object.h"
#include "vram_transfer_manager.h"

typedef struct UnkOv01_022031C0 {
    void *fxMgr;
    NNSFndAllocator alloc;
    void *mdlData0;
    void *mdlData1;
    Field3dModel model0;
    Field3dModel model1;
    Field3dObject obj0;
    Field3dObject obj1;
    Field3DModelAnimation anim;
} UnkOv01_022031C0;

typedef struct UnkOv01_022031C0_FieldSystem {
    u8 unk0[0x3c];
    void *mapObjectManager;
} UnkOv01_022031C0_FieldSystem;

typedef struct UnkOv01_022031C0_Data {
    VecFx32 pos;
    UnkOv01_022031C0_FieldSystem *fieldSystem;
    void *fxMgr;
    UnkOv01_022031C0 *manager;
    LocalMapObject *mapObject;
    s16 unk1C;
    s16 unk1E;
    s8 unk20;
    u8 unk21[3];
} UnkOv01_022031C0_Data;

typedef struct UnkOv01_022031C0_Work {
    int state;
    u32 spriteId;
    u32 objectId;
    u32 mapId;
    int counter;
    int unk14;
    UnkOv01_022031C0_Data data;
    fx32 *coordPtr;
    fx32 coordStart;
    int delta;
    VecFx32 followPos;
} UnkOv01_022031C0_Work;

typedef struct UnkOv01_022031C0_Template {
    u32 workSize;
    BOOL (*init)(void *, UnkOv01_022031C0_Work *);
    void (*delete)(void *, UnkOv01_022031C0_Work *);
    void (*update)(void *, UnkOv01_022031C0_Work *);
    void (*draw)(void *, UnkOv01_022031C0_Work *);
} UnkOv01_022031C0_Template;

extern UnkOv01_022031C0 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern void *ov01_021F1450(void *fxMgr, int a1);
extern void *ov01_021F1468(void *fxMgr);
extern void *ov01_021F146C(LocalMapObject *mapObject);
extern void *ov01_021F14B4(void *fxMgr, int fileId, int a2);
extern void *ov01_021F1620(void *fxMgr, const UnkOv01_022031C0_Template *template, VecFx32 *pos, int a3, UnkOv01_022031C0_Data *data, int priority);
extern void ov01_021F1640(void *a0);
extern void *ov01_021F771C(void *mapObjectManager);
extern void ov01_021FBD38(Field3dModel *model, void *narcData);
extern void ov01_021FBDFC(Field3dModel *model);
extern BOOL ov01_022055DC(LocalMapObject *mapObject);

extern UnkOv01_022031C0_Data *sub_02068D98(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern int sub_0206121C(void *a0, VecFx32 *a1);
extern BOOL sub_0205F0F8(LocalMapObject *object, u32 spriteId, u32 objectId, u32 mapId);
extern void sub_0205F484(LocalMapObject *object);
extern void sub_02069DC8(LocalMapObject *object, BOOL enableBit);
extern LocalMapObject *FollowMon_GetMapObject(void *fieldSystem);
extern void sub_02023E78(void *sprite, VecFx32 *scale);
extern u32 sub_02023FB0(void *sprite);
extern void Field3dObject_SetPos(Field3dObject *object, const VecFx32 *pos);
extern s32 _s32_div_f(s32 num, s32 den);

void *ov01_022031C0(void *a0);
void ov01_022031E8(UnkOv01_022031C0 *manager);
static void ov01_022031F8(UnkOv01_022031C0 *manager);
static void ov01_02203270(UnkOv01_022031C0 *manager);
static BOOL ov01_0220335C(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_022033E0(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_022033E4(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_022034B8(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_022034F8(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_022035A4(void *param0, UnkOv01_022031C0_Work *work);
static BOOL ov01_022035DC(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_02203654(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_022037E8(void *param0, UnkOv01_022031C0_Work *work);
static BOOL ov01_02203820(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_02203890(void *param0, UnkOv01_022031C0_Work *work);
static void ov01_022039BC(u8 dir, VecFx32 *pos, fx32 **out);
static int ov01_022039E0(u8 dir);

static const struct {
    VecFx32 scale_022094B0;
    VecFx32 scale_022094BC;
    UnkOv01_022031C0_Template template_022094C8;
    UnkOv01_022031C0_Template template_022094DC;
    UnkOv01_022031C0_Template template_022094F0;
    UnkOv01_022031C0_Template template_02209504;
} sRodata = {
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { 0x54, ov01_02203820, ov01_022033E0, ov01_02203890, ov01_022037E8 },
    { 0x54, ov01_0220335C, ov01_022033E0, ov01_022033E4, ov01_022034B8 },
    { 0x54, ov01_022035DC, ov01_022033E0, ov01_02203654, ov01_022037E8 },
    { 0x54, ov01_0220335C, ov01_022033E0, ov01_022034F8, ov01_022035A4 },
};

static u16 ov01_02209B18[32] = {
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF
};

void *ov01_022031C0(void *a0) {
    UnkOv01_022031C0 *manager = ov01_021F1430(a0, sizeof(UnkOv01_022031C0), 0, 0);
    manager->fxMgr = a0;
    HeapExp_FndInitAllocator(&manager->alloc, HEAP_ID_FIELD1, 0x20);
    ov01_022031F8(manager);
    return manager;
}

void ov01_022031E8(UnkOv01_022031C0 *manager) {
    ov01_02203270(manager);
    ov01_021F1448(manager);
}

static void ov01_022031F8(UnkOv01_022031C0 *manager) {
    manager->mdlData0 = ov01_021F14B4(manager->fxMgr, 0x81, 0);
    ov01_021FBD38(&manager->model0, manager->mdlData0);
    Field3dObject_InitFromModel(&manager->obj0, &manager->model0);
    manager->mdlData1 = ov01_021F14B4(manager->fxMgr, 0x68, 0);
    ov01_021FBD38(&manager->model1, manager->mdlData1);
    Field3dObject_InitFromModel(&manager->obj1, &manager->model1);
    Field3dModelAnimation_LoadFromFilesystem(&manager->anim, &manager->model1, NARC_a_1_0_3, 0xa4, HEAP_ID_FIELD1, &manager->alloc);
    Field3dObject_AddAnimation(&manager->obj1, &manager->anim);
}

static void ov01_02203270(UnkOv01_022031C0 *manager) {
    ov01_021FBDFC(&manager->model0);
    ov01_021F1448(manager->mdlData0);
    ov01_021FBDFC(&manager->model1);
    ov01_021F1448(manager->mdlData1);
    Field3dModelAnimation_Unload(&manager->anim, &manager->alloc);
}

UnkStruct_0206793C *ov01_0220329C(LocalMapObject *obj, int a1) {
    VecFx32 pos;
    UnkOv01_022031C0_Data data;
    void *fx;
    int prio;

    fx = ov01_021F146C(obj);
    MapObject_CopyPositionVector(obj, &data.pos);
    data.pos.z += 6 << 12;
    data.unk1C = 0;
    data.unk1E = 0;
    data.unk20 = -1;
    data.fxMgr = fx;
    data.fieldSystem = ov01_021F1468(fx);
    data.manager = ov01_021F1450(fx, 0x11);
    data.mapObject = obj;
    MapObject_CopyPositionVector(obj, &pos);
    prio = MapObject_GetPriorityPlusValue(obj, 2);
    if (a1 == 0) {
        return ov01_021F1620(fx, &sRodata.template_022094DC, &pos, 1, &data, prio);
    } else if (a1 == 1) {
        return ov01_021F1620(fx, &sRodata.template_022094F0, &pos, 1, &data, prio);
    } else if (a1 == 2) {
        return ov01_021F1620(fx, &sRodata.template_02209504, &pos, 1, &data, prio);
    } else {
        return ov01_021F1620(fx, &sRodata.template_022094C8, &pos, 1, &data, prio);
    }
}

static BOOL ov01_0220335C(void *param0, UnkOv01_022031C0_Work *work) {
    VecFx32 pos;
    UnkOv01_022031C0_Data *src = sub_02068D98(param0);
    work->state = 0;
    work->data = *src;
    work->spriteId = MapObject_GetSpriteID(work->data.mapObject);
    work->objectId = MapObject_GetID(work->data.mapObject);
    work->mapId = MapObject_GetMapID(work->data.mapObject);
    pos = work->data.pos;
    work->unk14 = sub_0206121C(work->data.fieldSystem, &pos);
    sub_02068DA8(param0, &pos);
    Field3dObject_SetPos(&work->data.manager->obj0, &pos);
    Field3dObject_SetPos(&work->data.manager->obj1, &pos);
    Field3dObject_SetActiveFlag(&work->data.manager->obj1, FALSE);
    return TRUE;
}

static void ov01_022033E0(void *param0, UnkOv01_022031C0_Work *work) {
}

static void ov01_022033E4(void *param0, UnkOv01_022031C0_Work *work) {
    LocalMapObject *obj = work->data.mapObject;
    if (sub_0205F0F8(obj, work->spriteId, work->objectId, work->mapId) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    if (work->unk14 == 0) {
        VecFx32 vecB;
        VecFx32 vecA;
        sub_02068DB8(param0, &vecB);
        vecA = work->data.pos;
        work->unk14 = sub_0206121C(work->data.fieldSystem, &vecA);
        if (work->unk14 == 1) {
            vecB.y = vecA.y;
            sub_02068DA8(param0, &vecB);
        }
    }
    switch (work->state) {
    case 0:
        work->counter++;
        if (work->counter >= 2) {
            work->state = 1;
        }
        break;
    case 1:
        Field3dObject_SetActiveFlag(&work->data.manager->obj0, FALSE);
        Field3dObject_SetActiveFlag(&work->data.manager->obj1, TRUE);
        sub_02069DC8(obj, FALSE);
        sub_0205F484(obj);
        Field3dModelAnimation_FrameSet(&work->data.manager->anim, 0);
        work->state = 2;
    case 2:
        if (Field3dModelAnimation_FrameAdvanceAndCheck(&work->data.manager->anim, FX32_ONE)) {
            ov01_021F1640(param0);
        }
        break;
    }
}

static void ov01_022034B8(void *param0, UnkOv01_022031C0_Work *work) {
    VecFx32 vec;
    if (sub_0205F0F8(work->data.mapObject, work->spriteId, work->objectId, work->mapId) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    sub_02068DB8(param0, &vec);
    Field3dObject_Draw(&work->data.manager->obj0);
    Field3dObject_Draw(&work->data.manager->obj1);
}

static void ov01_022034F8(void *param0, UnkOv01_022031C0_Work *work) {
    if (sub_0205F0F8(work->data.mapObject, work->spriteId, work->objectId, work->mapId) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    if (work->unk14 == 0) {
        VecFx32 vecB;
        VecFx32 vecA;
        sub_02068DB8(param0, &vecB);
        vecA = work->data.pos;
        work->unk14 = sub_0206121C(work->data.fieldSystem, &vecA);
        if (work->unk14 == 1) {
            vecB.y = vecA.y;
            sub_02068DA8(param0, &vecB);
        }
    }
    switch (work->state) {
    case 0:
        Field3dObject_SetActiveFlag(&work->data.manager->obj0, FALSE);
        Field3dObject_SetActiveFlag(&work->data.manager->obj1, TRUE);
        Field3dModelAnimation_FrameSet(&work->data.manager->anim, 0);
        work->state = 1;
    case 1:
        if (Field3dModelAnimation_FrameAdvanceAndCheck(&work->data.manager->anim, FX32_ONE)) {
            ov01_021F1640(param0);
        }
        break;
    }
}

static void ov01_022035A4(void *param0, UnkOv01_022031C0_Work *work) {
    VecFx32 vec;
    if (sub_0205F0F8(work->data.mapObject, work->spriteId, work->objectId, work->mapId) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    sub_02068DB8(param0, &vec);
    Field3dObject_Draw(&work->data.manager->obj1);
}

static BOOL ov01_022035DC(void *param0, UnkOv01_022031C0_Work *work) {
    VecFx32 pos;
    UnkOv01_022031C0_Data *src = sub_02068D98(param0);
    work->state = 0;
    work->data = *src;
    work->spriteId = MapObject_GetSpriteID(work->data.mapObject);
    work->objectId = MapObject_GetID(work->data.mapObject);
    work->mapId = MapObject_GetMapID(work->data.mapObject);
    pos = work->data.pos;
    work->unk14 = sub_0206121C(work->data.fieldSystem, &pos);
    sub_02068DA8(param0, &pos);
    Field3dObject_SetPos(&work->data.manager->obj0, &pos);
    Field3dObject_SetActiveFlag(&work->data.manager->obj0, FALSE);
    return TRUE;
}

static void ov01_02203654(void *param0, UnkOv01_022031C0_Work *work) {
    LocalMapObject *obj = work->data.mapObject;
    if (sub_0205F0F8(obj, work->spriteId, work->objectId, work->mapId) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    if (work->unk14 == 0) {
        VecFx32 vecB;
        VecFx32 vecA;
        sub_02068DB8(param0, &vecB);
        vecA = work->data.pos;
        work->unk14 = sub_0206121C(work->data.fieldSystem, &vecA);
        if (work->unk14 == 1) {
            vecB.y = vecA.y;
            sub_02068DA8(param0, &vecB);
        }
    }
    switch (work->state) {
    case 0: {
        LocalMapObject *follow = FollowMon_GetMapObject(work->data.fieldSystem);
        void *sprite = ov01_021F771C(work->data.fieldSystem->mapObjectManager);
        u32 sizeKey = sub_02023FB0(sprite);
        u32 addrKey = sub_02023FB0(sprite);
        GF_CreateNewVramTransferTask(NNS_GFD_DST_3D_TEX_PLTT, NNS_GfdGetPlttKeyAddr(addrKey), ov01_02209B18, ((sizeKey & 0xFFFF0000) >> 16) << 3);
        if (ov01_022055DC(follow)) {
            u8 dir = MapObject_GetFacingDirection(follow);
            MapObject_CopyPositionVector(follow, &work->followPos);
            ov01_022039BC(dir, &work->followPos, &work->coordPtr);
            work->coordStart = *work->coordPtr;
            work->delta = ov01_022039E0(dir);
        } else {
            work->coordPtr = NULL;
        }
        work->state++;
    }
    case 1: {
        VecFx32 scale = sRodata.scale_022094BC;
        work->counter++;
        scale.x = FX32_ONE / work->counter;
        scale.y = FX32_ONE / work->counter;
        sub_02023E78(ov01_021F771C(work->data.fieldSystem->mapObjectManager), &scale);
        if (work->coordPtr != NULL) {
            LocalMapObject *follow = FollowMon_GetMapObject(work->data.fieldSystem);
            *work->coordPtr = work->coordStart + (work->counter * (work->delta * FX32_ONE)) / 4;
            MapObject_SetPositionVector(follow, &work->followPos);
        }
        if (work->counter >= 4) {
            work->state++;
            Field3dObject_SetActiveFlag(&work->data.manager->obj0, TRUE);
            MapObject_SetVisible(obj, TRUE);
            work->counter = 0;
        }
        break;
    }
    case 2:
        work->counter++;
        if (work->counter >= 4) {
            ov01_021F1640(param0);
        }
        break;
    }
}

static void ov01_022037E8(void *param0, UnkOv01_022031C0_Work *work) {
    VecFx32 vec;
    if (sub_0205F0F8(work->data.mapObject, work->spriteId, work->objectId, work->mapId) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    sub_02068DB8(param0, &vec);
    Field3dObject_Draw(&work->data.manager->obj0);
}

static BOOL ov01_02203820(void *param0, UnkOv01_022031C0_Work *work) {
    VecFx32 pos;
    UnkOv01_022031C0_Data *src = sub_02068D98(param0);
    work->state = 0;
    work->data = *src;
    work->spriteId = MapObject_GetSpriteID(work->data.mapObject);
    work->objectId = MapObject_GetID(work->data.mapObject);
    work->mapId = MapObject_GetMapID(work->data.mapObject);
    pos = work->data.pos;
    sub_02068DA8(param0, &pos);
    Field3dObject_SetPos(&work->data.manager->obj0, &pos);
    Field3dObject_SetActiveFlag(&work->data.manager->obj0, FALSE);
    return TRUE;
}

static void ov01_02203890(void *param0, UnkOv01_022031C0_Work *work) {
    LocalMapObject *obj = work->data.mapObject;
    if (sub_0205F0F8(obj, work->spriteId, work->objectId, work->mapId) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    switch (work->state) {
    case 0: {
        LocalMapObject *follow = FollowMon_GetMapObject(work->data.fieldSystem);
        ov01_021F771C(work->data.fieldSystem->mapObjectManager);
        if (ov01_022055DC(follow)) {
            u8 dir = MapObject_GetFacingDirection(follow);
            MapObject_CopyPositionVector(follow, &work->followPos);
            ov01_022039BC(dir, &work->followPos, &work->coordPtr);
            work->coordStart = *work->coordPtr;
            work->delta = ov01_022039E0(dir);
        } else {
            work->coordPtr = NULL;
        }
        work->state++;
    }
    case 1: {
        VecFx32 scale = sRodata.scale_022094B0;
        work->counter++;
        scale.x = FX32_ONE / work->counter;
        scale.y = FX32_ONE / work->counter;
        sub_02023E78(ov01_021F771C(work->data.fieldSystem->mapObjectManager), &scale);
        if (work->coordPtr != NULL) {
            LocalMapObject *follow = FollowMon_GetMapObject(work->data.fieldSystem);
            *work->coordPtr = work->coordStart + ((work->delta * FX32_ONE) * work->counter) / 4;
            MapObject_SetPositionVector(follow, &work->followPos);
        }
        if (work->counter >= 4) {
            work->state++;
            Field3dObject_SetActiveFlag(&work->data.manager->obj0, TRUE);
            sub_02069DC8(obj, TRUE);
            work->counter = 0;
        }
        break;
    }
    case 2:
        work->counter++;
        if (work->counter >= 0x10) {
            ov01_021F1640(param0);
        }
        break;
    }
}

static void ov01_022039BC(u8 dir, VecFx32 *pos, fx32 **out) {
    switch (dir) {
    case 0:
    case 1:
        *out = &pos->z;
        break;
    case 2:
    case 3:
        *out = &pos->x;
        break;
    }
}

static int ov01_022039E0(u8 dir) {
    switch (dir) {
    case 0:
        return -1;
    case 1:
        return 1;
    case 2:
        return -10;
    case 3:
        return 10;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }
}
