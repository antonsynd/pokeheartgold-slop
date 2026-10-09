#include "global.h"

#include "constants/heap.h"

#include "camera.h"
#include "filesystem.h"
#include "gf_3d_render.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "options.h"
#include "pm_string.h"
#include "pokepic.h"
#include "unk_0201F990.h"

typedef struct UnkOv71Template {
    u8 unk0[0x10];
    u32 unk10;
    Options *unk14;
} UnkOv71Template;

typedef struct UnkOv71Sequence {
    UnkOv71Template *unk0;
    u8 unk4[0x14C];
    u16 unk150;
    u16 unk152;
} UnkOv71Sequence;

typedef struct UnkOv71Rotation {
    u16 x;
    u16 y;
    u16 z;
} UnkOv71Rotation;

typedef struct UnkOv71Model {
    void *unk0;
    NNSG3dRenderObj unk4;
    NNSG3dResMdlSet *unk58;
    NNSG3dResMdl *unk5C;
    NNSG3dResTex *unk60;
    BOOL unk64;
    VecFx32 unk68;
    VecFx32 unk74;
    UnkOv71Rotation unk80;
    int unk88;
} UnkOv71Model;

typedef struct UnkOv71Scene {
    Camera *unk0;
    VecFx32 unk4;
    CameraAngle unk10;
    UnkOv71Model *unk18;
    u32 unk1C;
} UnkOv71Scene;

typedef struct UnkOv71SendPhase {
    UnkOv71Sequence *unk0;
    int unk4;
    u8 unk8[4];
    PokepicManager *unkC;
    void *unk10;
    u8 unk14[0x40];
    BgConfig *unk54;
    u8 unk58[0x10];
    String *unk68;
    String *unk6C;
    u8 unk70[8];
    void *unk78;
    void *unk7C;
    NARC *unk80;
} UnkOv71SendPhase;

extern BgConfig *ov71_02247384(UnkOv71Sequence *sequence);

static int _0224C040;
static void *ov71_0224C044[32];

u16 ov71_022473BC(UnkOv71Sequence *sequence);
u16 ov71_022473C4(UnkOv71Sequence *sequence);
u32 ov71_022473D0(UnkOv71Sequence *sequence);
u32 ov71_022473DC(UnkOv71Sequence *sequence);
void ov71_022473E4(void);
void ov71_022473F0(void);
void ov71_02247424(void *ptr);
UnkOv71Scene *ov71_0224744C(u32 modelCount, fx32 targetX, fx32 targetY, fx32 targetZ);
void ov71_02247498(UnkOv71Scene *scene);
void ov71_022474CC(UnkOv71Scene *scene);
void ov71_02247514(UnkOv71Model *model);
void ov71_022475C4(UnkOv71Model *model);
void ov71_022475F8(UnkOv71Model *model);
UnkOv71Model *ov71_02247610(UnkOv71Scene *scene, int index, NarcId narcId, u32 memberIndex, fx32 x, fx32 y, fx32 z, BOOL enabled);
void ov71_022476B4(const UnkOv71Model *model, VecFx32 *dest);
void ov71_022476C4(UnkOv71Model *model, const VecFx32 *src);
void ov71_022476D4(const UnkOv71Model *model, UnkOv71Rotation *dest);
void ov71_022476EC(UnkOv71Model *model, const UnkOv71Rotation *src);
void ov71_02247704(UnkOv71Model *model, BOOL enabled);
void ov71_02247708(UnkOv71Model *model, int alpha);
void ov71_02247730(UnkOv71Model *model, fx32 scale);
BOOL ov71_02247738(UnkOv71Model *model);
void ov71_022477EC(UnkOv71Scene *scene, VecFx32 *dest);
void ov71_0224780C(UnkOv71Scene *scene, const CameraAngle *angle);
void ov71_0224781C(UnkOv71Scene *scene, const CameraAngle *angle);
void ov71_0224782C(UnkOv71Scene *scene, u8 perspectiveType);
void ov71_0224783C(UnkOv71Scene *scene, u16 perspectiveAngle);
void ov71_0224784C(UnkOv71Scene *scene, fx32 targetX, fx32 targetY, fx32 targetZ);
void ov71_022478B8(UnkOv71Scene *scene);
UnkOv71SendPhase *ov71_022478C8(UnkOv71Sequence *sequence);

u16 ov71_022473BC(UnkOv71Sequence *sequence) {
    return sequence->unk150;
}

u16 ov71_022473C4(UnkOv71Sequence *sequence) {
    return sequence->unk152;
}

u32 ov71_022473D0(UnkOv71Sequence *sequence) {
    return Options_GetFrame(sequence->unk0->unk14);
}

u32 ov71_022473DC(UnkOv71Sequence *sequence) {
    return sequence->unk0->unk10;
}

void ov71_022473E4(void) {
    _0224C040 = 0;
}

