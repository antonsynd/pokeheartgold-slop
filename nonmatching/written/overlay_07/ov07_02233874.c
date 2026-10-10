#include "global.h"

typedef struct UnkStruct_ov07_02233874 {
    u8 pad_00[8];
    s32 state;
    u8 pad_0C[0x1c];
    s32 doneFlag;
    u8 pad_2C[4];
    void *sprite;
    u8 pad_34[0x14];
    u8 posA[0x24];
    u8 posB[0x24];
    s32 type;
    s32 heapID;
    u8 pad_98[8];
    s32 ballID;
    u8 pad_A4[0xc];
    void *paletteSys;
    u8 pad_B4[4];
    s16 b8;
    s16 ba;
    s16 bc;
    s16 be;
    s32 c0;
    s32 counter;
    s32 c8;
    u8 pad_CC[8];
    void *palFade;
} UnkStruct_ov07_02233874;

u16 LCRandom(void);
int ov07_02232540(int type);
int ov07_02232580(int type);
void ov07_02222338(void *a, void *b, int c, int d, int e, int f, int g, int h);
int ov07_022223CC(void *a, void *b, void *sprite);
void ov07_022344B4(void *ctx, int a);
void ov07_022344C0(void *ctx, int a);
int ov07_02222EE8(void *p);
void ov07_02222EF8(void *p);
void *ov07_02222F10(void *a, int b, int c, int d, int e, int f, int g, int h, int i, int j, int k);
void ManagedSprite_OffsetAffineZRotation(void *sprite, int a);
int ManagedSprite_GetPaletteOverrideOffset(void *sprite);
void ManagedSprite_SetAnim(void *sprite, int anim);
void ManagedSprite_SetAnimationFrame(void *sprite, int frame);

BOOL ov07_02233874(UnkStruct_ov07_02233874 *ctx) {
    switch (ctx->state) {
    case 0:
        ov07_02222338(ctx->posA, ctx->posB, ctx->b8, ctx->bc, ctx->ba, ctx->be, (u16)ctx->c0, ctx->c8 << 12);
        ctx->counter = 0;
        ctx->state++;
        ctx->palFade = NULL;
        if (ov07_02232540(ctx->type) == 1) {
            int r = LCRandom() % 20 + 10;
            ManagedSprite_OffsetAffineZRotation(ctx->sprite, r << 13);
        }
        break;
    case 1:
        if (ov07_02232540(ctx->type) == 1) {
            ManagedSprite_OffsetAffineZRotation(ctx->sprite, 0x2000);
            if (ctx->counter > ctx->c0 / 2 + 10) {
                ManagedSprite_OffsetAffineZRotation(ctx->sprite, 0x2000);
            }
            if (ov07_02232580(ctx->type) == 1) {
                if (ctx->counter == ctx->c0 / 2 + 10) {
                    int v = ManagedSprite_GetPaletteOverrideOffset(ctx->sprite);
                    ctx->palFade = ov07_02222F10(ctx->paletteSys, ctx->heapID, 2, (u16)(v << 4), 16, -2, 2, 0, 14, 0xffff, 0x3ea);
                }
            }
        }
        ctx->counter++;
        if (ctx->type >= 6 && ctx->type <= 8) {
            int half = ctx->c0 / 2;
            if (ctx->counter > half && ctx->counter < half + 5) {
                break;
            }
        }
        if (ov07_022223CC(ctx->posA, ctx->posB, ctx->sprite) == 0) {
            ov07_022344B4(ctx, 0);
            ctx->state++;
        }
        break;
    case 2:
        if (ov07_02232580(ctx->type) == 1 && ctx->palFade != NULL) {
            if (ov07_02222EE8(ctx->palFade) == 1) {
                break;
            }
            ov07_02222EF8(ctx->palFade);
            ctx->doneFlag = 1;
            return 0;
        } else {
            if (ctx->type >= 15) {
                ctx->doneFlag = 1;
                return 0;
            }
            ctx->state++;
        }
        break;
    case 3:
        ManagedSprite_SetAnim(ctx->sprite, 1);
        ov07_022344C0(ctx, 0);
        ctx->counter = 0;
        ctx->state++;
        break;
    default:
        if (ctx->counter == 5) {
            int v;
            ManagedSprite_SetAnimationFrame(ctx->sprite, 2);
            v = ManagedSprite_GetPaletteOverrideOffset(ctx->sprite);
            ctx->palFade = ov07_02222F10(ctx->paletteSys, ctx->heapID, 2, (u16)(v << 4), 16, -2, 2, 0, 14, 0xffff, 0x3ea);
            ctx->doneFlag = 1;
        }
        ctx->counter++;
        if (ctx->counter > 15) {
            if (ov07_02222EE8(ctx->palFade) == 1) {
                break;
            }
            ov07_02222EF8(ctx->palFade);
            return 0;
        }
        break;
    }
    return 1;
}
