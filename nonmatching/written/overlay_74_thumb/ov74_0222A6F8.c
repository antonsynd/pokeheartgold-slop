#include "global.h"
#include "bg_window.h"

void ov74_0222A6F8(BgConfig *bgConfig, u32 bgId, u32 screenBase, u32 charBase) {
    BgTemplate template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .size = 1,
        .colorMode = 0,
        .screenBase = 0x1c,
        .charBase = 0,
        .bgExtPltt = 0,
        .priority = 0,
        .areaOver = 0,
        .dummy = 0,
        .mosaic = 0,
    };

    template.screenBase = screenBase >> 11;
    template.charBase = charBase >> 14;
    InitBgFromTemplate(bgConfig, bgId, &template, 0);
    BgClearTilemapBufferAndCommit(bgConfig, bgId);
}
