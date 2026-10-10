typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

extern u16 reg_G2_BLDALPHA __asm__("sub_04000052");
extern const u8 ov07_02236704[];
extern const s8 ov07_022366E1[];

void ManagedSprite_OffsetPositionXY(void *spr, s16 x, s16 y);
void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ManagedSprite_SetPriority(void *spr, u32 v);
void ManagedSprite_TickFrame(void *spr);
void Pokepic_SetAttr(void *pic, u32 attr, s32 v);
s32 ov07_02222674(s32 a, s32 b, s32 c);
u32 ov07_0222260C(void *a);
void ov07_02222590(void *a, u32 sx, u32 ex, u32 sy, u32 ey, u32 c, u32 frames);
void ov07_02222DC8(s32 x1, s32 y1, s32 x2, s32 y2, void *outx, void *outy);
void ov07_02222DE4(s32 x1, s32 y1, s32 x2, s32 y2, void *out);
void ov07_02222E0C(s32 x1, s32 y1, s32 x2, s32 y2, void *out);
s32 ov07_02222E48(void *a, s32 target, s32 step);
void Heap_Free(void *p);
s32 ov07_022223CC(void *a, void *b, void *spr);
s32 ov07_0221C4A8(void *a, u32 b);
void Sprite_DeleteAndFreeResources(void *spr);
void SpriteSystem_DrawSprites(void *a);
u32 ov07_0221FAE8(void *a);
void ov07_0221C448(void *a, void *task);
void ov07_02222338(void *a, void *b, s32 x1, s32 x2, s32 y1, s32 y2, s32 frames, s32 mul);

#define S30(c) (*(void **)((c) + 0x30))
#define S7C(c) (*(void **)((c) + 0x7c))

