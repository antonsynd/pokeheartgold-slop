#include "global.h"

#include "gf_3d_render.h"

typedef struct Ov108Part {
    u8 filler_00[0x14];
} Ov108Part;

typedef struct Ov108_021E9144 {
    u8 filler_00[0x10];
    NNSG3dRenderObj renderObj;
    Ov108Part parts[4];
    u16 unkB4;
    u16 partCount;
} Ov108_021E9144;

void ov108_021E9210(Ov108Part *part);

void ov108_021E9144(Ov108_021E9144 *a0) {
    int i;
    MtxFx33 rotation;
    VecFx32 translation;
    VecFx32 scale;

    for (i = 0; i < a0->partCount; i++) {
        ov108_021E9210(&a0->parts[i]);
    }
    translation.x = 0;
    translation.y = 0;
    translation.z = 0;
    scale.x = FX32_ONE;
    scale.y = FX32_ONE;
    scale.z = FX32_ONE;
    MTX_Identity33(&rotation);
    GF3dRender_DrawModel(&a0->renderObj, &translation, &rotation, &scale);
}
