#include "global.h"

typedef struct UnkStruct_ov07_022281C0 {
    u8 state;   // 0x00
    u8 count;   // 0x01
    s16 unk02;  // 0x02
    s16 unk04;  // 0x04
    s16 unk06;  // 0x06
    void *sys;  // 0x08
    void *pokepic; // 0x0C
    s16 x;      // 0x10
    s16 y;      // 0x12
    u8 unk14[0x10];
    int unk24;  // 0x24
} UnkStruct_ov07_022281C0;

extern void ov07_02222590(void *a, int b, int c, int d, int e, int f, int g);
extern BOOL ov07_0222260C(void *a);
extern void Pokepic_SetAttr(void *pokepic, int attr, int value);
extern int Pokepic_GetAttr(void *pokepic, int attr);
extern void ov07_022226C4(void *pokepic, int a, int b, int c, int d);
extern void ov07_02222268(void *a, int b, int c, s16 d, int e, int f);
extern BOOL ov07_022222B4(void *a);
extern void ov07_0221C448(void *sys, void *task);
extern void Heap_Free(void *p);
extern const u8 ov07_022366EB[];
extern const u8 ov07_022366EC[];
extern const u8 ov07_022366ED[];
extern const u8 ov07_022366EE[];
extern const u8 ov07_022366EF[];

void ov07_022281C0(void *task, UnkStruct_ov07_022281C0 *ctx) {
    int idx;
    switch (ctx->state) {
    case 0:
        idx = ctx->count * 5;
        ov07_02222590(&ctx->x, ov07_022366EB[idx], ov07_022366EC[idx], ov07_022366ED[idx], ov07_022366EE[idx], 100, ov07_022366EF[idx]);
        ctx->count++;
        ctx->state++;
        break;
    case 1:
        if (ov07_0222260C(&ctx->x) == 0) {
            ctx->state++;
        }
        Pokepic_SetAttr(ctx->pokepic, 0xc, ctx->x);
        Pokepic_SetAttr(ctx->pokepic, 0xd, ctx->y);
        ov07_022226C4(ctx->pokepic, ctx->unk02, ctx->unk06, ctx->unk24, 0);
        break;
    case 2:
        ov07_02222268(&ctx->x, 0, 0, (s16)Pokepic_GetAttr(ctx->pokepic, 1), 0, 5);
        ctx->state++;
        break;
    case 3:
        if (ov07_022222B4(&ctx->x) == 0) {
            ctx->state++;
        }
        Pokepic_SetAttr(ctx->pokepic, 1, ctx->y);
        break;
    case 4:
        idx = ctx->count * 5;
        ov07_02222590(&ctx->x, ov07_022366EB[idx], ov07_022366EC[idx], ov07_022366ED[idx], ov07_022366EE[idx], 100, ov07_022366EF[idx]);
        ctx->unk02 = Pokepic_GetAttr(ctx->pokepic, 1);
        ctx->state++;
        break;
    case 5:
        if (ov07_0222260C(&ctx->x) == 0) {
            ctx->state++;
        }
        Pokepic_SetAttr(ctx->pokepic, 0xc, ctx->x);
        Pokepic_SetAttr(ctx->pokepic, 0xd, ctx->y);
        ov07_022226C4(ctx->pokepic, ctx->unk02, ctx->unk06, ctx->unk24, 1);
        break;
    default:
        Pokepic_SetAttr(ctx->pokepic, 1, ctx->unk04);
        Pokepic_SetAttr(ctx->pokepic, 6, 1);
        Pokepic_SetAttr(ctx->pokepic, 0xc, 0x100);
        Pokepic_SetAttr(ctx->pokepic, 0xd, 0x100);
        ov07_0221C448(ctx->sys, task);
        Heap_Free(ctx);
        break;
    }
}
