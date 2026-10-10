#include "global.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov18_021F5CC4 {
    u8 *app;
    u8 pad_04[6];
    u8 direction;
    u8 state;
    int rotation;
    int rotationStep;
    u8 pad_14[8];
    u16 index;
} UnkStruct_ov18_021F5CC4;

void PlaySE(u16 seq);
void ov18_021F5180(UnkStruct_ov18_021F5CC4 *ctx, int a1, int a2);
void ov18_021F5000(u8 *app, u32 rot);
void ov18_021F54C0(UnkStruct_ov18_021F5CC4 *ctx, int a1, int a2);
int ov18_021F55D8(UnkStruct_ov18_021F5CC4 *ctx);
void ov18_021F12C8(u8 *app, u16 idx, s16 *a2, s16 *a3, int a4);

#define SPR(ctx) (*(ManagedSprite **)((ctx)->app + 0x68c))

BOOL ov18_021F5CC4(UnkStruct_ov18_021F5CC4 *ctx) {
    s16 out[2];
    u32 rot;

    switch (ctx->state) {
    case 0:
        PlaySE(0x8ee);
        ov18_021F5180(ctx, 0x800, 0);
        ctx->state++;
        // fallthrough
    case 1:
        ManagedSprite_OffsetAffineZRotation(SPR(ctx), ctx->rotation);
        rot = ManagedSprite_GetRotation(SPR(ctx));
        ov18_021F5000(ctx->app, rot);
        ctx->rotation = ctx->rotation + ctx->rotationStep;
        if (ctx->direction == 0) {
            if (rot > 0xf600) {
                return 1;
            }
            ManagedSprite_SetAffineZRotation(SPR(ctx), 0xf600);
            ov18_021F5000(ctx->app, 0xf600);
            ctx->state++;
        } else {
            if (rot < 0xa00) {
                return 1;
            }
            ManagedSprite_SetAffineZRotation(SPR(ctx), 0xa00);
            ov18_021F5000(ctx->app, 0xa00);
            ctx->state++;
        }
        // fallthrough
    case 2:
        ov18_021F54C0(ctx, -0x18, 0);
        ctx->state++;
        // fallthrough
    case 3:
        if (ov18_021F55D8(ctx) == 0) {
            return 0;
        }
        ov18_021F12C8(ctx->app, ctx->index, &out[1], &out[0], 1);
        if (out[0] <= -0x100) {
            return 0;
        }
        return 1;
    default:
        return 1;
    }
}
