#include "global.h"

typedef struct UnkStruct_ov07_0222B4E0 {
    u8 state;
    u8 pad_01[3];
    void *battleAnimSys;
    u8 pad_08[4];
    void *pokemonSpriteManager;
    u8 pad_10[8];
    void *paletteData;
    void *sprites[3];
    int blendStep;
    float scaleX;
    float scaleY;
    u8 spriteAlpha;
    u8 bgAlpha;
    s8 scaleDirX;
    u8 pad_37;
    void *palFades[2];
} UnkStruct_ov07_0222B4E0;

extern int ov07_0221BFD0(void *system);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ManagedSprite_SetAffineScale(void *sprite, float x, float y);
extern void ManagedSprite_TickFrame(void *sprite);
extern void SpriteSystem_DrawSprites(void *manager);
extern void *Sprite_GetPaletteProxy(void *sprite);
extern u32 ObjPlttTransfer_GetPaletteVramOffset(void *proxy, int type);
extern int ov07_02222EE8(void *fade);
extern void ov07_02222EF8(void *fade);
extern void *ov07_02222F10(void *paletteData, int heapId, int bufferId, u32 pos, int a, int b, int c, int d, int e, int f, int g);
extern void ov07_0221C448(void *system, void *task);

#define REG_BLDALPHA (*(vu16 *)0x04000052)

void ov07_0222B4E0(void *task, UnkStruct_ov07_0222B4E0 *ctx) {
    switch (ctx->state) {
    case 0:
        if (ctx->blendStep > 14) {
            ctx->scaleY -= 0.2f;
            ctx->scaleX += 0.2f;

            if ((double)ctx->scaleY <= 0.2) {
                ctx->state++;
                ManagedSprite_SetDrawFlag(ctx->sprites[0], 0);
            } else {
                ManagedSprite_SetAffineScale(ctx->sprites[0], ctx->scaleX * (float)ctx->scaleDirX, ctx->scaleY);
            }
        } else {
            ctx->spriteAlpha++;
            ctx->bgAlpha--;
            REG_BLDALPHA = ctx->spriteAlpha | (ctx->bgAlpha << 8);
            ctx->blendStep++;
        }
        break;
    case 1:
        if (ov07_02222EE8(ctx->palFades[1]) == 0) {
            u32 offset;

            ov07_02222EF8(ctx->palFades[0]);
            ov07_02222EF8(ctx->palFades[1]);

            offset = ObjPlttTransfer_GetPaletteVramOffset(Sprite_GetPaletteProxy(*(void **)ctx->sprites[2]), 1);
            ctx->palFades[1] = ov07_02222F10(ctx->paletteData, ov07_0221BFD0(ctx->battleAnimSys), 2, (offset << 20) >> 16, 0x10, 0, 1, 0xf, 0, 0xFFFF, 0x44c);
            ctx->state++;
        }
        break;
    default:
        if (ov07_02222EE8(ctx->palFades[1]) == 0) {
            ManagedSprite_TickFrame(ctx->sprites[1]);
            ov07_02222EF8(ctx->palFades[1]);
            ov07_0221C448(ctx->battleAnimSys, task);
            Heap_Free(ctx);
            return;
        }
        break;
    }

    ManagedSprite_TickFrame(ctx->sprites[0]);
    ManagedSprite_TickFrame(ctx->sprites[1]);
    ManagedSprite_TickFrame(ctx->sprites[2]);
    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}
