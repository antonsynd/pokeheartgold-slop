#include "global.h"

typedef struct UnkContext_ov08_0222276C {
    void *battleSys;
    u8 pad_04[8];
    s32 heapID;
    s32 pad_10;
    s32 isInCatchTutorial;
    u8 pad_18[0xd];
    u8 isCursorEnabled;
} UnkContext_ov08_0222276C;

typedef struct UnkStruct_ov08_0222276C {
    UnkContext_ov08_0222276C *context;
    u8 pad_04[4];
    void *palette;
    u8 pad_0C[0x28];
    void *cursor;
    u8 pad_38[0x1114];
    u8 currentScreen;
    u8 currentPocket;
} UnkStruct_ov08_0222276C;

void *ov08_02224B64(int heapID);
void ov08_02223000(void *ctx);
void ov08_022230F4(void *ctx);
void ov08_022231E8(void *ctx);
void FontID_Alloc(int font, int heapID);
void *BattleSystem_GetBagCursor(void *battleSys);
u16 BagCursor_Battle_GetPocket(void *cursor);
void ov08_02223BF4(void *ctx);
void ov08_02224A50(void *ctx, int screen);
void ov08_022233B8(void *ctx);
void ov08_02223480(void *ctx, int screen);
void ov08_02223D08(void *ctx);
void ov08_02223F94(void *ctx, int screen);
void ov08_02224B90(void *cursor, int enable);
void ov08_02224134(void *ctx, int screen);
void ov08_0222421C(void *ctx, int screen);
void PaletteData_BeginPaletteFade(void *palette, int bufferFlags, int mask, int start, int end, int a5, int a6);

u8 ov08_0222276C(UnkStruct_ov08_0222276C *ctx) {
    *(volatile u16 *)0x04001050 = 0;

    ctx->cursor = ov08_02224B64(ctx->context->heapID);

    ov08_02223000(ctx);
    ov08_022230F4(ctx);
    ov08_022231E8(ctx);
    FontID_Alloc(4, ctx->context->heapID);

    ctx->currentPocket = BagCursor_Battle_GetPocket(BattleSystem_GetBagCursor(ctx->context->battleSys));

    ov08_02223BF4(ctx);
    ov08_02224A50(ctx, ctx->currentScreen);
    ov08_022233B8(ctx);
    ov08_02223480(ctx, ctx->currentScreen);
    ov08_02223D08(ctx);
    ov08_02223F94(ctx, ctx->currentScreen);

    if (ctx->context->isCursorEnabled != 0) {
        ov08_02224B90(ctx->cursor, 1);
    }

    ov08_02224134(ctx, ctx->currentScreen);
    ov08_0222421C(ctx, ctx->currentScreen);
    PaletteData_BeginPaletteFade(ctx->palette, 10, 0xffff, -8, 16, 0, 0);

    if (ctx->context->isInCatchTutorial == 1) {
        return 12;
    }
    return 1;
}
