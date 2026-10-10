#include "global.h"

typedef struct UnkStruct_ov07_0222C2D4_Spoon {
    void *sprite;
    u8 pad_04[0x44];
    int active;
} UnkStruct_ov07_0222C2D4_Spoon;

typedef struct UnkStruct_ov07_0222C2D4 {
    void *battleAnimSys;
    u8 pad_04[4];
    void *spriteMan;
    UnkStruct_ov07_0222C2D4_Spoon spoon;
    UnkStruct_ov07_0222C2D4_Spoon extraSpoons[2];
    u8 pad_f0_dummy[0];
    int state;
    int delay;
    int activeSpoon;
    int spoonAlpha;
} UnkStruct_ov07_0222C2D4;

extern int ov07_0222C214(void *spoon);
extern void ov07_0222C208(void *spoon, int flag);
extern void ov07_0222C1FC(void *spoon);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ManagedSprite_SetOamMode(void *sprite, int mode);
extern void ManagedSprite_TickFrame(void *sprite);
extern int Sprite_IsAnimated(void *sprite);
extern void Sprite_DeleteAndFreeResources(void *sprite);
extern void SpriteSystem_DrawSprites(void *manager);
extern void ov07_0221C448(void *system, void *task);

#define REG_BLDALPHA (*(vu16 *)0x04000052)

void ov07_0222C2D4(void *task, UnkStruct_ov07_0222C2D4 *ctx) {
    int i;

    switch (ctx->state) {
    case 0:
        ov07_0222C214(&ctx->spoon);
        ctx->state++;
        break;
    case 1:
        ctx->spoonAlpha += 10;
        REG_BLDALPHA = ((0x1f - ctx->spoonAlpha / 10) << 8) | (ctx->spoonAlpha / 10);
        if (ctx->spoonAlpha >= 0x136) {
            ManagedSprite_SetOamMode(ctx->spoon.sprite, 0);
            ctx->state++;
        }
        break;
    case 2:
        REG_BLDALPHA = 0xFFFF;
        ctx->state++;
        break;
    case 3: {
        int any;

        if (ctx->delay <= 0) {
            ctx->extraSpoons[ctx->activeSpoon].active = 1;
            ManagedSprite_SetDrawFlag(ctx->extraSpoons[ctx->activeSpoon].sprite, 1);
            ctx->activeSpoon++;
            ctx->delay = 8;
        }

        if (ctx->activeSpoon < 2) {
            ctx->delay--;
        }

        any = ov07_0222C214(&ctx->spoon);
        for (i = 0; i < 2; i++) {
            int active = ov07_0222C214(&ctx->extraSpoons[i]);
            if (active == 0) {
                ov07_0222C208(&ctx->extraSpoons[i], 0);
            }
            any |= active;
        }

        if (any == 0) {
            ctx->state++;
        }
        break;
    }
    case 4:
        ManagedSprite_TickFrame(ctx->spoon.sprite);
        if (Sprite_IsAnimated(*(void **)ctx->spoon.sprite) == 0) {
            ManagedSprite_SetOamMode(ctx->spoon.sprite, 1);
            ctx->state++;
        }
        break;
    case 5:
        ctx->spoonAlpha -= 10;
        REG_BLDALPHA = ((0x1f - ctx->spoonAlpha / 10) << 8) | (ctx->spoonAlpha / 10);
        if (ctx->spoonAlpha <= 0) {
            ctx->state++;
        }
        break;
    case 6:
        for (i = 0; i < 2; i++) {
            ov07_0222C1FC(&ctx->extraSpoons[i]);
        }
        Sprite_DeleteAndFreeResources(ctx->spoon.sprite);
        ov07_0221C448(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}
