#include "global.h"
#include "nitro/fx/fx_trig.h"

typedef struct UnkStruct_ov07_022301C4 {
    u8 pad_00[4];
    void *bgScroll;
    u8 pad_08[8];
    s32 y;
    s32 centerY;
    s32 baseAngle;
    s32 baseAmplitude;
    s32 dir;
    s32 amplitudeStep;
    u8 pad_28[8];
    s32 initValue;
} UnkStruct_ov07_022301C4;

u32 *ov07_02222C84(void *bg);
u32 ov07_02222D88(u16 x, u16 y);

void ov07_022301C4(UnkStruct_ov07_022301C4 *ctx) {
    u32 *buffer = ov07_02222C84(ctx->bgScroll);
    int end = ctx->y + 0x58;
    int start = ctx->y - 8;
    int y;

    if (start < 0) {
        start = 0;
    }
    if (end > 0xc0) {
        end = 0xc0;
    }
    ctx->dir = -1 * ctx->dir;
    for (y = start; y < end; y++) {
        int amp;
        s64 prod;
        s32 v;
        s16 xo;
        s16 initX, initY;
        int index;
        if (y & 2) {
            amp = ctx->baseAmplitude + (ctx->dir << 12);
        } else {
            amp = ctx->baseAmplitude - (ctx->dir << 12);
        }
        prod = (s64)FX_SinCosTable_[(u16)(ctx->baseAngle + 0x199 * (y - start)) >> 4 << 1] * (s64)amp;
        prod += 0x800;
        v = (s32)(((u32)prod >> 12) | ((u32)((u64)prod >> 32) << 20));
        xo = (s16)(((s32)((u32)v << 4)) >> 16);
        xo = (s16)(xo + ((y - ctx->centerY) * ctx->amplitudeStep) / 10);
        initX = (s16)ctx->initValue;
        initY = (s16)(ctx->initValue >> 16);
        index = y - 1;
        if (index < 0) {
            index += 0xc0;
        }
        buffer[index] = ov07_02222D88((u16)(initX + xo), (u16)initY);
    }
}
