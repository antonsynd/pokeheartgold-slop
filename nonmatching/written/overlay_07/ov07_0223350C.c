#include "global.h"

typedef struct UnkStruct_ov07_0223350C {
    u8 pad_00[8];
    s32 state;
    u8 pad_0C[0x14];
    u8 alpha1;
    u8 alpha2;
    u8 pad_22[0xe];
    void *sprite;
} UnkStruct_ov07_0223350C;

void ManagedSprite_SetOamMode(void *sprite, int mode);
void ManagedSprite_SetDrawFlag(void *sprite, int flag);
void ov07_02232F74(void *param, int a);

BOOL ov07_0223350C(UnkStruct_ov07_0223350C *ctx) {
    switch (ctx->state) {
    case 0:
        ManagedSprite_SetOamMode(ctx->sprite, 1);
        ctx->state++;
        // fallthrough
    case 1:
        if (ctx->alpha1 != 0) {
            ctx->alpha1--;
            ctx->alpha2++;
        } else {
            ctx->alpha1 = 0;
            ctx->alpha2 = 15;
            ManagedSprite_SetDrawFlag(ctx->sprite, 0);
            ctx->state++;
        }
        *(volatile u16 *)0x04000052 = (u16)(ctx->alpha1 | (ctx->alpha2 << 8));
        break;
    default:
        ov07_02232F74(ctx, 26);
        break;
    }
    return 1;
}
