#include "global.h"

#include "bg_window.h"

void ov82_0223E140(BgConfig *bgConfig, u8 bgId, u8 x, u8 y, u8 width, u8 height, u16 tile, u16 palette) {
    FillBgTilemapRect(bgConfig, bgId, tile, x, y, 1, 1, palette);
    FillBgTilemapRect(bgConfig, bgId, tile + 2, x + width - 1, y, 1, 1, palette);
    FillBgTilemapRect(bgConfig, bgId, tile + 6, x, y + height - 1, 1, 1, palette);
    FillBgTilemapRect(bgConfig, bgId, tile + 8, x + width - 1, y + height - 1, 1, 1, palette);
    FillBgTilemapRect(bgConfig, bgId, tile + 1, x + 1, y, width - 2, 1, palette);
    FillBgTilemapRect(bgConfig, bgId, tile + 7, x + 1, y + height - 1, width - 2, 1, palette);
    FillBgTilemapRect(bgConfig, bgId, tile + 3, x, y + 1, 1, height - 2, palette);
    FillBgTilemapRect(bgConfig, bgId, tile + 5, x + width - 1, y + 1, 1, height - 2, palette);
}
