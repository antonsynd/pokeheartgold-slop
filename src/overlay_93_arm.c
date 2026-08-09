#include "global.h"

#include "palette.h"
#include "sprite.h"
#include "sprite_system.h"
#include "unk_02005D10.h"

// This file is ARM code, not Thumb. global.h pulls in <nitro/code16.h>
// (#pragma thumb on), so code32.h has to come after it -- keep clang-format
// from sorting it back above global.h.
// clang-format off
#include <nitro/code32.h>
// clang-format on

typedef struct Ov93Node {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
    s32 unk_10;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1C;
} Ov93Node;

// The sprite/resource owner. A different object from Ov93Ctx -- the two are
// passed side by side from the overlay's task function.
typedef struct Ov93App {
    u8 padding_000[0x24];
    SpriteSystem *spriteSystem;   // 0x024
    SpriteManager *spriteManager; // 0x028
    u8 padding_02C[0x60];
    PaletteData *paletteData; // 0x08C
} Ov93App;

typedef struct Ov93Ctx {
    u8 padding_000[0xC];
    Ov93Node unk_00C[8]; // 0x00C
    Ov93Node unk_10C[8]; // 0x10C
    s32 unk_20C;         // 0x20C
    s32 unk_210;         // 0x210
    u8 padding_214[0x4];
    s32 unk_218; // 0x218
    s32 unk_21C; // 0x21C
    u8 padding_220[0x4];
    s32 unk_224;  // 0x224
    s32 unk_228;  // 0x228
    s32 unk_22C;  // 0x22C
    fx32 unk_230; // 0x230
    u8 padding_234[0x4];
    s32 unk_238; // 0x238
    s32 unk_23C; // 0x23C
    s32 unk_240; // 0x240
    u8 padding_244[0x4];
    s32 unk_248; // 0x248
    u8 padding_24C[0x24];
    s32 unk_270; // 0x270
    u8 unk_274;  // 0x274
} Ov93Ctx;

// fx32 -> the 1:11:4 pair the TEXCOORD command wants, packed t:s.
#define OV93_PACK_TEXCOORD(s, t) ((u16)(fx16)((s) >> (FX32_SHIFT - 4)) | ((u32)(u16)(fx16)((t) >> (FX32_SHIFT - 4)) << 16))
// VTX_16 first parameter word: x in the low half, y in the high half.
#define OV93_PACK_VTX16_XY(x, y) ((u32)(u16)(x) | ((u32)(u16)(y) << 16))
// GX_PACK_NORMAL(0, 0, FX16_ONE - 1) -- straight at the camera.
#define OV93_NORMAL_FRONT 0x1FF00000

u16 FX_Atan2Idx(fx32 y, fx32 x);

void ov93_0225EE98(void);
void ov93_0225EF0C(Ov93Ctx *ctx);
void ov93_0225EF5C(Ov93Ctx *ctx);
void ov93_0225EFAC(Ov93Ctx *ctx);
int ov93_0225F8AC(Ov93Ctx *ctx, int a1);
void ov93_0225F268(s32 a0, s32 a1, s16 *p2, s16 *p3);
BOOL ov93_0225F370(Ov93Ctx *ctx);
BOOL ov93_0225F44C(Ov93Ctx *ctx);
int ov93_0225F548(Ov93Ctx *ctx, int a1, fx32 a2);
void ov93_0225EB38(Ov93Ctx *ctx);
BOOL ov93_0225F8E4(Ov93Ctx *ctx, s32 a1, s32 a2, s32 a3, s32 *p4, s32 *p5);
int ov93_0225F94C(Ov93Ctx *ctx);
int ov93_0225F9AC(Ov93Ctx *ctx);
void ov93_0225F9D8(Ov93App *app);
ManagedSprite *ov93_0225FB00(Ov93App *app);
void ov93_0225FB6C(Ov93Ctx *ctx, ManagedSprite *sprite);

static const u8 sUnk_02262C04[13][4] = {
    { 0x80, 0x40, 0xC0, 0x10 },
    { 0xA8, 0x28, 0xD8, 0x00 },
    { 0xA8, 0x54, 0xAC, 0x08 },
    { 0xA8, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0xFF, 0x0F },
    { 0x00, 0x00, 0xFF, 0x0F },
    { 0x00, 0x00, 0xFF, 0x0F },
    { 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00 },
    { 0x01, 0xF0, 0x00, 0x00 },
    { 0x01, 0xF0, 0x00, 0x00 },
    { 0x01, 0xF0, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00 },
};

