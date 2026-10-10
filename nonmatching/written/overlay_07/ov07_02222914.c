#include "global.h"

typedef struct UnkStruct_ov07_02222914_Transform {
    s16 x;
    s16 y;
    u8 pad[0x20];
} UnkStruct_ov07_02222914_Transform;

typedef struct UnkStruct_ov07_02222914 {
    s16 x;
    s16 y;
    UnkStruct_ov07_02222914_Transform transforms[4];
    int (*transformFunc)(UnkStruct_ov07_02222914_Transform *, void *, u32, u32);
    void *sprites[4];
    u16 delay;
    u16 delayCounter;
    u8 count;
    u8 activeCount;
    u8 mode;
} UnkStruct_ov07_02222914;

extern void ManagedSprite_SetDrawFlag(void *sprite, int flag);
extern void ManagedSprite_SetPositionXY(void *sprite, s16 x, s16 y);
extern void ManagedSprite_SetAffineScale(void *sprite, int x, int y);
extern void ov07_02222644(void *transform, int *x, int *y);

// r2 and r3 are not arguments of the call through transformFunc, but the original leaves whatever the
// previous call returned in them and the check compares all four registers of such a call. They are
// captured right after each call so the call below passes the same values.
#define CAPTURE_R2_R3(a, b)                                          \
    do {                                                             \
        register u32 captured2 __asm__("r2");                        \
        register u32 captured3 __asm__("r3");                        \
        __asm__ volatile("" : "=r"(captured2), "=r"(captured3));     \
        (a) = captured2;                                             \
        (b) = captured3;                                             \
    } while (0)

// The original keeps the per-sprite results in a four-entry array on its stack, but indexes it with
// the sprite counts it reads from the context, unchecked. Entries past the fourth are the five
// registers it pushed and then the lr slot (a result stored over lr makes the original return to a
// bad address); beyond that is the caller's stack. The array is modelled as the words around the
// original's frame so that reads past the fourth entry see the same values.
BOOL ov07_02222914(UnkStruct_ov07_02222914 *ctx) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 callerLr;
    __asm__ volatile("mov %0, lr" : "=r"(callerLr));
    u32 frameAddress = (u32)__builtin_frame_address(0);
    u32 entrySp = frameAddress + 8;
    u32 callerR7 = *(u32 *)frameAddress;
    int i;
    int active[10];
    int *beyond = (int *)entrySp;
    u32 leftoverR2;
    u32 leftoverR3;

    active[0] = 1;
    active[1] = 1;
    active[2] = 1;
    active[3] = 1;
    active[4] = callerR3;
    active[5] = 0x40000004;
    active[6] = 0x40000005;
    active[7] = 0x40000006;
    active[8] = callerR7;
    active[9] = callerLr;

    leftoverR2 = ctx->delay;
    leftoverR3 = callerR3;

    if (ctx->delay <= ctx->delayCounter) {
        u8 index = ctx->activeCount;
        ManagedSprite_SetDrawFlag(ctx->sprites[index], 1);
        CAPTURE_R2_R3(leftoverR2, leftoverR3);
        ctx->activeCount = index + 1;
        ctx->delayCounter = 0;
    }

    if (ctx->activeCount < ctx->count) {
        ctx->delayCounter++;
    }

    for (i = 0; i < ctx->activeCount; i++) {
        int result = ctx->transformFunc(&ctx->transforms[i], (void *)ctx->transformFunc, leftoverR2, leftoverR3);
        if (i < 10) {
            active[i] = result;
        }

        if (result != 0) {
            if (ctx->mode == 0) {
                ManagedSprite_SetPositionXY(ctx->sprites[i], ctx->x + ctx->transforms[i].x, ctx->y + ctx->transforms[i].y);
                CAPTURE_R2_R3(leftoverR2, leftoverR3);
            } else {
                int a, b;
                ov07_02222644(&ctx->transforms[i], &a, &b);
                ManagedSprite_SetAffineScale(ctx->sprites[i], a, b);
                CAPTURE_R2_R3(leftoverR2, leftoverR3);
            }
        } else {
            ManagedSprite_SetDrawFlag(ctx->sprites[i], 0);
            CAPTURE_R2_R3(leftoverR2, leftoverR3);
        }
    }

    for (i = 0; i < ctx->count; i++) {
        int value = i < 10 ? active[i] : beyond[i - 10];
        if (value == 1) {
            return TRUE;
        }
    }
    return FALSE;
}
