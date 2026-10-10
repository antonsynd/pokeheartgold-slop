#include "global.h"

typedef struct UnkStruct_ov07_02228510 {
    u8 state;   // 0x00
    u8 count;   // 0x01
    u8 loops;   // 0x02
    u8 unk03;
    s16 unk04;  // 0x04
    s16 unk06;  // 0x06
    void *sys;  // 0x08
    void *pokepic; // 0x0C
    s16 x;      // 0x10
    s16 y;      // 0x12
    u8 unk14[0x10];
    int unk24;  // 0x24
    u8 unk28[0xC];
    s16 unk34;  // 0x34
    s16 unk36;  // 0x36
} UnkStruct_ov07_02228510;

extern void ov07_02222590(void *a, int b, int c, int d, int e, int f, int g);
extern BOOL ov07_0222260C(void *a);
extern void Pokepic_SetAttr(void *pokepic, int attr, int value);
extern void ov07_022226C4(void *pokepic, int a, int b, int c, int d);
extern void ov07_02222268(void *a, int b, int c, s16 d, s16 e, int f);
extern BOOL ov07_022222B4(void *a);
extern void ov07_0221C448(void *sys, void *task);
extern void Heap_Free(void *p);
extern const u8 ov07_022366F5[];
extern const u8 ov07_022366F6[];
extern const u8 ov07_022366F7[];
extern const u8 ov07_022366F8[];
extern const u8 ov07_022366F9[];
extern const u8 ov07_022366D8[];
extern const u8 ov07_022366D9[];
extern const u8 ov07_022366DA[];

void ov07_02228510(void *task, UnkStruct_ov07_02228510 *ctx) {
    int idx, n;
    switch (ctx->state) {
    case 0:
        idx = ctx->count * 5;
        ov07_02222590(&ctx->x, ov07_022366F5[idx], ov07_022366F6[idx], ov07_022366F7[idx], ov07_022366F8[idx], 100, ov07_022366F9[idx]);
        idx = ctx->count * 3;
        ov07_02222268(&ctx->unk34, 0, 0, (s16)(ctx->unk04 + ov07_022366D8[idx]), (s16)(ctx->unk04 + ov07_022366D9[idx]), ov07_022366DA[idx]);
        ctx->count++;
        ctx->state++;
        break;
    case 1:
        n = 0;
        if (ov07_0222260C(&ctx->x) == 0) {
            n++;
        }
        if (ov07_022222B4(&ctx->unk34) == 0) {
            n++;
        }
        if (n >= 2) {
            if (ctx->count >= 3) {
                ctx->loops++;
                ctx->count = 0;
                if (ctx->loops >= 3) {
                    ctx->state++;
                }
            } else {
                ctx->state = 0;
            }
        }
        Pokepic_SetAttr(ctx->pokepic, 0xc, ctx->x);
        Pokepic_SetAttr(ctx->pokepic, 0xd, ctx->y);
        ov07_022226C4(ctx->pokepic, ctx->unk36, ctx->unk06, ctx->unk24, 0);
        break;
    default:
        ov07_0221C448(ctx->sys, task);
        Heap_Free(ctx);
        break;
    }
}
