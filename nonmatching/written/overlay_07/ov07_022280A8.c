#include "global.h"

typedef struct UnkStruct_ov07_022280A8 {
    u8 state;   // 0x00
    u8 count;   // 0x01
    s16 baseY;  // 0x02
    s16 unk04;  // 0x04
    u8 unk06[2];
    void *sys;  // 0x08
    void *pokepic; // 0x0C
    s16 x;      // 0x10
    s16 y;      // 0x12
    u8 unk14[0x10];
    int unk24;  // 0x24
} UnkStruct_ov07_022280A8;

extern void ov07_02222590(void *a, int b, int c, int d, int e, int f, int g);
extern BOOL ov07_0222260C(void *a);
extern void Pokepic_SetAttr(void *pokepic, int attr, int value);
extern int ov07_02222674(int a, int b, int c);
extern void ov07_0221C448(void *sys, void *task);
extern void Heap_Free(void *p);
extern const u8 ov07_02236713[];
extern const u8 ov07_02236714[];
extern const u8 ov07_02236715[];
extern const u8 ov07_02236716[];
extern const u8 ov07_02236717[];

void ov07_022280A8(void *task, UnkStruct_ov07_022280A8 *ctx) {
    switch (ctx->state) {
    case 0: {
        int idx = ctx->count * 5;
        ov07_02222590(&ctx->x, ov07_02236713[idx], ov07_02236714[idx], ov07_02236715[idx], ov07_02236716[idx], 100, ov07_02236717[idx]);
        ctx->count++;
        ctx->state++;
        break;
    }
    case 1:
        if (ov07_0222260C(&ctx->x) == 0) {
            if (ctx->count < 3) {
                ctx->state--;
            } else {
                ctx->state++;
            }
        }
        Pokepic_SetAttr(ctx->pokepic, 0xc, ctx->x);
        Pokepic_SetAttr(ctx->pokepic, 0xd, ctx->y);
        Pokepic_SetAttr(ctx->pokepic, 1, ctx->baseY + ov07_02222674(ctx->baseY, ctx->unk04, ctx->unk24));
        break;
    default:
        ov07_0221C448(ctx->sys, task);
        Heap_Free(ctx);
        break;
    }
}
