#include "global.h"

typedef struct UnkStruct_ov07_02226F04 {
    u8 state;
    u8 pad_01[3];
    void *battleAnimSys;
    u8 pad_08[4];
    void *pokemonSpriteManager;
    u8 pad_10[0xc];
    void *sprite;
    u8 pad_20[4];
    int maxFrames;
    u8 pad_28[8];
    int mode;
} UnkStruct_ov07_02226F04;

extern void ov07_02226CB0(UnkStruct_ov07_02226F04 *ctx);
extern void ov07_0221C448(void *system, void *task);
extern void ManagedSprite_TickFrame(void *sprite);
extern void SpriteSystem_DrawSprites(void *manager);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);

#define REG_DISPCNT (*(vu32 *)0x04000000)
#define REG_WIN0H (*(vu16 *)0x04000040)
#define REG_WIN0V (*(vu16 *)0x04000044)
#define REG_WININ (*(vu16 *)0x04000048)
#define REG_WINOUT (*(vu16 *)0x0400004A)

void ov07_02226F04(void *task, UnkStruct_ov07_02226F04 *ctx) {
    if (ctx->mode != 0) {
        ov07_02226CB0(ctx);
    }

    ctx->state++;

    if (ctx->state >= ctx->maxFrames) {
        REG_DISPCNT = REG_DISPCNT & 0xFFFF1FFF;
        REG_WININ = REG_WININ & ~0x3f;
        REG_WINOUT = REG_WINOUT & ~0x3f;
        REG_WIN0H = 0;
        REG_WIN0V = 0;

        ManagedSprite_SetDrawFlag(ctx->sprite, 0);
        SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
        ov07_0221C448(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    ManagedSprite_TickFrame(ctx->sprite);
    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}