static const ManagedSpriteTemplate sSpriteTemplate_02262C38 = {
    0,
    0,
    0,
    0,
    14,
    0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2713, 0x2715, 0x2713, 0x2713, -1, -1 },
    1,
    0,
};
void ov93_0225FABC(Ov93App *app);
void ov93_0225FBE4(ManagedSprite *sprite);

void ov93_0225EE98(void) {
    u8 shininess[128];
    u8 *p = shininess;
    u8 i;

    for (i = 0; i < 0x7F; i++) {
        s32 n = i * 2 + 1;
        p[i] = (u8)(((s64)n * n * n * n) >> 24);
    }

    p[0x7F] = 0xFF;
    NNS_G3dGeBufferOP_N(G3OP_SHININESS, (u32 *)shininess, G3OP_SHININESS_NPARAMS);
}

void ov93_0225EF0C(Ov93Ctx *ctx) {
    s32 i;
    s32 v;

    for (i = 0, v = 0; i < 8; i++) {
        ctx->unk_00C[i].unk_00 = 0;
        ctx->unk_00C[i].unk_04 = v;
        ctx->unk_00C[i].unk_08 = 0;
        ctx->unk_00C[i].unk_0C = v - 0x10000;
        ctx->unk_00C[i].unk_10 = 0x80000;
        ctx->unk_00C[i].unk_14 = v;
        ctx->unk_00C[i].unk_18 = 0x80000;
        ctx->unk_00C[i].unk_1C = v - 0x10000;
        v -= 0x10000;
    }
}

void ov93_0225EF5C(Ov93Ctx *ctx) {
    s32 i;
    s32 v;

    for (i = 0, v = 0; i < 8; i++) {
        ctx->unk_10C[i].unk_00 = 0;
        ctx->unk_10C[i].unk_04 = v;
        ctx->unk_10C[i].unk_08 = 0;
        ctx->unk_10C[i].unk_0C = v + 0x10000;
        ctx->unk_10C[i].unk_10 = 0x80000;
        ctx->unk_10C[i].unk_14 = v;
        ctx->unk_10C[i].unk_18 = 0x80000;
        ctx->unk_10C[i].unk_1C = v + 0x10000;
        v += 0x10000;
    }
}

void ov93_0225EFAC(Ov93Ctx *ctx) {
    s16 x;
    s16 y;
    s32 i;

    for (i = 0; i < 8; i++) {
        u32 begin = GX_BEGIN_QUADS;

        NNS_G3dGeBufferOP_N(G3OP_BEGIN, &begin, G3OP_BEGIN_NPARAMS);
        {
            u32 texcoord;
            u32 normal;
            u32 vtx[2];

            ov93_0225F268(ctx->unk_00C[i].unk_00, ctx->unk_00C[i].unk_04, &x, &y);
            texcoord = OV93_PACK_TEXCOORD(ctx->unk_10C[i].unk_00, ctx->unk_10C[i].unk_04);
            NNS_G3dGeBufferOP_N(G3OP_TEXCOORD, &texcoord, G3OP_TEXCOORD_NPARAMS);
            normal = OV93_NORMAL_FRONT;
            NNS_G3dGeBufferOP_N(G3OP_NORMAL, &normal, G3OP_NORMAL_NPARAMS);
            vtx[0] = OV93_PACK_VTX16_XY(x, y);
            vtx[1] = 0;
            NNS_G3dGeBufferOP_N(G3OP_VTX_16, vtx, G3OP_VTX_16_NPARAMS);
        }
        {
            u32 texcoord;
            u32 normal;
            u32 vtx[2];

            ov93_0225F268(ctx->unk_00C[i].unk_08, ctx->unk_00C[i].unk_0C, &x, &y);
            texcoord = OV93_PACK_TEXCOORD(ctx->unk_10C[i].unk_08, ctx->unk_10C[i].unk_0C);
            NNS_G3dGeBufferOP_N(G3OP_TEXCOORD, &texcoord, G3OP_TEXCOORD_NPARAMS);
            normal = OV93_NORMAL_FRONT;
            NNS_G3dGeBufferOP_N(G3OP_NORMAL, &normal, G3OP_NORMAL_NPARAMS);
            vtx[0] = OV93_PACK_VTX16_XY(x, y);
            vtx[1] = 0;
            NNS_G3dGeBufferOP_N(G3OP_VTX_16, vtx, G3OP_VTX_16_NPARAMS);
        }
        {
            u32 texcoord;
            u32 normal;
            u32 vtx[2];

            ov93_0225F268(ctx->unk_00C[i].unk_18, ctx->unk_00C[i].unk_1C, &x, &y);
            texcoord = OV93_PACK_TEXCOORD(ctx->unk_10C[i].unk_18, ctx->unk_10C[i].unk_1C);
            NNS_G3dGeBufferOP_N(G3OP_TEXCOORD, &texcoord, G3OP_TEXCOORD_NPARAMS);
            normal = OV93_NORMAL_FRONT;
            NNS_G3dGeBufferOP_N(G3OP_NORMAL, &normal, G3OP_NORMAL_NPARAMS);
            vtx[0] = OV93_PACK_VTX16_XY(x, y);
            vtx[1] = 0;
            NNS_G3dGeBufferOP_N(G3OP_VTX_16, vtx, G3OP_VTX_16_NPARAMS);
        }
        {
            u32 texcoord;
            u32 normal;
            u32 vtx[2];

            ov93_0225F268(ctx->unk_00C[i].unk_10, ctx->unk_00C[i].unk_14, &x, &y);
            texcoord = OV93_PACK_TEXCOORD(ctx->unk_10C[i].unk_10, ctx->unk_10C[i].unk_14);
            NNS_G3dGeBufferOP_N(G3OP_TEXCOORD, &texcoord, G3OP_TEXCOORD_NPARAMS);
            normal = OV93_NORMAL_FRONT;
            NNS_G3dGeBufferOP_N(G3OP_NORMAL, &normal, G3OP_NORMAL_NPARAMS);
            vtx[0] = OV93_PACK_VTX16_XY(x, y);
            vtx[1] = 0;
            NNS_G3dGeBufferOP_N(G3OP_VTX_16, vtx, G3OP_VTX_16_NPARAMS);
        }
        NNS_G3dGeBufferOP_N(G3OP_END, NULL, G3OP_END_NPARAMS);
    }
}

