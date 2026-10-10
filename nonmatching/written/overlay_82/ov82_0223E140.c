#include "global.h"

/* The original passes its incoming register arguments to FillBgTilemapRect without narrowing them, so the
   callee's parameters are declared full-width here and every narrowing the asm does is an explicit cast. */
extern void FillBgTilemapRect(void *bgConfig, u32 bgId, u32 fillValue, u32 x, u32 y, u32 width, u32 height, u32 mode);

void ov82_0223E140(void *bgConfig, u32 bgId, u32 x, u32 y, u8 width, u8 height, u16 tile, u32 mode) {
    u32 right;
    u32 bottom;
    u32 innerW;
    u32 innerH;
    u32 x1;
    u32 y1;

    FillBgTilemapRect(bgConfig, bgId, tile, x, y, 1, 1, (u8)mode);

    right = x + width - 1;
    FillBgTilemapRect(bgConfig, bgId, (u16)(tile + 2), (u8)right, y, 1, 1, (u8)mode);

    bottom = y + height - 1;
    FillBgTilemapRect(bgConfig, bgId, (u16)(tile + 6), x, (u8)bottom, 1, 1, (u8)mode);
    FillBgTilemapRect(bgConfig, bgId, (u16)(tile + 8), (u8)right, (u8)bottom, 1, 1, (u8)mode);

    innerW = width - 2;
    x1 = x + 1;
    FillBgTilemapRect(bgConfig, bgId, (u16)(tile + 1), (u8)x1, y, (u8)innerW, 1, (u8)mode);
    FillBgTilemapRect(bgConfig, bgId, (u16)(tile + 7), (u8)x1, (u8)bottom, (u8)innerW, 1, (u8)mode);

    y1 = y + 1;
    innerH = height - 2;
    FillBgTilemapRect(bgConfig, bgId, (u16)(tile + 3), x, (u8)y1, 1, (u8)innerH, (u8)mode);
    FillBgTilemapRect(bgConfig, bgId, (u16)(tile + 5), (u8)right, (u8)y1, 1, (u8)innerH, (u8)mode);
}
