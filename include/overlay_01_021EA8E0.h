#ifndef POKEHEARTGOLD_OVERLAY_01_021EA8E0_H
#define POKEHEARTGOLD_OVERLAY_01_021EA8E0_H

#include <nitro/fx/fx.h>
#include <nitro/gx/gxcommon.h>

#include "global.h"

struct NNSG3dResMdl;

typedef struct {
    fx16 lightVector[4][3];
    GXRgb lightColor[4];
    GXRgb diffuse;
    GXRgb ambient;
    GXRgb specular;
    GXRgb emission;
    u32 diffAmbMisc;
    u32 specEmiMisc;
    u32 lightEnableFlag;
    u32 polygonMode;
    u32 cullMode;
    u32 polygonID;
    u32 alpha;
    u32 polygonAttrMisc;
} OV01_G3dConfig;

typedef struct {
    void *unk0;
} OV01_G3dConfigHolder;

OV01_G3dConfig *ov01_021EA8E0(void);
void ov01_021EA8FC(OV01_G3dConfigHolder *holder);
void ov01_021EA910(OV01_G3dConfig *config, int flags);
void ov01_021EA9B0(OV01_G3dConfig *config, struct NNSG3dResMdl *model, u32 flags);
void ov01_021EAAB8(OV01_G3dConfig *config, int lightId, fx16 x, fx16 y, fx16 z);
void ov01_021EAAE0(OV01_G3dConfig *config, int lightId, GXRgb color);
void ov01_021EAAF4(OV01_G3dConfig *config, GXRgb diffuse, u32 misc, int applyNow);
void ov01_021EAB08(OV01_G3dConfig *config, GXRgb ambient, int applyNow);
void ov01_021EAB1C(OV01_G3dConfig *config, GXRgb specular, u32 misc, int applyNow);
void ov01_021EAB30(OV01_G3dConfig *config, GXRgb emission, int applyNow);
void ov01_021EAB44(OV01_G3dConfig *config, u32 polygonMode, int applyNow);
void ov01_021EAB58(OV01_G3dConfig *config, u32 cullMode, int applyNow);
void ov01_021EAB6C(OV01_G3dConfig *config, u32 alpha, int applyNow);
void ov01_021EAB80(OV01_G3dConfig *config, u32 bitMask, int sense, int applyNow);

#endif // POKEHEARTGOLD_OVERLAY_01_021EA8E0_H
