#include "global.h"

typedef struct UnkStruct_ov07_02226CB0 {
    u8 state;
    u8 pad_01[0x1b];
    void *sprite;
    u8 pad_20[0x14];
    int windowType;
    int stepCount;
    int sinkFullyStartFrame;
} UnkStruct_ov07_02226CB0;

extern u16 LCRandom(void);
extern void ManagedSprite_OffsetPositionXY(void *sprite, s16 x, s16 y);
extern void ManagedSprite_GetPositionXY(void *sprite, s16 *x, s16 *y);
extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);

#define REG_DISPCNT (*(vu32 *)0x04000000)
#define REG_WIN0H (*(vu16 *)0x04000040)
#define REG_WIN0V (*(vu16 *)0x04000044)
#define REG_WININ (*(vu16 *)0x04000048)
#define REG_WINOUT (*(vu16 *)0x0400004A)

void ov07_02226CB0(UnkStruct_ov07_02226CB0 *ctx) {
    switch (ctx->state) {
    case 0:
        if (ctx->windowType == 0) {
            REG_DISPCNT = (REG_DISPCNT & 0xFFFF1FFF) | 0x2000;
            REG_WININ = (REG_WININ & ~0x3f) | 0x2f;
            REG_WINOUT = (REG_WINOUT & ~0x3f) | 0x3f;
            REG_WIN0H = 0x80;
            REG_WIN0V = 0xA0C0;
            ctx->sinkFullyStartFrame = LCRandom() % 5 + 0x23;
        } else {
            REG_DISPCNT = (REG_DISPCNT & 0xFFFF1FFF) | 0x2000;
            REG_WININ = (REG_WININ & ~0x3f) | 0x2f;
            REG_WINOUT = (REG_WINOUT & ~0x3f) | 0x3f;
            REG_WIN0H = 0x8000;
            REG_WIN0V = 0x56C0;
            ctx->sinkFullyStartFrame = LCRandom() % 5 + 0x23;
        }
        break;
    case 5:
    case 6:
        if (LCRandom() % 2 != 0) {
            if (ctx->stepCount == 0) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 4);
            }
        }
        break;
    case 7:
        if (ctx->stepCount != 1) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 4);
        }
        break;
    case 10:
    case 11:
        if (LCRandom() % 2 != 0) {
            if (ctx->stepCount == 1) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 4);
            }
        }
        break;
    case 12:
        if (ctx->stepCount != 2) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 4);
        }
        break;
    case 15:
    case 16:
        if (LCRandom() % 2 != 0) {
            if (ctx->stepCount == 2) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 4);
            }
        }
        break;
    case 17:
        if (ctx->stepCount != 3) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 4);
        }
        break;
    case 22:
    case 23:
        if (LCRandom() % 2 != 0) {
            if (ctx->stepCount == 3) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 8);
            }
        }
        break;
    case 24:
        if (ctx->stepCount != 4) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 8);
        }
        break;
    default:
        if (ctx->state > ctx->sinkFullyStartFrame) {
            if (ctx->stepCount < 20) {
                s16 x, y;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, 4);
                ManagedSprite_GetPositionXY(ctx->sprite, &x, &y);
                if (y > 0x82) {
                    ManagedSprite_SetDrawFlag(ctx->sprite, 0);
                }
                ctx->stepCount++;
            } else {
                ManagedSprite_SetDrawFlag(ctx->sprite, 0);
            }
        }
        break;
    }
}
