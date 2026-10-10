#include "global.h"

typedef struct UnkStruct_ov07_022224AC {
    int value;
    int steps;
    int curAngle;
    int amplitude;
    int stepSize;
} UnkStruct_ov07_022224AC;

BOOL ov07_022224AC(UnkStruct_ov07_022224AC *ctx) {
    if (ctx == NULL) {
        GF_AssertFail();
    }

    if (ctx->steps != 0) {
        ctx->curAngle = (u16)(ctx->curAngle + ctx->stepSize);
        ctx->steps--;
        s64 product = (s64)FX_SinCosTable_[(ctx->curAngle >> 4) * 2 + 1] * ctx->amplitude;
        ctx->value = (int)((u64)(product + 0x800) >> 12) >> 12;
        return TRUE;
    }
    return FALSE;
}
