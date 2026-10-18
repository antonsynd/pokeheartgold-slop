#include "global.h"

fx32 ov96_02213514(const VecFx32 *a, const VecFx32 *b) {
    VecFx32 normA;
    VecFx32 normB;

    VEC_Normalize(a, &normA);
    VEC_Normalize(b, &normB);
    return VEC_DotProduct(&normA, &normB);
}

BOOL ov96_02213534(const VecFx32 *a, const VecFx32 *b, int angle) {
    if (ov96_02213514(a, b) >= FX_CosIdx(angle)) {
        return TRUE;
    }
    return FALSE;
}
