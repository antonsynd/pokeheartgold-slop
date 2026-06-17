#include "global.h"

#include "camera.h"
#include "gf_3d_render.h"
#include "map_object.h"

typedef struct UnkOv01_02203E40 {
    void *unk0;
    NNSG3dRenderObj unk4;
    void *unk58;
    void *unk5c;
    void *unk60;
    f32 unk64;
} UnkOv01_02203E40;

typedef struct {
    void *unk0;
    UnkOv01_02203E40 *obj;
    LocalMapObject *mapObject;
    fx32 dist;
    VecFx32 direction;
} UnkOv01_02203E40_Data;

typedef struct {
    int unk0;
    UnkOv01_02203E40_Data data;
} UnkOv01_02203E40_Work;

typedef BOOL (*UnkOv01_02203E40_Cb1)(void *, UnkOv01_02203E40_Work *);
typedef void (*UnkOv01_02203E40_Cb2)(void *, UnkOv01_02203E40_Work *);

typedef struct {
    int unk0;
    UnkOv01_02203E40_Cb1 unk4;
    UnkOv01_02203E40_Cb1 unk8;
    UnkOv01_02203E40_Cb2 unkC;
    UnkOv01_02203E40_Cb2 unk10;
} UnkOv01_02203E40_Template;

typedef struct {
    u8 pad[0x24];
    Camera *camera;
} UnkOv01_02203E40_Renderer;

extern UnkOv01_02203E40 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_02203E40_Renderer *ov01_021F1468(void *a0);
extern UnkOv01_02203E40 *ov01_021F1450(void *a0, int a1);
extern void *ov01_021F1620(void *a0, const UnkOv01_02203E40_Template *a1, VecFx32 *a2, int a3, UnkOv01_02203E40_Data *a4, int a5);
extern void ov01_021F1448(void *a0);
extern void ov01_021F1AB8(void *a0, int a1, int a2, void *a3, void *a4, void *a5);

extern void *sub_02068D74(void *work);
extern u32 sub_02068D90(void *work);
extern void *sub_02068D98(void *work);
extern void sub_02068DA8(void *work, VecFx32 *src);
extern void sub_02068DB8(void *work, VecFx32 *dst);

extern void VEC_MultAdd(fx32 factor, const VecFx32 *a, const VecFx32 *b, VecFx32 *axb);
extern fx32 VEC_Distance(const VecFx32 *a, const VecFx32 *b);

UnkOv01_02203E40 *ov01_02203E40(void *a0);
void ov01_02203E64(UnkOv01_02203E40 *obj);
static void ov01_02203E74(UnkOv01_02203E40 *obj);
static void ov01_02203E94(UnkOv01_02203E40 *obj);
void *ov01_02203EA0(LocalMapObject *mapObject);
void ov01_02203F2C(void *work, f32 value);
static BOOL ov01_02203F3C(void *work, UnkOv01_02203E40_Work *a1);
static BOOL ov01_02203F68(void *work, UnkOv01_02203E40_Work *a1);
static void ov01_02203F6C(void *work, UnkOv01_02203E40_Work *a1);
static void ov01_02203F98(void *work, UnkOv01_02203E40_Work *a1);

static const UnkOv01_02203E40_Template ov01_022095B4 = {
    0x20, ov01_02203F3C, ov01_02203F68, ov01_02203F6C, ov01_02203F98
};

static const MtxFx33 ov01_022095C8 = {
    0x1000, 0, 0, 0, 0x1000, 0, 0, 0, 0x1000
};

UnkOv01_02203E40 *ov01_02203E40(void *a0) {
    UnkOv01_02203E40 *obj = ov01_021F1430(a0, sizeof(UnkOv01_02203E40), 0, 0);
    obj->unk0 = a0;
    obj->unk60 = NULL;
    obj->unk64 = 1.0f;
    ov01_02203E74(obj);
    return obj;
}

void ov01_02203E64(UnkOv01_02203E40 *obj) {
    ov01_02203E94(obj);
    ov01_021F1448(obj);
}

static void ov01_02203E74(UnkOv01_02203E40 *obj) {
    ov01_021F1AB8(obj->unk0, 0x6a, 0, &obj->unk4, &obj->unk58, &obj->unk5c);
}

static void ov01_02203E94(UnkOv01_02203E40 *obj) {
    ov01_021F1448(obj->unk5c);
}

void *ov01_02203EA0(LocalMapObject *mapObject) {
    UnkOv01_02203E40_Data temp;
    VecFx32 pos2;
    VecFx32 pos1;
    VecFx32 camPos;

    void *fieldSystem = ov01_021F146C(mapObject);
    UnkOv01_02203E40_Renderer *renderer = ov01_021F1468(fieldSystem);
    temp.unk0 = fieldSystem;
    UnkOv01_02203E40 *obj = ov01_021F1450(fieldSystem, 0x13);
    temp.obj = obj;
    if (obj->unk60 != NULL) {
        return obj->unk60;
    }
    temp.mapObject = mapObject;
    MapObject_CopyPositionVector(mapObject, &pos1);
    camPos = Camera_GetLookAtCamPos(renderer->camera);
    VEC_Subtract(&camPos, &pos1, &temp.direction);
    temp.dist = VEC_Distance(&camPos, &pos1);
    temp.dist = temp.dist / 3;
    VEC_Normalize(&temp.direction, &temp.direction);
    MapObject_CopyPositionVector(mapObject, &pos2);
    temp.obj->unk60 = ov01_021F1620(fieldSystem, &ov01_022095B4, &pos2, 0, &temp, MapObject_GetPriorityPlusValue(mapObject, 2));
    return temp.obj->unk60;
}

void ov01_02203F2C(void *work, f32 value) {
    ((UnkOv01_02203E40_Work *)sub_02068D74(work))->data.obj->unk64 = value;
}

static BOOL ov01_02203F3C(void *work, UnkOv01_02203E40_Work *a1) {
    a1->data = *(UnkOv01_02203E40_Data *)sub_02068D98(work);
    a1->unk0 = sub_02068D90(work);
    return TRUE;
}

static BOOL ov01_02203F68(void *work, UnkOv01_02203E40_Work *a1) {
}

static void ov01_02203F6C(void *work, UnkOv01_02203E40_Work *a1) {
    VecFx32 pos;
    VecFx32 result;
    MapObject_CopyPositionVector(a1->data.mapObject, &pos);
    VEC_MultAdd(a1->data.dist, &a1->data.direction, &pos, &result);
    sub_02068DA8(work, &result);
}

static void ov01_02203F98(void *work, UnkOv01_02203E40_Work *a1) {
    VecFx32 translation;
    VecFx32 scale;
    MtxFx33 rotation = ov01_022095C8;
    scale.x = (fx32)(4096.0f * a1->data.obj->unk64);
    scale.y = (fx32)(4096.0f * a1->data.obj->unk64);
    scale.z = (fx32)(4096.0f * a1->data.obj->unk64);
    sub_02068DB8(work, &translation);
    GF3dRender_DrawModel(&a1->data.obj->unk4, &translation, &rotation, &scale);
}
