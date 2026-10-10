#include "global.h"

typedef struct UnkStruct_ov07_0222A1F0_Template {
    s16 x;
    s16 y;
    s16 z;
    s16 animIdx;
    u32 priority;
    u32 plttIdx;
    u32 vramType;
    u32 resources[6];
    u32 bgPriority;
    u32 vramTransfer;
} UnkStruct_ov07_0222A1F0_Template;

typedef struct UnkStruct_ov07_0222A1F0 {
    u8 state;
    u8 pad_01[6];
    u8 unk_07;
    u8 handCount;
    u8 spriteAlpha;
    u8 bgAlpha;
    u8 pad_0b;
    void *battleAnimSys;
    void *spriteSys;
    void *spriteMan;
    void *handSprites[6];
    int currentPair;
} UnkStruct_ov07_0222A1F0;

typedef struct UnkStruct_ov07_0222A1F0_Pos {
    s16 x;
    s16 y;
} UnkStruct_ov07_0222A1F0_Pos;

extern UnkStruct_ov07_0222A1F0_Pos ov07_02236796[];

extern int ov07_0221BFD0(void *system);
extern UnkStruct_ov07_0222A1F0_Template ov07_0221F9E8(void *system);
extern void ov07_02231E08(void *system, int a, int b);
extern int ov07_0221C4A8(void *system, int index);
extern void *SpriteSystem_NewSprite(void *spriteSys, void *spriteMan, void *tmpl);
extern void ManagedSprite_SetAnim(void *sprite, int anim);
extern void ManagedSprite_SetFlipMode(void *sprite, int flip);
extern void ManagedSprite_SetAnimateFlag(void *sprite, int flag);
extern void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
extern void ManagedSprite_SetOamMode(void *sprite, int mode);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ov07_02229FC4(void);
extern void ov07_0221C3F4(void *system, void (*func)(void), void *ctx, int priority);

#define REG_BLDALPHA (*(vu16 *)0x04000052)

void ov07_0222A1F0(void *system, void *spriteSys, void *spriteMan, void *sprite) {
    int i;
    UnkStruct_ov07_0222A1F0_Template template;
    UnkStruct_ov07_0222A1F0 *ctx = Heap_Alloc(ov07_0221BFD0(system), 0x84);

    if (ctx == NULL) {
        GF_AssertFail();
    }

    ctx->unk_07 = 0;
    ctx->state = 0;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->currentPair = 0;
    ctx->battleAnimSys = system;

    template = ov07_0221F9E8(system);
    ov07_02231E08(ctx->battleAnimSys, -1, -1);

    ctx->spriteAlpha = 0;
    ctx->bgAlpha = 0xf;
    REG_BLDALPHA = ctx->spriteAlpha | (ctx->bgAlpha << 8);

    ctx->handCount = ov07_0221C4A8(ctx->battleAnimSys, 0);
    ctx->handSprites[0] = sprite;

    for (i = 1; i < ctx->handCount; i++) {
        ctx->handSprites[i] = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
    }

    ManagedSprite_SetAnim(ctx->handSprites[0], 0);
    ManagedSprite_SetAnim(ctx->handSprites[1], 0);
    ManagedSprite_SetAnim(ctx->handSprites[2], 1);
    ManagedSprite_SetAnim(ctx->handSprites[3], 1);
    ManagedSprite_SetAnim(ctx->handSprites[4], 2);
    ManagedSprite_SetAnim(ctx->handSprites[5], 3);
    ManagedSprite_SetFlipMode(ctx->handSprites[0], 1);
    ManagedSprite_SetFlipMode(ctx->handSprites[3], 1);

    for (i = 0; i < ctx->handCount; i++) {
        ManagedSprite_SetAnimateFlag(ctx->handSprites[i], 1);
        ManagedSprite_SetPositionXY(ctx->handSprites[i], ov07_02236796[i].x, ov07_02236796[i].y);
        ManagedSprite_SetOamMode(ctx->handSprites[i], 1);
    }

    ManagedSprite_SetDrawFlag(ctx->handSprites[1], 0);
    ManagedSprite_SetDrawFlag(ctx->handSprites[2], 0);
    ManagedSprite_SetDrawFlag(ctx->handSprites[4], 0);
    ManagedSprite_SetDrawFlag(ctx->handSprites[5], 0);

    ov07_0221C3F4(system, ov07_02229FC4, ctx, 0x44c);
}
