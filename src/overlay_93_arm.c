#include "global.h"

#include "palette.h"
#include "sprite.h"
#include "sprite_system.h"

// This file is ARM code, not Thumb. global.h pulls in <nitro/code16.h>
// (#pragma thumb on), so code32.h has to come after it -- keep clang-format
// from sorting it back above global.h.
// clang-format off
#include <nitro/code32.h>
// clang-format on

typedef struct Ov93Ctx {
    u8 padding_000[0xC];
    s32 unk_00C; // 0x00C
    s32 unk_010; // 0x010
    u8 padding_014[0x8];
    s32 unk_01C;                  // 0x01C
    s32 unk_020;                  // 0x020
    SpriteSystem *spriteSystem;   // 0x024
    SpriteManager *spriteManager; // 0x028
    u8 padding_02C[0x60];
    PaletteData *paletteData; // 0x08C
    u8 padding_090[0x44];
    s32 unk_0D4; // 0x0D4
    s32 unk_0D8; // 0x0D8
    u8 padding_0DC[0x8];
    s32 unk_0E4; // 0x0E4
    u8 padding_0E8[0x134];
    s32 unk_21C; // 0x21C
    u8 padding_220[0x4];
    s32 unk_224; // 0x224
    u8 padding_228[0x8];
    fx32 unk_230; // 0x230
    u8 padding_234[0x4];
    s32 unk_238; // 0x238
    u8 padding_23C[0x34];
    s32 unk_270; // 0x270
} Ov93Ctx;

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

typedef struct Ov93Nodes {
    u8 padding_000[0xC];
    Ov93Node unk_00C[8];
    Ov93Node unk_10C[8];
} Ov93Nodes;

void ov93_0225EF0C(Ov93Nodes *nodes);
void ov93_0225EF5C(Ov93Nodes *nodes);
int ov93_0225F8AC(Ov93Ctx *ctx, int a1);
BOOL ov93_0225F8E4(s32 a0, s32 a1, s32 a2, s32 a3, s32 *p4, s32 *p5);
int ov93_0225F94C(Ov93Ctx *ctx);
int ov93_0225F9AC(Ov93Ctx *ctx);
void ov93_0225F9D8(Ov93Ctx *ctx);
ManagedSprite *ov93_0225FB00(Ov93Ctx *ctx);
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
void ov93_0225FABC(Ov93Ctx *ctx);
void ov93_0225FBE4(ManagedSprite *sprite);

void ov93_0225EF0C(Ov93Nodes *nodes) {
    s32 i;
    s32 v;

    for (i = 0, v = 0; i < 8; i++) {
        nodes->unk_00C[i].unk_00 = 0;
        nodes->unk_00C[i].unk_04 = v;
        nodes->unk_00C[i].unk_08 = 0;
        nodes->unk_00C[i].unk_0C = v - 0x10000;
        nodes->unk_00C[i].unk_10 = 0x80000;
        nodes->unk_00C[i].unk_14 = v;
        nodes->unk_00C[i].unk_18 = 0x80000;
        nodes->unk_00C[i].unk_1C = v - 0x10000;
        v -= 0x10000;
    }
}

void ov93_0225EF5C(Ov93Nodes *nodes) {
    s32 i;
    s32 v;

    for (i = 0, v = 0; i < 8; i++) {
        nodes->unk_10C[i].unk_00 = 0;
        nodes->unk_10C[i].unk_04 = v;
        nodes->unk_10C[i].unk_08 = 0;
        nodes->unk_10C[i].unk_0C = v + 0x10000;
        nodes->unk_10C[i].unk_10 = 0x80000;
        nodes->unk_10C[i].unk_14 = v;
        nodes->unk_10C[i].unk_18 = 0x80000;
        nodes->unk_10C[i].unk_1C = v + 0x10000;
        v += 0x10000;
    }
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

BOOL ov93_0225F8E4(s32 a0, s32 a1, s32 a2, s32 a3, s32 *p4, s32 *p5) {
    BOOL ret = FALSE;
    s32 sum = a2 + a1;

    if (sum > 0x64000) {
        a1 -= sum - 0x64000;
        ret = TRUE;
    }

    *p4 = a2;
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
    s32 mid = ctx->unk_020 + (ctx->unk_010 - ctx->unk_020) / 2;

    return FX_Mul((ctx->unk_01C - ctx->unk_00C) + (ctx->unk_0E4 - ctx->unk_0D4), -(ctx->unk_0D8 - mid)) / 2;
}

int ov93_0225F9AC(Ov93Ctx *ctx) {
    return (s64)ov93_0225F94C(ctx) * 100 / 0x3200000;
}

void ov93_0225F9D8(Ov93Ctx *ctx) {
    NARC *narc = NARC_New(NARC_a_1_9_9, HEAP_ID_117);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(ctx->paletteData, PLTTBUF_MAIN_OBJ, ctx->spriteSystem, ctx->spriteManager, narc, 0x3A, FALSE, 1, 1, 0x2715);
    SpriteSystem_LoadCharResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, narc, 0x37, FALSE, 1, 0x2713);
    SpriteSystem_LoadCellResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, narc, 0x39, FALSE, 0x2713);
    SpriteSystem_LoadAnimResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, narc, 0x38, FALSE, 0x2713);
    NARC_Delete(narc);
}

void ov93_0225FABC(Ov93Ctx *ctx) {
    SpriteManager_UnloadCharObjById(ctx->spriteManager, 0x2713);
    SpriteManager_UnloadCellObjById(ctx->spriteManager, 0x2713);
    SpriteManager_UnloadAnimObjById(ctx->spriteManager, 0x2713);
    SpriteManager_UnloadPlttObjById(ctx->spriteManager, 0x2715);
}

ManagedSprite *ov93_0225FB00(Ov93Ctx *ctx) {
    ManagedSpriteTemplate template = sSpriteTemplate_02262C38;
    ManagedSprite *sprite = SpriteSystem_NewSprite(ctx->spriteSystem, ctx->spriteManager, &template);

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
