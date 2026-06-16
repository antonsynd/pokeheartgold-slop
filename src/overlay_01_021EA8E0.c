#include "overlay_01_021EA8E0.h"

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

OV01_G3dConfig *ov01_021EA8E0(void) {
    OV01_G3dConfig *config = Heap_Alloc(HEAP_ID_FIELD1, 0x48);
    MIi_CpuClear32(0, (u32 *)config, 0x48);
    return config;
}

void ov01_021EA8FC(OV01_G3dConfigHolder *holder) {
    Heap_FreeExplicit(HEAP_ID_FIELD1, holder->unk0);
    holder->unk0 = NULL;
}

void ov01_021EA910(OV01_G3dConfig *config, int flags) {
    int i;

    for (i = 0; i < 4; i++) {
        if (flags & (1 << i)) {
            NNS_G3dGlbLightVector((GXLightId)i, config->lightVector[i][0], config->lightVector[i][1], config->lightVector[i][2]);
        }
        if (flags & (1 << (i + 4))) {
            NNS_G3dGlbLightColor((GXLightId)i, config->lightColor[i]);
        }
    }

    if (flags & (3 << 8)) {
        NNS_G3dGlbMaterialColorDiffAmb(config->diffuse, config->ambient, config->diffAmbMisc);
    }

    if (flags & (3 << 0xa)) {
        NNS_G3dGlbMaterialColorSpecEmi(config->specular, config->emission, config->specEmiMisc);
    }

    if (flags >= (1 << 0xc)) {
        NNS_G3dGlbPolygonAttr(config->lightEnableFlag, (GXPolygonMode)config->polygonMode, (GXCull)config->cullMode, config->polygonID, config->alpha, config->polygonAttrMisc);
    }
}

void ov01_021EA9B0(OV01_G3dConfig *config, struct NNSG3dResMdl *model, u32 flags) {
    u32 mask;

    mask = 1 << 8;
    if (flags & mask) {
        NNS_G3dMdlSetMdlDiffAll(model, config->diffuse);
    }

    mask = 2 << 8;
    if (flags & mask) {
        NNS_G3dMdlSetMdlAmbAll(model, config->ambient);
    }

    mask = 1 << 0xa;
    if (flags & mask) {
        NNS_G3dMdlSetMdlSpecAll(model, config->specular);
    }

    mask = 2 << 0xa;
    if (flags & mask) {
        NNS_G3dMdlSetMdlEmiAll(model, config->emission);
    }

    mask = 1 << 0xc;
    if (flags & mask) {
        NNS_G3dMdlSetMdlLightEnableFlagAll(model, config->lightEnableFlag);
    }

    mask = 2 << 0xc;
    if (flags & mask) {
        NNS_G3dMdlSetMdlPolygonModeAll(model, config->polygonMode);
    }

    mask = 1 << 0xe;
    if (flags & mask) {
        NNS_G3dMdlSetMdlCullModeAll(model, config->cullMode);
    }

    mask = 2 << 0xe;
    if (flags & mask) {
        NNS_G3dMdlSetMdlPolygonIDAll(model, config->polygonID);
    }

    mask = 1 << 0x10;
    if (flags & mask) {
        NNS_G3dMdlSetMdlAlphaAll(model, config->alpha);
    }

    mask = 2 << 0x10;
    if (flags & mask) {
        NNS_G3dMdlSetMdlFogEnableFlagAll(model, config->polygonAttrMisc & (mask >> 2));
    }

    mask = 1 << 0x12;
    if (flags & mask) {
        NNS_G3dMdlSetMdlDepthTestCondAll(model, config->polygonAttrMisc & (mask >> 4));
    }

    mask = 2 << 0x12;
    if (flags & mask) {
        NNS_G3dMdlSetMdl1DotAll(model, config->polygonAttrMisc & (mask >> 6));
    }

    mask = 1 << 0x14;
    if (flags & mask) {
        NNS_G3dMdlSetMdlFarClipAll(model, config->polygonAttrMisc & (mask >> 8));
    }

    mask = 2 << 0x14;
    if (flags & mask) {
        NNS_G3dMdlSetMdlXLDepthUpdateAll(model, config->polygonAttrMisc & (mask >> 0xa));
    }
}

void ov01_021EAAB8(OV01_G3dConfig *config, int lightId, fx16 x, fx16 y, fx16 z) {
    config->lightVector[lightId][0] = x;
    config->lightVector[lightId][1] = y;
    config->lightVector[lightId][2] = z;
    NNS_G3dGlbLightVector((GXLightId)lightId, config->lightVector[lightId][0], config->lightVector[lightId][1], config->lightVector[lightId][2]);
}

void ov01_021EAAE0(OV01_G3dConfig *config, int lightId, GXRgb color) {
    config->lightColor[lightId] = color;
    NNS_G3dGlbLightColor((GXLightId)lightId, config->lightColor[lightId]);
}

void ov01_021EAAF4(OV01_G3dConfig *config, GXRgb diffuse, u32 misc, int applyNow) {
    config->diffuse = diffuse;
    config->diffAmbMisc = misc;
    if (applyNow == 1) {
        ov01_021EA910(config, 1 << 8);
    }
}

void ov01_021EAB08(OV01_G3dConfig *config, GXRgb ambient, int applyNow) {
    config->ambient = ambient;
    if (applyNow == 1) {
        ov01_021EA910(config, 2 << 8);
    }
}

void ov01_021EAB1C(OV01_G3dConfig *config, GXRgb specular, u32 misc, int applyNow) {
    config->specular = specular;
    config->specEmiMisc = misc;
    if (applyNow == 1) {
        ov01_021EA910(config, 1 << 0xa);
    }
}

void ov01_021EAB30(OV01_G3dConfig *config, GXRgb emission, int applyNow) {
    config->emission = emission;
    if (applyNow == 1) {
        ov01_021EA910(config, 2 << 0xa);
    }
}

void ov01_021EAB44(OV01_G3dConfig *config, u32 polygonMode, int applyNow) {
    config->polygonMode = polygonMode;
    if (applyNow == 1) {
        ov01_021EA910(config, 2 << 0xc);
    }
}

void ov01_021EAB58(OV01_G3dConfig *config, u32 cullMode, int applyNow) {
    config->cullMode = cullMode;
    if (applyNow == 1) {
        ov01_021EA910(config, 1 << 0xe);
    }
}

void ov01_021EAB6C(OV01_G3dConfig *config, u32 alpha, int applyNow) {
    config->alpha = alpha;
    if (applyNow == 1) {
        ov01_021EA910(config, 1 << 0x10);
    }
}

void ov01_021EAB80(OV01_G3dConfig *config, u32 bitMask, int sense, int applyNow) {
    if (sense == 1) {
        if (config->polygonAttrMisc & bitMask) {
            return;
        }
    } else {
        if (!(config->polygonAttrMisc & bitMask)) {
            return;
        }
    }
    config->polygonAttrMisc = bitMask ^ config->polygonAttrMisc;
    if (applyNow == 1) {
        ov01_021EA910(config, 1 << 0xc);
    }
}