void ov71_022473F0(void) {
    int i;

    if (_0224C040 != 0) {
        for (i = 0; i < _0224C040; i++) {
            Heap_Free(ov71_0224C044[i]);
        }
        _0224C040 = 0;
    }
}

void ov71_02247424(void *ptr) {
    GF_ASSERT(_0224C040 < 32);
    ov71_0224C044[_0224C040++] = ptr;
}

UnkOv71Scene *ov71_0224744C(u32 modelCount, fx32 targetX, fx32 targetY, fx32 targetZ) {
    UnkOv71Scene *scene = Heap_Alloc(HEAP_ID_57, sizeof(UnkOv71Scene));
    int i;

    if (scene != NULL) {
        ov71_0224784C(scene, targetX, targetY, targetZ);
        scene->unk18 = Heap_Alloc(HEAP_ID_57, sizeof(UnkOv71Model) * modelCount);
        scene->unk1C = modelCount;
        for (i = 0; i < modelCount; i++) {
            ov71_022475C4(&scene->unk18[i]);
        }
    }
    return scene;
}

void ov71_02247498(UnkOv71Scene *scene) {
    int i;

    for (i = 0; i < scene->unk1C; i++) {
        ov71_022475F8(&scene->unk18[i]);
    }
    Heap_Free(scene->unk18);
    ov71_022478B8(scene);
    Heap_Free(scene);
}

void ov71_022474CC(UnkOv71Scene *scene) {
    int i;

    NNS_G3dGePushMtx();
    Camera_PushLookAtToNNSGlb();
    for (i = 0; i < scene->unk1C; i++) {
        if (scene->unk18[i].unk64) {
            ov71_02247514(&scene->unk18[i]);
        }
    }
    NNS_G3dGePopMtx(1);
}

void ov71_02247514(UnkOv71Model *model) {
    MtxFx33 mtx;
    MtxFx33 rot;

    MTX_Identity33(&mtx);
    MTX_RotX33(&rot, FX_SinIdx(model->unk80.x), FX_CosIdx(model->unk80.x));
    MTX_Concat33(&rot, &mtx, &mtx);
    MTX_RotY33(&rot, FX_SinIdx(model->unk80.y), FX_CosIdx(model->unk80.y));
    MTX_Concat33(&rot, &mtx, &mtx);
    MTX_RotZ33(&rot, FX_SinIdx(model->unk80.z), FX_CosIdx(model->unk80.z));
    MTX_Concat33(&rot, &mtx, &mtx);
    if (model->unk88 != 31) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, 0, model->unk88, 0);
    }
    GF3dRender_DrawModel(&model->unk4, &model->unk68, &mtx, &model->unk74);
}

void ov71_022475C4(UnkOv71Model *model) {
    model->unk64 = FALSE;
    model->unk0 = NULL;
    model->unk80.x = model->unk80.y = model->unk80.z = 0;
    model->unk74.x = model->unk74.y = model->unk74.z = FX32_ONE;
    model->unk68.x = model->unk68.y = model->unk68.z = 0;
}

void ov71_022475F8(UnkOv71Model *model) {
    if (model->unk0 != NULL) {
        Heap_Free(model->unk0);
        model->unk0 = NULL;
        model->unk64 = FALSE;
    }
}

UnkOv71Model *ov71_02247610(UnkOv71Scene *scene, int index, NarcId narcId, u32 memberIndex, fx32 x, fx32 y, fx32 z, BOOL enabled) {
    UnkOv71Model *model = &scene->unk18[index];
    NNSG3dResMdlSet *modelSet;
    NNSG3dResTex *texture;

    model->unk0 = GfGfxLoader_LoadFromNarc(narcId, memberIndex, FALSE, HEAP_ID_57, TRUE);
    DC_FlushRange(model->unk0, GetNarcMemberSizeByIdPair(narcId, memberIndex));
    if (model->unk0 != NULL) {
        modelSet = NNS_G3dGetMdlSet(model->unk0);
        model->unk58 = modelSet;
        model->unk5C = NNS_G3dGetMdlByIdx(modelSet, 0);
        texture = NNS_G3dGetTex(model->unk0);
        model->unk60 = texture;
        GF3dRender_AllocAndLoadTexResources(texture);
        GF3dRender_BindModelSet(model->unk0, model->unk60);
        NNS_G3dRenderObjInit(&model->unk4, model->unk5C);
        model->unk68.x = x;
        model->unk68.y = y;
        model->unk68.z = z;
        model->unk88 = 31;
        model->unk64 = enabled;
    }
    return model;
}

void ov71_022476B4(const UnkOv71Model *model, VecFx32 *dest) {
    *dest = model->unk68;
}

void ov71_022476C4(UnkOv71Model *model, const VecFx32 *src) {
    model->unk68 = *src;
}

