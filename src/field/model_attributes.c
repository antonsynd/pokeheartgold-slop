#include "field/model_attributes.h"

#include <nitro/mi/memory.h>
#include <nnsys/g3d/glbstate.h>

#include "global.h"

#include "constants/heap.h"

#include "heap.h"

struct NNSG3dResMdl;

extern void NNS_G3dMdlSetMdlDiffAll(struct NNSG3dResMdl *model, GXRgb val);
extern void NNS_G3dMdlSetMdlAmbAll(struct NNSG3dResMdl *model, GXRgb val);
extern void NNS_G3dMdlSetMdlSpecAll(struct NNSG3dResMdl *model, GXRgb val);
extern void NNS_G3dMdlSetMdlEmiAll(struct NNSG3dResMdl *model, GXRgb val);
extern void NNS_G3dMdlSetMdlLightEnableFlagAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlPolygonModeAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlCullModeAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlPolygonIDAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlAlphaAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlFogEnableFlagAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlDepthTestCondAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdl1DotAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlFarClipAll(struct NNSG3dResMdl *model, u32 val);
extern void NNS_G3dMdlSetMdlXLDepthUpdateAll(struct NNSG3dResMdl *model, u32 val);

void ov01_021EA9B0(ModelAttributes *modelAttributes, struct NNSG3dResMdl *model, u32 flags);
void ov01_021EAAB8(ModelAttributes *modelAttributes, int lightId, fx16 x, fx16 y, fx16 z);
void ov01_021EAAE0(ModelAttributes *modelAttributes, int lightId, GXRgb color);
void ov01_021EAAF4(ModelAttributes *modelAttributes, GXRgb diffuse, u32 setDiffuseColorAsVertexColor, int applyGlobal);
void ov01_021EAB08(ModelAttributes *modelAttributes, GXRgb ambient, int applyGlobal);
void ov01_021EAB1C(ModelAttributes *modelAttributes, GXRgb specular, u32 enableSpecularReflectShininessTable, int applyGlobal);
void ov01_021EAB30(ModelAttributes *modelAttributes, GXRgb emission, int applyGlobal);

ModelAttributes *ModelAttributes_Init(void) {
    ModelAttributes *modelAttributes = Heap_Alloc(HEAP_ID_FIELD1, 0x48);
    MIi_CpuClear32(0, (u32 *)modelAttributes, 0x48);
    return modelAttributes;
}

void ModelAttributes_Free(ModelAttributes **modelAttributes) {
    Heap_FreeExplicit(HEAP_ID_FIELD1, *modelAttributes);
    *modelAttributes = NULL;
}

void ModelAttributes_ApplyGlobal(ModelAttributes *modelAttributes, int attributes) {
    int i;

    for (i = 0; i < 4; i++) {
        if (attributes & (1 << i)) {
            NNS_G3dGlbLightVector((GXLightId)i, modelAttributes->lightVectors[i].x, modelAttributes->lightVectors[i].y, modelAttributes->lightVectors[i].z);
        }
        if (attributes & (1 << (i + 4))) {
            NNS_G3dGlbLightColor((GXLightId)i, modelAttributes->lightColors[i]);
        }
    }

    if (attributes & (3 << 8)) {
        NNS_G3dGlbMaterialColorDiffAmb(modelAttributes->diffuse, modelAttributes->ambient, modelAttributes->setDiffuseColorAsVertexColor);
    }

    if (attributes & (3 << 0xa)) {
        NNS_G3dGlbMaterialColorSpecEmi(modelAttributes->specular, modelAttributes->emission, modelAttributes->enableSpecularReflectShininessTable);
    }

    if (attributes >= (1 << 0xc)) {
        NNS_G3dGlbPolygonAttr(modelAttributes->lightMask, (GXPolygonMode)modelAttributes->polygonMode, (GXCull)modelAttributes->cullMode, modelAttributes->id, modelAttributes->alpha, modelAttributes->miscFlags);
    }
}