void ov93_0225F268(s32 a0, s32 a1, s16 *p2, s16 *p3);
BOOL ov93_0225F370(Ov93Ctx *ctx);
BOOL ov93_0225F44C(Ov93Ctx *ctx);
int ov93_0225F548(Ov93Ctx *ctx, int a1, fx32 a2);
void ov93_0225EB38(Ov93Ctx *ctx);
void ov93_0225F268(s32 a0, s32 a1, s16 *p2, s16 *p3) {
    s32 x = ((s64)a0 << FX32_SHIFT) / 0x80000;
    s32 y = ((s64)a1 << FX32_SHIFT) / 0x80000;

    GF_ASSERT(x <= 0x7FFF);
    GF_ASSERT(x >= -0x8000);
    GF_ASSERT(y <= 0x7FFF);
    GF_ASSERT(y >= -0x8000);
    GF_ASSERT(x - 0x800 <= 0x7FFF);
    GF_ASSERT(x - 0x800 >= -0x8000);
    GF_ASSERT(y + 0x800 <= 0x7FFF);
    GF_ASSERT(y + 0x800 >= -0x8000);

    *p2 = x - 0x800;
    *p3 = y + 0x800;
}

BOOL ov93_0225F370(Ov93Ctx *ctx) {
    s32 i;
    s32 y;

    if (ctx->unk_238 == 1 || ctx->unk_218 == 0) {
        return FALSE;
    }

    i = ctx->unk_270;
    y = sUnk_02262C04[i][3] + (ctx->unk_230 >> FX32_SHIFT);

    if (ctx->unk_20C < sUnk_02262C04[i][1] || ctx->unk_20C > sUnk_02262C04[i][2] || ctx->unk_210 < y || ctx->unk_210 > sUnk_02262C04[i + 1][0]) {
        return FALSE;
    }

    ctx->unk_238 = TRUE;
    ctx->unk_224 = ctx->unk_20C;
    ctx->unk_228 = ctx->unk_210;
    ctx->unk_22C = ctx->unk_210 - y;
    ctx->unk_230 = -(ctx->unk_00C[0].unk_14 + (ctx->unk_00C[0].unk_04 - ctx->unk_00C[0].unk_14) / 2);
    ctx->unk_240 = ov93_0225F9AC(ctx);
    return TRUE;
}

