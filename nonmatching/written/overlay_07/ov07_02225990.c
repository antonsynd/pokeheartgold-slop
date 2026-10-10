#include "global.h"

typedef struct UnkStruct_ov07_02225990 {
    void *unk_00;
    void *system;
    u8 pad_08[0x14];
    u32 spriteInfo[2];
    void *monSprite;
    u8 pad_28[8];
    int xOffset;
    int yOffset;
    int width;
    int height;
    s16 unk_40;
    s16 step;
    int stepFrames;
    int mode;
    int timer;
    int y;
    int drawHeight;
} UnkStruct_ov07_02225990;

extern UnkStruct_ov07_02225990 *ov07_022324D8(void *system, int size);
extern void ov07_02231FE4(void *system, void *ctx);
extern int ov07_0221C4A8(void *system, int index);
extern void ov07_02232020(void *system, int target, void *spriteInfo, int *count);
extern int ov07_0221C468(void *system);
extern int ov07_0221C470(void *system);
extern int ov07_0223197C(void *system, int battler);
extern int ov07_0221FAA0(void *system, int battler);
extern int Pokepic_GetAttr(void *pic, int attr);
extern void Pokepic_SetVisible(void *pic, int x, int y, int w, int h);
extern void ov07_02225904(void);
extern void ov07_0221C410(void *system, void (*func)(void), void *ctx);

void ov07_02225990(void *system) {
    u32 callerR7;
    __asm__ volatile("movs %0, r7" : "=l"(callerR7) : : "cc");

    UnkStruct_ov07_02225990 *ctx = ov07_022324D8(system, 0x58);
    int count;
    int target;
    int battler = callerR7;

    ov07_02231FE4(system, ctx);

    target = ov07_0221C4A8(system, 0);
    ov07_02232020(system, target, ctx->spriteInfo, &count);

    switch (target) {
    case 2:
        battler = ov07_0221C468(system);
        break;
    case 4:
        battler = ov07_0223197C(system, ov07_0221C468(system));
        break;
    case 8:
        battler = ov07_0221C470(system);
        break;
    case 0x10:
        battler = ov07_0223197C(system, ov07_0221C470(system));
        break;
    default:
        GF_AssertFail();
        break;
    }

    ctx->mode = ov07_0221C4A8(system, 1);
    if (ctx->mode == 0) {
        ctx->y = Pokepic_GetAttr(ctx->monSprite, 1);
        ctx->drawHeight = 0x50 - Pokepic_GetAttr(ctx->monSprite, 0x12);
        ctx->unk_40 = ov07_0221C4A8(system, 2);
        ctx->step = ov07_0221C4A8(system, 3);
        ctx->step = ctx->step * -1;
    } else {
        ctx->y = Pokepic_GetAttr(ctx->monSprite, 1);
        ctx->drawHeight = Pokepic_GetAttr(ctx->monSprite, 0x12);
        ctx->unk_40 = ov07_0221C4A8(system, 2);
        ctx->step = ov07_0221C4A8(system, 3);
    }

    ctx->xOffset = 0;
    ctx->yOffset = 0;
    ctx->width = 0x50;
    ctx->height = 0x50 - ov07_0221FAA0(system, battler);
    ctx->stepFrames = ov07_0221C4A8(system, 4);
    ctx->timer = 0;

    Pokepic_SetVisible(ctx->monSprite, ctx->xOffset, ctx->yOffset, ctx->width, ctx->height);
    ov07_0221C410(ctx->system, ov07_02225904, ctx);
}
