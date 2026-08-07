#include "overlay_01_021FD1B8.h"

#include "global.h"

#include "field/overlay_01_021FD1B8.h"

#include "map_object.h"

typedef struct {
    u8 unk0[0xc];
    NNSG3dResMdl *unkC;
    u8 unk10[4];
} UnkOv01_021FD1B8_sub;

typedef struct {
    u32 id;
    UnkOv01_021FD1B8_sub sub;
    NNSG3dRenderObj renderObj;
} UnkOv01_021FD1B8_Element;

typedef struct {
    void *unk0;
    u32 count;
    UnkOv01_021FD1B8_Element *array;
} UnkOv01_021FD1B8;

typedef struct {
    int unk0;
    FieldSystem *fieldSystem;
    LocalMapObject *mapObject;
} UnkOv01_021FD1B8_Data;

typedef struct {
    int unk0;
    u32 unk4;
    u32 unk8;
    VecFx32 unkC;
    NNSG3dRenderObj *unk18;
    UnkOv01_021FD1B8_Data data;
} UnkOv01_021FD1B8_Work;

typedef struct {
    u32 id;
    u32 unk4;
} UnkOv01_021FD1B8_Entry;

typedef BOOL (*UnkOv01_021FD1B8_Cb1)(void *, UnkOv01_021FD1B8_Work *);
typedef void (*UnkOv01_021FD1B8_Cb2)(void *, UnkOv01_021FD1B8_Work *);

typedef struct {
    int unk0;
    UnkOv01_021FD1B8_Cb1 unk4;
    UnkOv01_021FD1B8_Cb1 unk8;
    UnkOv01_021FD1B8_Cb2 unkC;
    UnkOv01_021FD1B8_Cb2 unk10;
} UnkOv01_021FD1B8_Template;

extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_02069784(UnkOv01_021FD1B8_sub *a0);
extern void sub_02069978(NNSG3dRenderObj *a0, UnkOv01_021FD1B8_sub *a1);
extern void sub_020699BC(NNSG3dRenderObj *a0, VecFx32 *a1);

static void ov01_021FD1E8(UnkOv01_021FD1B8_Element *element, u32 id, int a2, FieldSystem *fieldSystem);
static void ov01_021FD20C(UnkOv01_021FD1B8_Element *element);
static void ov01_021FD21C(UnkOv01_021FD1B8 *mgr);
static UnkOv01_021FD1B8_Element *ov01_021FD244(UnkOv01_021FD1B8 *mgr, u32 id);
static void ov01_021FD258(FieldSystem *fieldSystem, int count);
static void ov01_021FD290(FieldSystem *fieldSystem, u32 id, int a2);
static NNSG3dRenderObj *ov01_021FD2CC(FieldSystem *fieldSystem, u32 id);
static BOOL ov01_021FD328(void *a0, UnkOv01_021FD1B8_Work *work);
static BOOL ov01_021FD378(void *a0, UnkOv01_021FD1B8_Work *work);
static void ov01_021FD37C(void *a0, UnkOv01_021FD1B8_Work *work);
static void ov01_021FD3E0(void *a0, UnkOv01_021FD1B8_Work *work);

static const UnkOv01_021FD1B8_Template ov01_02208E1C = {
    0x28, ov01_021FD328, ov01_021FD378, ov01_021FD37C, ov01_021FD3E0
};

static const UnkOv01_021FD1B8_Entry ov01_02208E30[] = {
    { 0x0B7, 0x54 },
    { 0x100, 0x6B },
    { 0x101, 0x6C },
    { 0x0FD, 0x6D },
    { 0x0FB, 0x6E },
    { 0x0FC, 0x6F },
    { 0x0FE, 0x70 },
    { 0x0FF, 0x71 },
    { 0x120, 0x72 },
    { 0x123, 0x74 },
    { 0x124, 0x73 },
    { 0x121, 0x75 },
};

void *ov01_021FD1B8(void *a0) {
    UnkOv01_021FD1B8 *mgr = (UnkOv01_021FD1B8 *)ov01_021F1430(a0, sizeof(UnkOv01_021FD1B8), 0, 0);
    mgr->unk0 = a0;
    return mgr;
}

void ov01_021FD1CC(void *a0) {
    UnkOv01_021FD1B8 *mgr = a0;
    ov01_021FD21C(mgr);
    if (mgr->array != NULL) {
        ov01_021F1448(mgr->array);
    }
    ov01_021F1448(mgr);
}

static void ov01_021FD1E8(UnkOv01_021FD1B8_Element *element, u32 id, int a2, FieldSystem *fieldSystem) {
    element->id = id;
    ov01_021F19F4(fieldSystem, (UnkOv01_021FFECC_sub *)&element->sub, 0, a2, 0);
    sub_02069978(&element->renderObj, &element->sub);
}

static void ov01_021FD20C(UnkOv01_021FD1B8_Element *element) {
    element->id = 0xFFFF;
    sub_02069784(&element->sub);
}

