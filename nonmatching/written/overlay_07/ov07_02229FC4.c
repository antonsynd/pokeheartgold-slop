#include "global.h"

typedef struct UnkStruct_ov07_02229FC4 {
    u8 state;
    u8 pad_01[7];
    u8 handCount;
    u8 spriteAlpha;
    u8 bgAlpha;
    u8 pad_0b;
    void *battleAnimSys;
    u8 pad_10[4];
    void *spriteMan;
    void *handSprites[6];
    int currentPair;
    void *hand1;
    void *hand2;
    u8 hand1Pos[0x24];
    u8 hand2Pos[0x24];
} UnkStruct_ov07_02229FC4;

extern s16 ov07_022367AE[];
extern u8 ov07_02236774[];

extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ManagedSprite_GetPositionXY(void *sprite, s16 *x, s16 *y);
extern void ov07_02222268(void *ctx, s16 sx, s16 ex, s16 sy, s16 ey, u8 frames);
extern int ov07_022222F0(void *ctx, void *sprite);
extern void Sprite_DeleteAndFreeResources(void *sprite);
extern void Sprite_TickFrame(void *sprite);
extern void SpriteSystem_DrawSprites(void *manager);
extern void ov07_0221C448(void *system, void *task);

#define REG_BLDALPHA (*(vu16 *)0x04000052)

void ov07_02229FC4(void *task, UnkStruct_ov07_02229FC4 *ctx) {
    int i;
    int spriteAnimsDone = 0;

    switch (ctx->state) {
    case 0:
        if (ctx->spriteAlpha < 0xf) {
            ctx->spriteAlpha++;
        }
        if (ctx->bgAlpha != 0) {
            ctx->bgAlpha--;
        }
        if (ctx->spriteAlpha == 0xf && ctx->bgAlpha == 0) {
            ctx->state++;
        }
        REG_BLDALPHA = ctx->spriteAlpha | (ctx->bgAlpha << 8);
        break;
    case 1: {
        s16 pos[2];

        switch (ctx->currentPair) {
        case 0:
            ctx->hand1 = ctx->handSprites[0];
            ctx->hand2 = ctx->handSprites[3];
            ManagedSprite_SetDrawFlag(ctx->hand1, 1);
            ManagedSprite_SetDrawFlag(ctx->hand2, 1);
            break;
        case 1:
            ctx->hand1 = ctx->handSprites[1];
            ctx->hand2 = ctx->handSprites[2];
            ManagedSprite_SetDrawFlag(ctx->hand1, 1);
            ManagedSprite_SetDrawFlag(ctx->hand2, 1);
            break;
        case 2:
        case 3:
            ctx->hand1 = ctx->handSprites[4];
            ctx->hand2 = ctx->handSprites[5];
            ManagedSprite_SetDrawFlag(ctx->hand1, 1);
            ManagedSprite_SetDrawFlag(ctx->hand2, 1);
            break;
        }

        ManagedSprite_GetPositionXY(ctx->hand1, &pos[1], &pos[0]);
        ov07_02222268(ctx->hand1Pos, pos[1], ov07_022367AE[ctx->currentPair * 4], pos[0], ov07_022367AE[ctx->currentPair * 4 + 1], ov07_02236774[ctx->currentPair]);

        ManagedSprite_GetPositionXY(ctx->hand2, &pos[1], &pos[0]);
        ov07_02222268(ctx->hand2Pos, pos[1], ov07_022367AE[ctx->currentPair * 4 + 2], pos[0], ov07_022367AE[ctx->currentPair * 4 + 3], ov07_02236774[ctx->currentPair]);

        ctx->currentPair++;
        ctx->state++;
        break;
    }
    case 2: {
        int doneCount = 0;
        if (ov07_022222F0(ctx->hand1Pos, ctx->hand1) == 0) {
            doneCount++;
        }
        if (ov07_022222F0(ctx->hand2Pos, ctx->hand2) == 0) {
            doneCount++;
        }
        if (doneCount >= 2) {
            if (ctx->currentPair <= 3) {
                ManagedSprite_SetDrawFlag(ctx->hand1, 0);
                ManagedSprite_SetDrawFlag(ctx->hand2, 0);
                ctx->state--;
            } else {
                ctx->state++;
            }
        }
        break;
    }
    case 3:
        if (ctx->spriteAlpha != 0) {
            ctx->spriteAlpha--;
        }
        if (ctx->bgAlpha < 0xf) {
            ctx->bgAlpha++;
        }
        if (ctx->bgAlpha >= 7) {
            spriteAnimsDone = 1;
        }
        if (ctx->spriteAlpha == 0 && ctx->bgAlpha == 0xf) {
            ctx->state++;
        }
        REG_BLDALPHA = ctx->spriteAlpha | (ctx->bgAlpha << 8);
        break;
    default:
        for (i = 0; i < ctx->handCount; i++) {
            Sprite_DeleteAndFreeResources(ctx->handSprites[i]);
        }
        ov07_0221C448(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    if (ctx->state < 3 && spriteAnimsDone == 0) {
        for (i = 0; i < ctx->handCount; i++) {
            Sprite_TickFrame(*(void **)ctx->handSprites[i]);
        }
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}