BOOL ov93_0225F44C(Ov93Ctx *ctx) {
    s32 arg1 = 0;
    fx32 delta;
    s32 v;
    int r;

    if (ctx->unk_238 == 1) {
        s32 prev = ctx->unk_23C;
        s32 cur = ctx->unk_210;

        if (cur < prev) {
            ctx->unk_274 = FALSE;
            return FALSE;
        }

        if (cur == prev) {
            ctx->unk_274 = FALSE;
            return TRUE;
        }

        if (prev != -1 && cur > prev && !IsSEPlaying(0x58F)) {
            PlaySE(0x58F);
            ctx->unk_274 = TRUE;
        }

        v = ctx->unk_210;
        delta = ((v - ctx->unk_22C) << FX32_SHIFT) - (ctx->unk_230 + (sUnk_02262C04[ctx->unk_270][3] << FX32_SHIFT));
        ctx->unk_23C = v;
    } else {
        arg1 = 1;
        delta = -ctx->unk_248;
    }

    r = ov93_0225F548(ctx, arg1, delta);
    switch (r) {
    case 0:
        break;
    case 1:
    case 2:
        ov93_0225EB38(ctx);
        break;
    }

    ctx->unk_230 = -(ctx->unk_00C[0].unk_14 + (ctx->unk_00C[0].unk_04 - ctx->unk_00C[0].unk_14) / 2);
    return TRUE;
}

int ov93_0225F548(Ov93Ctx *ctx, int a1, fx32 a2) {
    s32 hi;
    s32 lo;
    BOOL flag;
    // a, b and mid are recycled after the early-out below: a becomes the
    // angular step, b the running angle and mid the running mid offset. They
    // share retail's registers, so they have to stay the same locals.
    s32 a;
    s32 b;
    s32 mid;
    s32 newMid;
    s32 i;
    s32 deltaMid;
    s32 angleA;
    s32 angleB;

    a = -ctx->unk_00C[0].unk_04;
    b = -ctx->unk_00C[0].unk_14;
    mid = b + (a - b) / 2;
    flag = FALSE;

    switch (ov93_0225F8AC(ctx, a1)) {
    case 0:
        hi = a + a2;
        lo = b + a2;
        break;
    case 1:
        flag = ov93_0225F8E4(ctx, a2, a, b, &hi, &lo);
        break;
    case 2:
        flag = ov93_0225F8E4(ctx, a2, b, a, &lo, &hi);
        break;
    }

    newMid = lo + (hi - lo) / 2;
    if (mid == newMid && a == hi && b == lo) {
        return 0;
    }

    if (newMid < 0) {
        newMid = 0;
    }
    if (hi < 0) {
        hi = 0;
    }
    if (lo < 0) {
        lo = 0;
    }
    if (newMid > FX32_CONST(100)) {
        newMid = FX32_CONST(100);
        flag = TRUE;
    }
    if (hi > FX32_CONST(100)) {
        hi = FX32_CONST(100);
        flag = TRUE;
    }
    if (lo > FX32_CONST(100)) {
        lo = FX32_CONST(100);
        flag = TRUE;
    }

    // Cases 0 and 2 are spelled out twice on purpose -- retail emits both
    // blocks, so they cannot be folded into one label.
    switch (ov93_0225F8AC(ctx, a1)) {
    default:
    case 0:
        angleB = FX_Atan2Idx(lo - newMid, FX32_CONST(64));
        angleA = (u16)(angleB + 0x8000);
        break;
    case 2:
        angleB = FX_Atan2Idx(lo - newMid, FX32_CONST(64));
        angleA = (u16)(angleB + 0x8000);
        break;
    case 1:
        angleA = FX_Atan2Idx(hi - newMid, -FX32_CONST(64));
        angleB = (u16)(angleA + 0x8000);
        break;
    }

    ctx->unk_00C[0].unk_00 = (FX_CosIdx(angleA) << 6) + FX32_CONST(64);
    ctx->unk_00C[0].unk_04 = -(newMid + (FX_SinIdx(angleA) << 6));
    ctx->unk_00C[0].unk_10 = (FX_CosIdx(angleB) << 6) + FX32_CONST(64);
    ctx->unk_00C[0].unk_14 = -(newMid + (FX_SinIdx(angleB) << 6));

    deltaMid = (FX32_CONST(112) - newMid) / 7;
    if ((u32)angleB > 0x8000) {
        a = -(0x10000 - angleB) / 7;
    } else {
        a = angleB / 7;
    }

    b = a;
    mid = deltaMid;
    for (i = 1; i < 7; i++) {
        ctx->unk_00C[i].unk_00 = (FX_CosIdx(angleA - b) << 6) + FX32_CONST(64);
        ctx->unk_00C[i].unk_04 = -(newMid + (FX_SinIdx(angleA - b) << 6) + mid);
        ctx->unk_00C[i].unk_10 = (FX_CosIdx(angleB - b) << 6) + FX32_CONST(64);
        ctx->unk_00C[i].unk_14 = -(newMid + (FX_SinIdx(angleB - b) << 6) + mid);
        ctx->unk_00C[i - 1].unk_08 = ctx->unk_00C[i].unk_00;
        ctx->unk_00C[i - 1].unk_0C = ctx->unk_00C[i].unk_04;
        ctx->unk_00C[i - 1].unk_18 = ctx->unk_00C[i].unk_10;
        ctx->unk_00C[i - 1].unk_1C = ctx->unk_00C[i].unk_14;
        b += a;
        mid += deltaMid;
    }

    return flag == TRUE ? 2 : 0;
}

