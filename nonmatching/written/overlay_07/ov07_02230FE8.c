#include "global.h"

typedef struct UnkStruct_ov07_02230FE8 {
    void *battleAnimSys;
    s32 state;
    s32 paletteOffset;
    void *spriteMan;
    void *sprite;
    u8 alphaFade[1];
} UnkStruct_ov07_02230FE8;

void SpriteSystem_DrawSprites(void *spriteManager);
void Sprite_DeleteAndFreeResources(void *sprite);
void ManagedSprite_SetAnimateFlag(void *sprite, int flag);
void ManagedSprite_SetAnimSpeed(void *sprite, int speed);
int ManagedSprite_IsAnimated(void *sprite);
u16 ManagedSprite_GetAnimationFrame(void *sprite);
void ManagedSprite_SetDrawFlag(void *sprite, int flag);
void ManagedSprite_SetPaletteOverrideOffset(void *sprite, int offset);
void Heap_Free(void *ptr);
void ov07_02222AC4(void *fade, int a, int b, int c, int d, int e);
BOOL ov07_02222AF4(void *fade);
void ov07_02231E08(void *sys, int a, int b);
void ov07_0221C448(void *sys, void *task);

void ov07_02230FE8(void *task, void *param) {
    UnkStruct_ov07_02230FE8 *ctx = param;

    switch (ctx->state) {
    case 0:
        ov07_02222AC4(&ctx->alphaFade, 0, 0x10, 0x14, 4, 10);
        ManagedSprite_SetDrawFlag(ctx->sprite, 1);
        ov07_02231E08(ctx->battleAnimSys, 0, 0x14);
        ctx->state++;
        break;
    case 1:
        if (ov07_02222AF4(&ctx->alphaFade)) {
            ctx->state++;
            ManagedSprite_SetAnimateFlag(ctx->sprite, 1);
            ManagedSprite_SetAnimSpeed(ctx->sprite, 0x1000);
        }
        break;
    case 2: {
        int animFrame = ManagedSprite_GetAnimationFrame(ctx->sprite);
        animFrame %= 3;
        ManagedSprite_SetPaletteOverrideOffset(ctx->sprite, ctx->paletteOffset + animFrame);
        if (!ManagedSprite_IsAnimated(ctx->sprite)) {
            ctx->state++;
            ov07_02222AC4(&ctx->alphaFade, 0x10, 0, 4, 0x14, 8);
        }
        break;
    }
    case 3:
        if (ov07_02222AF4(&ctx->alphaFade)) {
            ctx->state++;
            ManagedSprite_SetDrawFlag(ctx->sprite, 0);
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        ov07_0221C448(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }
    SpriteSystem_DrawSprites(ctx->spriteMan);
}
