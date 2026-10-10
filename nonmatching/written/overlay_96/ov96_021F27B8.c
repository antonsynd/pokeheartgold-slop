#include "global.h"

void ov96_021F27B8(VecFx32 *param0, VecFx32 *param1, VecFx32 *param2) {
    VecFx32 normA;
    VecFx32 normB;
    VecFx32 zero;
    fx32 dot;
    fx32 mag;
    fx32 scaled;

    VEC_Normalize(param0, &normA);
    VEC_Normalize(param1, &normB);
    dot = VEC_DotProduct(&normA, &normB);
    mag = VEC_Mag(param0);
    zero.x = 0;
    zero.y = 0;
    zero.z = 0;
    scaled = (fx32)(((s64)dot * (s64)mag + 0x800) >> 12);
    VEC_MultAdd(scaled, &normB, &zero, param2);
}
