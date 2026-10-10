#include "global.h"
#include "nitro/fx/fx_trig.h"

typedef struct UnkRev_ov07_0222FC44 {
    s16 x;
    u8 pad_02[6];
    s32 curX;
    u8 pad_0C[0x18];
} UnkRev_ov07_0222FC44;

typedef struct UnkStruct_ov07_0222FC44 {
    void *battleAnimSys;
    u8 pad_04[0x10];
    s32 dir;
    void *flameSprites[6];
    UnkRev_ov07_0222FC44 revs[6];
    u8 pad_108[0x28];
    s16 attackerX;
    s16 attackerY;
} UnkStruct_ov07_0222FC44;

void ov07_02222180(void *rev);
int ov07_0221FAE8(void *sys);
void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
void ManagedSprite_SetPriority(void *sprite, int priority);

void ov07_0222FC44(UnkStruct_ov07_0222FC44 *ctx) {
    int i;
    for (i = 0; i < 6; i++) {
        u16 angle;
        s64 prod;
        s32 v;
        s16 y;
        ov07_02222180(&ctx->revs[i]);
        angle = (u16)(ctx->revs[i].curX * 5);
        prod = (s64)FX_SinCosTable_[(angle >> 4) * 2] * (s64)(s32)(0xa000 * ctx->dir);
        prod += 0x800;
        v = (s32)(((u32)prod >> 12) | ((u32)((u64)prod >> 32) << 20));
        y = (s16)(ctx->attackerY + (((s32)((u32)v << 4)) >> 16));
        ManagedSprite_SetPositionXY(ctx->flameSprites[i], (s16)(ctx->attackerX + ctx->revs[i].x), y);
        if (ctx->revs[i].curX >= 0x3fff && ctx->revs[i].curX <= 0xbf49) {
            ManagedSprite_SetPriority(ctx->flameSprites[i], 1);
        } else {
            ManagedSprite_SetPriority(ctx->flameSprites[i], ov07_0221FAE8(ctx->battleAnimSys) + 1);
        }
    }
}