void ov07_022297B8(void *task, u8 *ctx)
{
    s16 x1 = 0, y1 = 0, x2 = 0, y2 = 0;
    s32 i;
    u8 *p;

    switch (ctx[0]) {
    case 0: {
        const u8 *e = &ov07_02236704[ctx[0xc] * 5];
        ov07_02222590(ctx + 0xcc, e[0], e[1], e[2], e[3], 100, e[4]);
        ctx[0xc] = ctx[0xc] + 1;
        ctx[0] = ctx[0] + 1;
        break;
    }
    case 1:
        if (ov07_0222260C(ctx + 0xcc) == 1) {
            Pokepic_SetAttr(*(void **)(ctx + 0x1c), 0xc, *(s16 *)(ctx + 0xcc));
            Pokepic_SetAttr(*(void **)(ctx + 0x1c), 0xd, *(s16 *)(ctx + 0xce));
            s32 off = ov07_02222674(*(s16 *)(ctx + 0x20), *(s32 *)(ctx + 0x24), *(s32 *)(ctx + 0xe0));
            Pokepic_SetAttr(*(void **)(ctx + 0x1c), 1, *(s16 *)(ctx + 0x20) + off);
        } else if (ctx[0xc] < 3) {
            ctx[0] = ctx[0] - 1;
        } else {
            ctx[0] = ctx[0] + 1;
        }
        break;
    case 2:
        ctx[1] = ctx[1] + 1;
        if (ctx[1] >= 1) {
            ctx[1] = 0;
            ctx[0xc] = 0;
            ctx[0] = ctx[0] + 1;
        }
        break;
    case 3:
        ManagedSprite_GetPositionXY(S30(ctx), &x1, &y1);
        if (y1 <= 0x68) {
            ManagedSprite_OffsetPositionXY(S30(ctx), 0, 2);
            ManagedSprite_OffsetPositionXY(S7C(ctx), 0, 2);
        } else {
            ctx[0] = ctx[0] + 1;
        }
        break;
    case 4:
        ManagedSprite_GetPositionXY(S30(ctx), &x1, &y1);
        if (y1 <= 0x68) {
            ManagedSprite_OffsetPositionXY(S30(ctx), 0, 2);
            ManagedSprite_OffsetPositionXY(S7C(ctx), 0, 2);
        } else {
            reg_G2_BLDALPHA = 0x10;
            ctx[0] = ctx[0] + 1;
        }
        ctx[1] = ctx[1] + 1;
        ov07_02222E48(ctx + 4, 0x10, 0x10);
        ov07_02222E48(ctx + 8, 0, -0x10);
        reg_G2_BLDALPHA = (u16)(*(u32 *)(ctx + 4) | (*(u32 *)(ctx + 8) << 8));
        if (ctx[1] == 10) {
            ManagedSprite_OffsetPositionXY(S30(ctx), 0, 0x10);
        }
        if (ctx[1] == 0xc) {
            ManagedSprite_OffsetPositionXY(S7C(ctx), 0, 0x10);
        }
        break;
    case 5:
        ctx[1] = ctx[1] + 1;
        if (ctx[1] >= 1) {
            ctx[1] = 0;
            ManagedSprite_GetPositionXY(S30(ctx), &x1, &y1);
            ManagedSprite_GetPositionXY(S7C(ctx), &x2, &y2);
            ov07_02222DC8(x1, y1, x2, y2, ctx + 200, ctx + 0xca);
            ov07_02222DE4(x1, y1, *(s16 *)(ctx + 200), *(s16 *)(ctx + 0xca), ctx + 0x2c);
            ov07_02222E0C(x1, y1, *(s16 *)(ctx + 200), *(s16 *)(ctx + 0xca), ctx + 0x28);
            ctx[0x2c] = 0;
            ctx[0x2d] = 0x80;
            ctx[0x2e] = 2;
            ctx[0x2f] = 0;
            ctx[0] = ctx[0] + 1;
        }
        break;
    case 6: {
        s8 dirs[10];
        for (i = 0; i < 10; i++) {
            dirs[i] = ov07_022366E1[i];
        }
        ManagedSprite_GetPositionXY(S30(ctx), &x1, &y1);
        ManagedSprite_GetPositionXY(S7C(ctx), &x2, &y2);
        ov07_02222338(ctx + 0x34, ctx + 0x58, x1, x2, y1, y2, 10, *(s32 *)(ctx + 0x2c) * dirs[ctx[0xc] * 2]);
        ov07_02222338(ctx + 0x80, ctx + 0xa4, x2, x1, y2, y1, 10, *(s32 *)(ctx + 0x2c) * dirs[ctx[0xc] * 2 + 1]);
        ctx[0xc] = ctx[0xc] + 1;
        ctx[0] = ctx[0] + 1;
        break;
    }
    case 7: {
        u8 cnt = ov07_022223CC(ctx + 0x34, ctx + 0x58, S30(ctx)) == 0;
        if (ov07_022223CC(ctx + 0x80, ctx + 0xa4, S7C(ctx)) == 0) {
            cnt = cnt + 1;
        }
        if (cnt == 2) {
            if (ctx[0xc] == 5) {
                ctx[0] = ctx[0] + 1;
            } else {
                ctx[0] = ctx[0] - 1;
            }
        }
        break;
    }
    case 8: {
        u8 cnt = ov07_02222E48(ctx + 4, 0, -2) == 1;
        if (ov07_02222E48(ctx + 8, 0x10, 2) == 1) {
            cnt = cnt + 1;
        }
        reg_G2_BLDALPHA = (u16)(*(u32 *)(ctx + 4) | (*(u32 *)(ctx + 8) << 8));
        if (cnt == 2) {
            ctx[0] = ctx[0] + 1;
        }
        break;
    }
    default:
        i = 0;
        p = ctx;
        while (i < ov07_0221C4A8(*(void **)(ctx + 0x10), 0)) {
            Sprite_DeleteAndFreeResources(S30(p));
            i++;
            p += 0x4c;
        }
        ov07_0221C448(*(void **)(ctx + 0x10), task);
        Heap_Free(ctx);
        return;
    }

    i = 0;
    p = ctx;
    while (i < ov07_0221C4A8(*(void **)(ctx + 0x10), 0)) {
        ManagedSprite_GetPositionXY(S30(p), &x1, &y1);
        if (y1 < 0x50) {
            ManagedSprite_SetPriority(S30(p), ov07_0221FAE8(*(void **)(ctx + 0x10)));
        } else if (x1 < 0x81) {
            ManagedSprite_SetPriority(S30(p), ov07_0221FAE8(*(void **)(ctx + 0x10)) + 1);
        } else {
            ManagedSprite_SetPriority(S30(p), ov07_0221FAE8(*(void **)(ctx + 0x10)));
        }
        i++;
        p += 0x4c;
    }
    if (ctx[0] > 3) {
        i = 0;
        p = ctx;
        while (i < ov07_0221C4A8(*(void **)(ctx + 0x10), 0)) {
            ManagedSprite_TickFrame(S30(p));
            i++;
            p += 0x4c;
        }
        SpriteSystem_DrawSprites(*(void **)(ctx + 0x18));
    }
}
