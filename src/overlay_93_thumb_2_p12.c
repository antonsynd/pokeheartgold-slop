#include "global.h"

#include "sprite_system.h"
#include "unk_02035900.h"

typedef struct Ov93Lane {
    u8 filler_0[7];
    u8 direction;
} Ov93Lane;

typedef struct Ov93Ball {
    u8 filler_00[4];
    s16 netId;
    u8 filler_06[2];
    int score;
    u8 filler_0C[2];
    u8 bonus;
    u8 filler_0F;
    ManagedSprite *sprite;
    Ov93Lane *lane;
} Ov93Ball;

extern const int ov93_02262CA4[];

u8 ov93_022614F4(void *game, void **effect);
void ov93_02261528(void *effect, int a1);
void ov93_02260FB8(void *game, u8 bonus);
void *ov93_02260F84(void *game);
void ov93_022627E8(void *game, void *a1);

BOOL ov93_02260080(void *game, Ov93Ball *ball) {
    s16 x, y, startX, startY;
    int done = 0;
    s32 remaining, travelled;
    f32 scale;
    fx32 scaleFx;

    ManagedSprite_GetPositionXYWithSubscreenOffset(ball->sprite, &startX, &startY, (192 + 160) << FX32_SHIFT);

    switch (ball->lane->direction) {
    case 0:
        travelled = 28 - startY;
        ManagedSprite_AddSpritePrecisePositionXY(ball->sprite, 0, FX32_CONST(5.0));
        ManagedSprite_GetPositionXYWithSubscreenOffset(ball->sprite, &x, &y, (192 + 160) << FX32_SHIFT);
        remaining = 28 - y;
        if (y > (98 - 24)) {
            done = 1;
        }
        break;
    case 1:
        travelled = startX - 204;
        ManagedSprite_AddSpritePrecisePositionXY(ball->sprite, -FX32_CONST(5.0), 0);
        ManagedSprite_GetPositionXYWithSubscreenOffset(ball->sprite, &x, &y, (192 + 160) << FX32_SHIFT);
        remaining = x - 204;
        if (x < (128 + 24)) {
            done = 1;
        }
        break;
    case 2:
        travelled = startY - 164;
        ManagedSprite_AddSpritePrecisePositionXY(ball->sprite, 0, -FX32_CONST(5.0));
        ManagedSprite_GetPositionXYWithSubscreenOffset(ball->sprite, &x, &y, (192 + 160) << FX32_SHIFT);
        remaining = y - 164;
        if (y < (98 + 16)) {
            done = 1;
        }
        break;
    case 3:
        travelled = 52 - startX;
        ManagedSprite_AddSpritePrecisePositionXY(ball->sprite, FX32_CONST(5.0), 0);
        ManagedSprite_GetPositionXYWithSubscreenOffset(ball->sprite, &x, &y, (192 + 160) << FX32_SHIFT);
        remaining = 52 - x;
        if (x > (128 - 24)) {
            done = 1;
        }
        break;
    }

    if (remaining >= 0) {
        if (remaining < (24 / 2 + 2)) {
            scaleFx = FX32_ONE * remaining / (24 / 2 + 2);
            if (scaleFx < 0x400) {
                scaleFx = 0x400;
            }
            scale = FX_FX32_TO_F32(scaleFx);
            ManagedSprite_SetAffineScale(ball->sprite, scale, scale);
        }
    } else {
        if (remaining > -(24 / 2 + 2)) {
            scaleFx = ov93_02262CA4[ball->bonus] * (-remaining) / (24 / 2 + 2);
            if (scaleFx < 0x400) {
                scaleFx = 0x400;
            }
            scale = FX_FX32_TO_F32(scaleFx);
            ManagedSprite_SetAffineScale(ball->sprite, scale, scale);
        }
    }

    if (ball->netId == sub_0203769C() && travelled >= 0 && remaining <= 0) {
        void *effect;

        ball->bonus = ov93_022614F4(game, &effect);

        switch (ball->bonus) {
        case 1:
            ball->score *= 2;
            break;
        case 2:
            ball->score /= 2;
            break;
        case 3:
            ball->score *= 3;
            break;
        }

        ov93_02260FB8(game, ball->bonus);

        if (ball->bonus != 0) {
            ov93_02261528(effect, 3);
        }

        {
            void *next = ov93_02260F84(game);

            if (next != NULL) {
                ov93_022627E8(game, next);
            }
        }
    }

    if (done == 1) {
        return TRUE;
    }

    return FALSE;
}
