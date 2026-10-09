#include "overlay_105.h"

#include "global.h"

#include "field/model_attributes.h"

#include "camera.h"
#include "filesystem.h"
#include "gf_3d_render.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "system.h"
#include "unk_02005D10.h"
#include "unk_02026E30.h"
#include "unk_0208805C.h"

typedef struct UnkStruct_ov105_Args {
    u8 unk0;
    u8 unk1;
    ModelAttributes *unk4;
} UnkStruct_ov105_Args;

typedef struct UnkStruct_ov105_Ids {
    u32 modelId;
    u16 animIds[4];
} UnkStruct_ov105_Ids;

typedef struct UnkStruct_ov105_Clip {
    u16 near;
    u16 far;
} UnkStruct_ov105_Clip;

typedef struct UnkStruct_ov105_Model {
    NNSG3dRenderObj renderObj;
    NNSG3dResMdl *model;
    NNSG3dResFileHeader *header;
    void *animFiles[4];
    NNSG3dAnmObj *animObjs[4];
} UnkStruct_ov105_Model;

typedef struct UnkStruct_ov105_021E5900 {
    Camera *camera;
    UnkStruct_ov105_Model models[1];
    NNSFndAllocator allocator;
    VecFx32 target;
    u8 unk9c;
    u8 unk9d;
    u8 unk9e;
    u8 unk9f;
    u8 unkA0;
    u8 unkA1;
    const u32 *unkA4;
} UnkStruct_ov105_021E5900;

extern const u32 _021E5DC4[];
extern const u32 ov105_021E5DC8[];
extern const UnkStruct_ov105_Clip ov105_021E5DCC[2][1];
extern const VecFx32 ov105_021E5DD4;
extern const GXRgb ov105_021E5DE0[8];
extern const VecFx32 ov105_021E5DF0[2][1];
extern const MtxFx33 ov105_021E5E08;
extern const CameraParam ov105_021E5E2C[2][1];
extern const GraphicsBanks ov105_021E5E54;
extern const UnkStruct_ov105_Ids _021E5E80;
extern const UnkStruct_ov105_Ids ov105_021E5E8C;
extern const UnkStruct_ov105_Ids ov105_021E5E98;
extern const UnkStruct_ov105_Ids ov105_021E5EA4;

static void ov105_021E5B68(void);
static void ov105_021E5BCC(UnkStruct_ov105_021E5900 *data);
static void ov105_021E5C84(void);
static void ov105_021E5CA4(UnkStruct_ov105_021E5900 *data);

BOOL ov105_021E5900(OverlayManager *man, int *state) {
    UnkStruct_ov105_021E5900 *data;
    UnkStruct_ov105_Args *args;
    u8 i;

    Heap_Create(HEAP_ID_3, HEAP_ID_151, 0x31000);
    data = OverlayManager_CreateAndGetData(man, sizeof(UnkStruct_ov105_021E5900), HEAP_ID_151);
    memset(data, 0, sizeof(UnkStruct_ov105_021E5900));
    args = OverlayManager_GetArgs(man);
    data->unk9c = args->unk0;
    data->unk9d = args->unk1;
    data->unk9e = 0;
    data->camera = Camera_New(HEAP_ID_151);
    ov105_021E5B68();
    ov105_021E5CA4(data);
    ov105_021E5BCC(data);
    for (i = 0; i < 4; i++) {
        NNS_G3dGlbLightVector((GXLightId)i, args->unk4->lightVectors[i].x, args->unk4->lightVectors[i].y, args->unk4->lightVectors[i].z);
        NNS_G3dGlbLightColor((GXLightId)i, args->unk4->lightColors[i]);
    }
    NNS_G3dGlbMaterialColorDiffAmb(args->unk4->diffuse, args->unk4->ambient, args->unk4->setDiffuseColorAsVertexColor);
    NNS_G3dGlbMaterialColorSpecEmi(args->unk4->specular, args->unk4->emission, args->unk4->enableSpecularReflectShininessTable);
    NNS_G3dGlbPolygonAttr(args->unk4->lightMask, args->unk4->polygonMode, args->unk4->cullMode, args->unk4->id, args->unk4->alpha, args->unk4->miscFlags);
    BeginNormalPaletteFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, 0, 6, 1, HEAP_ID_151);
    return TRUE;
}

