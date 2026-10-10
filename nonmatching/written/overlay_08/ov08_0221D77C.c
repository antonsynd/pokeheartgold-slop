#include "global.h"

typedef struct UnkStruct_ov08_0221D77C {
    u8 pad_000[0x1e4];
    void *bgConfig;
} UnkStruct_ov08_0221D77C;

void FillBgTilemapRect(void *bgConfig, u32 layer, u16 fillVal, u8 x, u8 y, u8 width, u8 height, u8 mode);

void ov08_0221D77C(UnkStruct_ov08_0221D77C *ctx, u16 fillVal, u8 pointSlot) {
    FillBgTilemapRect(ctx->bgConfig, 7, fillVal, 2 + pointSlot * 2, 14, 1, 1, 0x10);
    FillBgTilemapRect(ctx->bgConfig, 7, fillVal + 1, 3 + pointSlot * 2, 14, 1, 1, 0x10);
    FillBgTilemapRect(ctx->bgConfig, 7, fillVal + 0x20, 2 + pointSlot * 2, 15, 1, 1, 0x10);
    FillBgTilemapRect(ctx->bgConfig, 7, fillVal + 0x21, 3 + pointSlot * 2, 15, 1, 1, 0x10);
}
