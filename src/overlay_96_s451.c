#include "global.h"

void ov96_021F27B8(const VecFx32 *a, const VecFx32 *b, VecFx32 *out) {
    VecFx32 normA;
    VecFx32 normB;
    fx32 dot;
    fx32 mag;

    VEC_Normalize(a, &normA);
    VEC_Normalize(b, &normB);
    dot = VEC_DotProduct(&normA, &normB);
    mag = VEC_Mag(a);
    {
        VecFx32 zero = { 0, 0, 0 };

        VEC_MultAdd(FX_Mul(dot, mag), &normB, &zero, out);
    }
}
