#include "global.h"

#include "sprite.h"

typedef struct UnkStruct_ov91_0225D884 {
    Sprite *unk_00[3];
    int unk_0C[3];
    VecFx32 unk_18[3];
} UnkStruct_ov91_0225D884;

void ov91_0225D884(UnkStruct_ov91_0225D884 *param0, int param1) {
    VecFx32 v0;
    fx32 v1;

    v1 = FX_Mul(param0->unk_0C[param1] << FX32_SHIFT, -16 * FX32_ONE);
    v1 = FX_Div(v1, 16 * FX32_ONE);

    v0 = param0->unk_18[param1];
    v0.y += v1;
    Sprite_SetMatrix(param0->unk_00[param1], &v0);
}