int ov93_0225F8AC(Ov93Ctx *ctx, int a1) {
    s32 x;

    if (a1 == 1) {
        return 0;
    }

    x = ctx->unk_21C;
    if (ctx->unk_224 < x - 0x10) {
        return 1;
    }
    if (ctx->unk_224 > x + 0x10) {
        return 2;
    }
    return 0;
}

BOOL ov93_0225F8E4(Ov93Ctx *ctx, s32 a1, s32 a2, s32 a3, s32 *p4, s32 *p5) {
    BOOL ret = FALSE;
    s32 sum;

    *p4 = a2;
    sum = a2 + a1;
    if (sum > 0x64000) {
        a1 -= sum - 0x64000;
        ret = TRUE;
    }

    *p5 = a3;
    *p4 = a2 + a1;

    if (a3 > a2) {
        *p5 = a3;
    } else {
        *p5 = a3 - (a1 * 25) / 100;
    }

    return ret;
}

int ov93_0225F94C(Ov93Ctx *ctx) {
    s32 mid = ctx->unk_00C[0].unk_14 + (ctx->unk_00C[0].unk_04 - ctx->unk_00C[0].unk_14) / 2;

    return FX_Mul((ctx->unk_00C[0].unk_10 - ctx->unk_00C[0].unk_00) + (ctx->unk_00C[6].unk_18 - ctx->unk_00C[6].unk_08), -(ctx->unk_00C[6].unk_0C - mid)) / 2;
}

int ov93_0225F9AC(Ov93Ctx *ctx) {
    return (s64)ov93_0225F94C(ctx) * 100 / 0x3200000;
}

void ov93_0225F9D8(Ov93App *app) {
    NARC *narc = NARC_New(NARC_a_1_9_9, HEAP_ID_117);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(app->paletteData, PLTTBUF_MAIN_OBJ, app->spriteSystem, app->spriteManager, narc, 0x3A, FALSE, 1, 1, 0x2715);
    SpriteSystem_LoadCharResObjFromOpenNarc(app->spriteSystem, app->spriteManager, narc, 0x37, FALSE, 1, 0x2713);
    SpriteSystem_LoadCellResObjFromOpenNarc(app->spriteSystem, app->spriteManager, narc, 0x39, FALSE, 0x2713);
    SpriteSystem_LoadAnimResObjFromOpenNarc(app->spriteSystem, app->spriteManager, narc, 0x38, FALSE, 0x2713);
    NARC_Delete(narc);
}

void ov93_0225FABC(Ov93App *app) {
    SpriteManager_UnloadCharObjById(app->spriteManager, 0x2713);
    SpriteManager_UnloadCellObjById(app->spriteManager, 0x2713);
    SpriteManager_UnloadAnimObjById(app->spriteManager, 0x2713);
    SpriteManager_UnloadPlttObjById(app->spriteManager, 0x2715);
}

ManagedSprite *ov93_0225FB00(Ov93App *app) {
    ManagedSpriteTemplate template = sSpriteTemplate_02262C38;
    ManagedSprite *sprite = SpriteSystem_NewSprite(app->spriteSystem, app->spriteManager, &template);

    ManagedSprite_SetDrawFlag(sprite, FALSE);
    Sprite_TickFrame(sprite->sprite);
    return sprite;
}

void ov93_0225FB6C(Ov93Ctx *ctx, ManagedSprite *sprite) {
    int anim;

    if (ctx->unk_238 != 0) {
        anim = ov93_0225F8AC(ctx, 0) + 1;
    } else {
        anim = 0;
    }

    ManagedSprite_SetPositionXYWithSubscreenOffset(sprite, (s16)ctx->unk_21C, (s16)(sUnk_02262C04[ctx->unk_270][3] + (ctx->unk_230 >> FX32_SHIFT)), FX32_CONST(352));
    ManagedSprite_SetAnim(sprite, anim);
    Sprite_TickFrame(sprite->sprite);
}

void ov93_0225FBE4(ManagedSprite *sprite) {
    Sprite_DeleteAndFreeResources(sprite);
}
