#include "global.h"

typedef struct UnkStruct_ov07_02225098 {
    u8 state;
    u8 pad_01;
    s16 posY;
    int spriteOffset;
    u8 unk_08;
    u8 unk_09;
    u8 holdFrames;
    u8 pad_0b;
    int unk_0c;
    int unk_10;
    int unk_14;
    void *system;
    void *sprite;
    u8 scale[0x24];
    u8 shake[0x24];
} UnkStruct_ov07_02225098;

extern int ov07_0221BFD0(void *system);
extern int ov07_0221C468(void *system);
extern void *ov07_0221FA48(void *system, int battler);
extern int ov07_0221C4A8(void *system, int index);
extern void ov07_02221F38(void *system, int battler, void *x, s16 *y);
extern int ov07_0221FAA0(void *system, int battler);
extern void ov07_02222590(void *ctx, s16 sx, s16 ex, s16 sy, s16 ey, int base, int frames);
extern void ov07_022227A8(void *ctx, int a, int b, int c, int d);
extern void ov07_02224EF4(void);
extern void ov07_0221C410(void *system, void (*func)(void), void *ctx);

void ov07_02225098(void *system) {
    UnkStruct_ov07_02225098 *ctx = Heap_Alloc(ov07_0221BFD0(system), 0x68);
    s16 sx, sy, ex, ey;

    ctx->unk_08 = 0;
    ctx->state = 0;
    ctx->system = system;
    ctx->sprite = ov07_0221FA48(ctx->system, ov07_0221C468(system));
    ctx->unk_09 = 0;
    ctx->holdFrames = ov07_0221C4A8(system, 6);
    ctx->unk_0c = ov07_0221C4A8(ctx->system, 3);
    ctx->unk_10 = ov07_0221C4A8(ctx->system, 4);
    ctx->unk_14 = ov07_0221C4A8(ctx->system, 5);

    ov07_02221F38(system, ov07_0221C468(ctx->system), NULL, &ctx->posY);

    ctx->spriteOffset = ov07_0221FAA0(ctx->system, ov07_0221C468(ctx->system));
    ctx->posY += ctx->spriteOffset;

    sx = (s16)(ov07_0221C4A8(system, 0) >> 16);
    ex = (u8)ov07_0221C4A8(system, 0);
    sy = (s16)(ov07_0221C4A8(system, 1) >> 16);
    ey = (u8)ov07_0221C4A8(system, 1);

    ov07_02222590(ctx->scale, sx, ex, sy, ey, 100, ov07_0221C4A8(system, 2));
    ov07_022227A8(ctx->shake, 2, 0, 0, 10);
    ov07_0221C410(ctx->system, ov07_02224EF4, ctx);
}
