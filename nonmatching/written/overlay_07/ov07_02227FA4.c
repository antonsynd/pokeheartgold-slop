#include "global.h"

typedef struct UnkStruct_ov07_02227FA4 {
    u8 state;   // 0x00
    u8 count;   // 0x01
    u8 toggle;  // 0x02
    u8 unk03;
    void *sys;  // 0x04
    void *pokepic; // 0x08
    s16 x;      // 0x0C
    s16 y;      // 0x0E
} UnkStruct_ov07_02227FA4;

extern void ov07_02222508(void *a, int b, int c, int d, int e);
extern BOOL ov07_02222558(void *a);
extern void Pokepic_StartPaletteFade(void *pokepic, int start, int end, int framesPer, int targetColor);
extern BOOL Pokepic_ResumePaletteFade(void *pokepic);
extern void Pokepic_SetAttr(void *pokepic, int attr, int value);
extern void ov07_0221C448(void *sys, void *task);
extern void Heap_Free(void *p);
extern const u8 ov07_022366CC[];
extern const u8 ov07_022366CD[];
extern const u8 ov07_022366CE[];

void ov07_02227FA4(void *task, UnkStruct_ov07_02227FA4 *ctx) {
    switch (ctx->state) {
    case 0: {
        int idx = ctx->toggle * 3;
        ov07_02222508(&ctx->x, ov07_022366CC[idx], 100, ov07_022366CD[idx], ov07_022366CE[idx]);
        if (ctx->toggle == 0) {
            Pokepic_StartPaletteFade(ctx->pokepic, 0, 6, 0, 0x7FFF);
        } else {
            Pokepic_StartPaletteFade(ctx->pokepic, 6, 0, 0, 0x7FFF);
        }
        ctx->toggle ^= 1;
        ctx->count++;
        ctx->state++;
        break;
    }
    case 1:
        if (ov07_02222558(&ctx->x) == 0 && Pokepic_ResumePaletteFade(ctx->pokepic) == 0) {
            if (ctx->count < 4) {
                ctx->state--;
            } else {
                ctx->state++;
            }
        }
        Pokepic_SetAttr(ctx->pokepic, 0xc, ctx->x);
        Pokepic_SetAttr(ctx->pokepic, 0xd, ctx->y);
        break;
    default:
        ov07_0221C448(ctx->sys, task);
        Heap_Free(ctx);
        break;
    }
}