void ov01_021EA9B0(ModelAttributes *modelAttributes, struct NNSG3dResMdl *model, u32 flags) {
    u32 mask;

    mask = 1 << 8;
    if (flags & mask) {
        NNS_G3dMdlSetMdlDiffAll(model, modelAttributes->diffuse);
    }

    mask = 2 << 8;
    if (flags & mask) {
        NNS_G3dMdlSetMdlAmbAll(model, modelAttributes->ambient);
    }

    mask = 1 << 0xa;
    if (flags & mask) {
        NNS_G3dMdlSetMdlSpecAll(model, modelAttributes->specular);
    }

    mask = 2 << 0xa;
    if (flags & mask) {
        NNS_G3dMdlSetMdlEmiAll(model, modelAttributes->emission);
    }

    mask = 1 << 0xc;
    if (flags & mask) {
        NNS_G3dMdlSetMdlLightEnableFlagAll(model, modelAttributes->lightMask);
    }

    mask = 2 << 0xc;
    if (flags & mask) {
        NNS_G3dMdlSetMdlPolygonModeAll(model, modelAttributes->polygonMode);
    }

    mask = 1 << 0xe;
    if (flags & mask) {
        NNS_G3dMdlSetMdlCullModeAll(model, modelAttributes->cullMode);
    }

    mask = 2 << 0xe;
    if (flags & mask) {
        NNS_G3dMdlSetMdlPolygonIDAll(model, modelAttributes->id);
    }

    mask = 1 << 0x10;
    if (flags & mask) {
        NNS_G3dMdlSetMdlAlphaAll(model, modelAttributes->alpha);
    }

    mask = 2 << 0x10;
    if (flags & mask) {
        NNS_G3dMdlSetMdlFogEnableFlagAll(model, modelAttributes->miscFlags & (mask >> 2));
    }

    mask = 1 << 0x12;
    if (flags & mask) {
        NNS_G3dMdlSetMdlDepthTestCondAll(model, modelAttributes->miscFlags & (mask >> 4));
    }

    mask = 2 << 0x12;
    if (flags & mask) {
        NNS_G3dMdlSetMdl1DotAll(model, modelAttributes->miscFlags & (mask >> 6));
    }

    mask = 1 << 0x14;
    if (flags & mask) {
        NNS_G3dMdlSetMdlFarClipAll(model, modelAttributes->miscFlags & (mask >> 8));
    }

    mask = 2 << 0x14;
    if (flags & mask) {
        NNS_G3dMdlSetMdlXLDepthUpdateAll(model, modelAttributes->miscFlags & (mask >> 0xa));
    }
}

void ov01_021EAAB8(ModelAttributes *modelAttributes, int lightId, fx16 x, fx16 y, fx16 z) {
    modelAttributes->lightVectors[lightId].x = x;
    modelAttributes->lightVectors[lightId].y = y;
    modelAttributes->lightVectors[lightId].z = z;
    NNS_G3dGlbLightVector((GXLightId)lightId, modelAttributes->lightVectors[lightId].x, modelAttributes->lightVectors[lightId].y, modelAttributes->lightVectors[lightId].z);
}

void ov01_021EAAE0(ModelAttributes *modelAttributes, int lightId, GXRgb color) {
    modelAttributes->lightColors[lightId] = color;
    NNS_G3dGlbLightColor((GXLightId)lightId, modelAttributes->lightColors[lightId]);
}

void ov01_021EAAF4(ModelAttributes *modelAttributes, GXRgb diffuse, u32 setDiffuseColorAsVertexColor, int applyGlobal) {
    modelAttributes->diffuse = diffuse;
    modelAttributes->setDiffuseColorAsVertexColor = setDiffuseColorAsVertexColor;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 1 << 8);
    }
}

void ov01_021EAB08(ModelAttributes *modelAttributes, GXRgb ambient, int applyGlobal) {
    modelAttributes->ambient = ambient;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 2 << 8);
    }
}

void ov01_021EAB1C(ModelAttributes *modelAttributes, GXRgb specular, u32 enableSpecularReflectShininessTable, int applyGlobal) {
    modelAttributes->specular = specular;
    modelAttributes->enableSpecularReflectShininessTable = enableSpecularReflectShininessTable;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 1 << 0xa);
    }
}

void ov01_021EAB30(ModelAttributes *modelAttributes, GXRgb emission, int applyGlobal) {
    modelAttributes->emission = emission;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 2 << 0xa);
    }
}

void ModelAttributes_SetPolygonMode(ModelAttributes *modelAttributes, GXPolygonMode polygonMode, BOOL applyGlobal) {
    modelAttributes->polygonMode = polygonMode;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 2 << 0xc);
    }
}

void ModelAttributes_SetCullMode(ModelAttributes *modelAttributes, GXCull cullMode, BOOL applyGlobal) {
    modelAttributes->cullMode = cullMode;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 1 << 0xe);
    }
}

void ModelAttributes_SetAlpha(ModelAttributes *modelAttributes, int alpha, BOOL applyGlobal) {
    modelAttributes->alpha = alpha;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 1 << 0x10);
    }
}

void ModelAttributes_SetMiscAttrEnabled(ModelAttributes *modelAttributes, int miscFlagsMask, BOOL enable, BOOL applyGlobal) {
    if (enable == 1) {
        if (modelAttributes->miscFlags & miscFlagsMask) {
            return;
        }
    } else {
        if (!(modelAttributes->miscFlags & miscFlagsMask)) {
            return;
        }
    }
    modelAttributes->miscFlags = miscFlagsMask ^ modelAttributes->miscFlags;
    if (applyGlobal == 1) {
        ModelAttributes_ApplyGlobal(modelAttributes, 1 << 0xc);
    }
}