BOOL ov105_021E59DC(OverlayManager *man, int *state) {
    UnkStruct_ov105_021E5900 *data = OverlayManager_GetData(man);
    UnkStruct_ov105_Model *model = &data->models[data->unk9f];
    BOOL ret = FALSE;
    u8 i;
    VecFx32 translation;
    MtxFx33 rotation;
    VecFx32 scale;

    switch (*state) {
    case 0:
        if (model->animObjs[0]->frame + FX32_ONE == NNS_G3dAnmObjGetNumFrame(model->animObjs[0])) {
            sub_020880CC(1, HEAP_ID_151);
            (*state)++;
        }
        break;
    case 1:
        if (IsPaletteFadeFinished()) {
            data->unk9f++;
            data->unkA0++;
            if (data->unkA0 >= 1) {
                ret = TRUE;
            } else {
                ov105_021E5BCC(data);
                sub_020880CC(0, HEAP_ID_151);
                *state = 0;
            }
        }
        break;
    }

    data->unkA1++;
    if (data->unkA1 == 30) {
        PlaySE(data->unkA4[data->unk9f]);
    }

    for (i = 0; i < 4; i++) {
        NNSG3dAnmObj *animObj = model->animObjs[i];
        if (animObj->frame + FX32_ONE < NNS_G3dAnmObjGetNumFrame(animObj)) {
            NNS_G3dAnmObjSetFrame(animObj, animObj->frame + FX32_ONE);
        }
    }

    rotation = ov105_021E5E08;
    scale = ov105_021E5DD4;
    translation.x = 0;
    translation.y = 0;
    translation.z = 0;
    Thunk_G3X_Reset();
    Camera_PushLookAtToNNSGlb();
    GF3dRender_DrawModel(&model->renderObj, &translation, &rotation, &scale);
    RequestSwap3DBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
    return ret;
}

BOOL ov105_021E5B14(OverlayManager *man, int *state) {
    UnkStruct_ov105_021E5900 *data = OverlayManager_GetData(man);
    UnkStruct_ov105_Model *model = &data->models[0];
    u8 i;

    for (i = 0; i < 4; i++) {
        NNS_G3dFreeAnmObj(&data->allocator, model->animObjs[i]);
        Heap_Free(model->animFiles[i]);
    }
    Heap_Free(model->header);
    Camera_Delete(data->camera);
    OverlayManager_FreeData(man);
    GF3dRender_DeleteSimpleManager();
    Heap_Destroy(HEAP_ID_151);
    return TRUE;
}

static void ov105_021E5B68(void) {
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    reg_GX_DISPCNT &= 0xFFFFE0FF;
    reg_GXS_DB_DISPCNT &= 0xFFFFE0FF;
    ov105_021E5C84();
    GF3dRender_InitSimpleManager(HEAP_ID_151);
    reg_G3X_DISP3DCNT = (reg_G3X_DISP3DCNT & 0xFFFFCFFF) | 0x20;
    G3X_SetEdgeColorTable(ov105_021E5DE0);
    GfGfx_SwapDisplay();
}

static void ov105_021E5BCC(UnkStruct_ov105_021E5900 *data) {
    VecFx32 target;
    u8 frame;
    u8 type;
    const CameraParam *param;

    target.x = 0;
    target.y = 0;
    target.z = 0;
    data->target = target;
    frame = data->unk9f;
    type = data->unk9c;
    param = &ov105_021E5E2C[type][frame];
    Camera_Init_FromTargetDistanceAndAngle(&data->target, param->distance, &param->angle, param->perspective, param->perspectiveType, TRUE, data->camera);
    Camera_OffsetLookAtPosAndTarget(&ov105_021E5DF0[type][frame], data->camera);
    Camera_SetPerspectiveClippingPlane(ov105_021E5DCC[type][frame].near << 12, ov105_021E5DCC[type][frame].far << 12, data->camera);
    Camera_SetStaticPtr(data->camera);
}

static void ov105_021E5C84(void) {
    GraphicsBanks banks = ov105_021E5E54;
    GfGfx_SetBanks(&banks);
}

static void ov105_021E5CA4(UnkStruct_ov105_021E5900 *data) {
    NARC *narc;
    const UnkStruct_ov105_Ids *ids;
    UnkStruct_ov105_Model *model;
    NNSG3dResTex *tex;
    void *anim;
    u8 i;

    narc = NARC_New(0xf0, HEAP_ID_151);
    HeapExp_FndInitAllocator(&data->allocator, HEAP_ID_151, 4);
    if (data->unk9c == 0) {
        if (data->unk9d == 0) {
            ids = &ov105_021E5E8C;
        } else {
            ids = &_021E5E80;
        }
        data->unkA4 = ov105_021E5DC8;
    } else {
        if (data->unk9d == 0) {
            ids = &ov105_021E5EA4;
        } else {
            ids = &ov105_021E5E98;
        }
        data->unkA4 = _021E5DC4;
    }
    model = &data->models[0];
    model->header = NARC_AllocAndReadWholeMember(narc, ids->modelId, HEAP_ID_151);
    GF3dRender_InitObjFromHeader(&model->renderObj, &model->model, &model->header);
    tex = NNS_G3dGetTex(data->models[0].header);
    NNS_G3dMdlUseGlbDiff(model->model);
    NNS_G3dMdlUseGlbAmb(model->model);
    NNS_G3dMdlUseGlbSpec(model->model);
    NNS_G3dMdlUseGlbEmi(model->model);
    for (i = 0; i < 4; i++) {
        model->animFiles[i] = NARC_AllocAndReadWholeMember(narc, ids->animIds[i], HEAP_ID_151);
        anim = NNS_G3dGetAnmByIdx(model->animFiles[i], 0);
        model->animObjs[i] = NNS_G3dAllocAnmObj(&data->allocator, anim, model->model);
        NNS_G3dAnmObjInit(model->animObjs[i], anim, model->model, tex);
        NNS_G3dRenderObjAddAnmObj(&model->renderObj, model->animObjs[i]);
    }
    NARC_Delete(narc);
}
