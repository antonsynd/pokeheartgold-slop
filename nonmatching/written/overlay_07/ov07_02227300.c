#include "global.h"

typedef struct UnkStruct_ov07_02227300 {
    u8 state;       // 0x00
    u8 counter[3];  // 0x01
    u8 timer;       // 0x04
    u8 evb;         // 0x05
    u8 eva;         // 0x06
    u8 unk07;
    void *sys;      // 0x08
    u8 unk0C[4];
    void *spriteSys; // 0x10
    void **sprites[3]; // 0x14
    u8 unk20[1];    // 0x20
} UnkStruct_ov07_02227300;

extern int ov07_0221C4A8(void *sys, int idx);
extern void ManagedSprite_GetPositionXY(void *sprite, s16 *x, s16 *y);
extern int ManagedSprite_GetDrawFlag(void *sprite);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ov07_02222590(void *a, int b, int c, int d, int e, int f, int g);
extern int ov07_0222260C(void *a);
extern void ov07_02222644(void *a, u32 *x, u32 *y);
extern void ManagedSprite_SetAffineScale(void *sprite, u32 x, u32 y);
extern void Sprite_DeleteAndFreeResources(void *sprite);
extern void ov07_0221C448(void *sys, void *task);
extern void Heap_Free(void *p);
extern void Sprite_TickFrame(void *sprite);
extern void SpriteSystem_DrawSprites(void *s);
extern const u8 ov07_022366D2[];

void ov07_02227300(void *task, UnkStruct_ov07_02227300 *ctx) {
    int i;
    switch (ctx->state) {
    case 0:
        ctx->timer++;
        for (i = 0; i < ov07_0221C4A8(ctx->sys, 0); i++) {
            s16 x, y;
            ManagedSprite_GetPositionXY(ctx->sprites[i], &x, &y);
            if (ctx->timer >= ov07_022366D2[i * 2]) {
                ctx->counter[i]++;
                if (ctx->counter[i] >= ov07_022366D2[i * 2 + 1]) {
                    ctx->counter[i] = 0;
                    if (ManagedSprite_GetDrawFlag(ctx->sprites[i]) == 1) {
                        ManagedSprite_SetDrawFlag(ctx->sprites[i], 0);
                    } else {
                        ManagedSprite_SetDrawFlag(ctx->sprites[i], 1);
                    }
                }
            } else {
                ManagedSprite_SetDrawFlag(ctx->sprites[i], 0);
            }
        }
        if (ctx->timer >= 0x2d) {
            for (i = 0; i < ov07_0221C4A8(ctx->sys, 0); i++) {
                ManagedSprite_SetDrawFlag(ctx->sprites[i], 1);
            }
            ctx->timer = 0;
            ctx->state++;
        }
        break;
    case 1:
        ov07_02222590(ctx->unk20, 100, 0x3c, 100, 100, 100, 10);
        ctx->state++;
        break;
    case 2:
        if (ov07_0222260C(ctx->unk20) == 1) {
            for (i = 0; i < ov07_0221C4A8(ctx->sys, 0); i++) {
                u32 sx, sy;
                ov07_02222644(ctx->unk20, &sx, &sy);
                ManagedSprite_SetAffineScale(ctx->sprites[i], sx, sy);
            }
        } else {
            ctx->timer++;
            if (ctx->timer >= 0x2d) {
                ctx->state++;
            }
        }
        break;
    case 3:
        if (ctx->evb != 0) {
            ctx->evb--;
        }
        if (ctx->eva < 15) {
            ctx->eva++;
        }
        if (ctx->evb == 0 && ctx->eva == 15) {
            ctx->state++;
        }
        *(vu16 *)0x04000052 = (u16)(ctx->evb | (ctx->eva << 8));
        break;
    default:
        for (i = 0; i < ov07_0221C4A8(ctx->sys, 0); i++) {
            Sprite_DeleteAndFreeResources(ctx->sprites[i]);
        }
        ov07_0221C448(ctx->sys, task);
        Heap_Free(ctx);
        return;
    }
    for (i = 0; i < ov07_0221C4A8(ctx->sys, 0); i++) {
        Sprite_TickFrame(*ctx->sprites[i]);
    }
    SpriteSystem_DrawSprites(ctx->spriteSys);
}