static void ov01_021FD21C(UnkOv01_021FD1B8 *mgr) {
    u32 i;
    u32 count = mgr->count;
    UnkOv01_021FD1B8_Element *element = mgr->array;
    for (i = 0; i < count; i++) {
        if (element->id != 0xFFFF) {
            ov01_021FD20C(element);
        }
        element++;
    }
}

static UnkOv01_021FD1B8_Element *ov01_021FD244(UnkOv01_021FD1B8 *mgr, u32 id) {
    u32 count = mgr->count;
    UnkOv01_021FD1B8_Element *element = mgr->array;
    do {
        if (element->id == id) {
            return element;
        }
        element++;
    } while (--count != 0);
    return NULL;
}

static void ov01_021FD258(FieldSystem *fieldSystem, int count) {
    UnkOv01_021FD1B8 *mgr = (UnkOv01_021FD1B8 *)ov01_021F1450(fieldSystem, 0x14);
    UnkOv01_021FD1B8_Element *element;
    int i;
    GF_ASSERT(count != 0);
    mgr->count = count;
    mgr->array = (UnkOv01_021FD1B8_Element *)ov01_021F1430(fieldSystem, sizeof(UnkOv01_021FD1B8_Element) * count, 0, 0);
    element = mgr->array;
    i = count;
    do {
        element->id = 0xFFFF;
        element++;
    } while (--i != 0);
}

static void ov01_021FD290(FieldSystem *fieldSystem, u32 id, int a2) {
    UnkOv01_021FD1B8 *mgr = (UnkOv01_021FD1B8 *)ov01_021F1450(fieldSystem, 0x14);
    if (ov01_021FD244(mgr, id) == NULL) {
        UnkOv01_021FD1B8_Element *element = ov01_021FD244(mgr, 0xFFFF);
        if (element == NULL) {
            GF_AssertFail();
            return;
        }
        ov01_021FD1E8(element, id, a2, fieldSystem);
    }
}

static NNSG3dRenderObj *ov01_021FD2CC(FieldSystem *fieldSystem, u32 id) {
    UnkOv01_021FD1B8 *mgr = (UnkOv01_021FD1B8 *)ov01_021F1450(fieldSystem, 0x14);
    UnkOv01_021FD1B8_Element *element = ov01_021FD244(mgr, id);
    GF_ASSERT(element != NULL);
    return &element->renderObj;
}

void ov01_021FD2EC(LocalMapObject *mapObject, VecFx32 *a1) {
    UnkOv01_021FD1B8_Data data;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.unk0 = MapObject_GetSpriteID(mapObject);
    data.fieldSystem = fieldSystem;
    data.mapObject = mapObject;
    ov01_021F1620(fieldSystem, (const UnkOv01_02209280 *)&ov01_02208E1C, a1, 0, (UnkOv01_021FFF5C *)&data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static BOOL ov01_021FD328(void *a0, UnkOv01_021FD1B8_Work *work) {
    work->data = *(UnkOv01_021FD1B8_Data *)sub_02068D98(a0);
    work->unk4 = MapObject_GetID(work->data.mapObject);
    work->unk18 = ov01_021FD2CC(work->data.fieldSystem, work->data.unk0);
    if (MapObject_CheckFlag25(work->data.mapObject) == 1) {
        work->unk8 = sub_0205F544(work->data.mapObject);
    } else {
        work->unk8 = MapObject_GetMapID(work->data.mapObject);
    }
    sub_02068DB8(a0, &work->unkC);
    return TRUE;
}

static BOOL ov01_021FD378(void *a0, UnkOv01_021FD1B8_Work *work) {
}

static void ov01_021FD37C(void *a0, UnkOv01_021FD1B8_Work *work) {
    VecFx32 position;
    VecFx32 facing;
    LocalMapObject *mapObject = work->data.mapObject;
    if (sub_0205F0A8(mapObject, work->unk4, work->unk8) == 0) {
        ov01_021F1640((int)a0);
        return;
    }
    MapObject_CopyPositionVector(mapObject, &position);
    MapObject_CopyFacingVector(mapObject, &facing);
    position.x = facing.x + work->unkC.x + position.x;
    position.y = facing.y + work->unkC.y + position.y;
    position.z = facing.z + work->unkC.z + position.z;
    sub_02068DA8(a0, &position);
}

static void ov01_021FD3E0(void *a0, UnkOv01_021FD1B8_Work *work) {
    VecFx32 position;
    sub_02068DB8(a0, &position);
    sub_020699BC(work->unk18, &position);
}

void FieldEffect_InitRenderObject(FieldEffectManager *fieldEffectManager) {
    const UnkOv01_021FD1B8_Entry *entry = ov01_02208E30;
    u32 i = 12;
    ov01_021FD258((FieldSystem *)fieldEffectManager, i);
    do {
        ov01_021FD290((FieldSystem *)fieldEffectManager, entry->id, entry->unk4);
        entry++;
    } while (--i);
}