void ov71_022476D4(const UnkOv71Model *model, UnkOv71Rotation *dest) {
    dest->x = model->unk80.x;
    dest->y = model->unk80.y;
    dest->z = model->unk80.z;
}

void ov71_022476EC(UnkOv71Model *model, const UnkOv71Rotation *src) {
    model->unk80.x = src->x;
    model->unk80.y = src->y;
    model->unk80.z = src->z;
}

void ov71_02247704(UnkOv71Model *model, BOOL enabled) {
    model->unk64 = enabled;
}

void ov71_02247708(UnkOv71Model *model, int alpha) {
    model->unk88 = alpha;
    if (alpha != 31) {
        NNSi_G3dModifyPolygonAttrMask(model->unk5C, FALSE, REG_G3_POLYGON_ATTR_ALPHA_MASK);
    } else {
        NNSi_G3dModifyPolygonAttrMask(model->unk5C, TRUE, REG_G3_POLYGON_ATTR_ALPHA_MASK);
    }
}

void ov71_02247730(UnkOv71Model *model, fx32 scale) {
    model->unk74.x = scale;
    model->unk74.y = scale;
    model->unk74.z = scale;
}

BOOL ov71_02247738(UnkOv71Model *model) {
    MtxFx33 mtx;
    MtxFx33 rot;
    BOOL result;

    MTX_Identity33(&mtx);
    MTX_RotX33(&rot, FX_SinIdx(model->unk80.x), FX_CosIdx(model->unk80.x));
    MTX_Concat33(&rot, &mtx, &mtx);
    MTX_RotY33(&rot, FX_SinIdx(model->unk80.y), FX_CosIdx(model->unk80.y));
    MTX_Concat33(&rot, &mtx, &mtx);
    MTX_RotZ33(&rot, FX_SinIdx(model->unk80.z), FX_CosIdx(model->unk80.z));
    MTX_Concat33(&rot, &mtx, &mtx);
    NNS_G3dGePushMtx();
    Camera_PushLookAtToNNSGlb();
    result = sub_0201F990(model->unk5C, &model->unk68, &mtx, &model->unk74);
    NNS_G3dGePopMtx(1);
    return result;
}

void ov71_022477EC(UnkOv71Scene *scene, VecFx32 *dest) {
    *dest = Camera_GetLookAtCamPos(scene->unk0);
}

void ov71_0224780C(UnkOv71Scene *scene, const CameraAngle *angle) {
    Camera_SetAnglePos(angle, scene->unk0);
}

void ov71_0224781C(UnkOv71Scene *scene, const CameraAngle *angle) {
    Camera_AdjustAngleTarget(angle, scene->unk0);
}

void ov71_0224782C(UnkOv71Scene *scene, u8 perspectiveType) {
    Camera_ApplyPerspectiveType(perspectiveType, scene->unk0);
}

void ov71_0224783C(UnkOv71Scene *scene, u16 perspectiveAngle) {
    Camera_SetPerspectiveAngle(perspectiveAngle, scene->unk0);
}

void ov71_0224784C(UnkOv71Scene *scene, fx32 targetX, fx32 targetY, fx32 targetZ) {
    VecFx32 up;

    scene->unk0 = Camera_New(HEAP_ID_57);
    scene->unk4.x = targetX;
    scene->unk4.y = targetY;
    scene->unk4.z = targetZ;
    scene->unk10.x = 0;
    scene->unk10.y = 0;
    scene->unk10.z = 0;
    Camera_Init_FromTargetDistanceAndAngle(&scene->unk4, 0x4B << 14, &scene->unk10, 4004, 0, TRUE, scene->unk0);
    up.x = 0;
    up.y = FX32_ONE;
    up.z = 0;
    Camera_SetLookAtCamUp(&up, scene->unk0);
    Camera_SetStaticPtr(scene->unk0);
    Camera_SetPerspectiveClippingPlane(0, 1000 << FX32_SHIFT, scene->unk0);
}

void ov71_022478B8(UnkOv71Scene *scene) {
    Camera_UnsetStaticPtr();
    Camera_Delete(scene->unk0);
}

UnkOv71SendPhase *ov71_022478C8(UnkOv71Sequence *sequence) {
    UnkOv71SendPhase *phase = Heap_Alloc(HEAP_ID_57, sizeof(UnkOv71SendPhase));

    if (phase != NULL) {
        phase->unk0 = sequence;
        phase->unk4 = 0;
        phase->unk54 = ov71_02247384(sequence);
        phase->unkC = PokepicManager_Create(HEAP_ID_57);
        phase->unk10 = NULL;
        phase->unk68 = String_New(300, HEAP_ID_57);
        phase->unk6C = String_New(300, HEAP_ID_57);
        phase->unk78 = NULL;
        phase->unk7C = NULL;
        phase->unk80 = NARC_New(NARC_a_1_8_0, HEAP_ID_57);
    }
    return phase;
}
