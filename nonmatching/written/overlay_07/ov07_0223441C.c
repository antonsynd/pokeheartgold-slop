#include "global.h"

typedef struct UnkTemplate_ov07_0223441C {
    s16 x;
    s16 y;
    s16 z0;
    s16 z1;
    s32 w08;
    s32 w0C;
    s32 w10;
    s32 resources[6];
    s32 bgPriority;
    s32 vramTransfer;
} UnkTemplate_ov07_0223441C;

typedef struct UnkStruct_ov07_0223441C {
    u8 pad_00[0x2c];
    void *spriteMan;
    void *sprite;
    u8 pad_34[0x68];
    s32 target;
    s32 ballID;
    s32 bgPrio;
    u8 pad_A8[4];
    void *cellActorSys;
} UnkStruct_ov07_0223441C;

void ov07_022341A4(void *ctx, s16 *x, s16 *y);
void *SpriteSystem_NewSprite(void *sys, void *mgr, void *tmpl);
void ManagedSprite_SetDrawFlag(void *sprite, int flag);
void ManagedSprite_SetAffineOverwriteMode(void *sprite, int mode);
void ManagedSprite_SetAnimationFrame(void *sprite, int frame);
void ManagedSprite_SetAnim(void *sprite, int anim);
void ManagedSprite_TickFrame(void *sprite);
void ov07_0221C69C(void);

void ov07_0223441C(UnkStruct_ov07_0223441C *ctx) {
    UnkTemplate_ov07_0223441C tmpl;
    int i;

    ov07_022341A4(ctx, &tmpl.x, &tmpl.y);

    tmpl.z0 = 0;
    tmpl.z1 = 0;
    tmpl.w10 = 1;
    tmpl.w08 = 0;
    tmpl.w0C = 0;
    tmpl.bgPriority = ctx->bgPrio;
    tmpl.vramTransfer = 0;
    for (i = 0; i < 6; i++) {
        tmpl.resources[i] = ctx->target + 6000;
    }

    ctx->sprite = SpriteSystem_NewSprite(ctx->cellActorSys, ctx->spriteMan, &tmpl);
    ManagedSprite_SetDrawFlag(ctx->sprite, 1);
    ManagedSprite_SetAffineOverwriteMode(ctx->sprite, 2);
    ManagedSprite_SetAnimationFrame(ctx->sprite, 0);
    ManagedSprite_SetAnim(ctx->sprite, 0);
    ManagedSprite_TickFrame(ctx->sprite);
    ov07_0221C69C();
}
