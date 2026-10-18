#include "global.h"

#include "bg_window.h"

typedef struct Ov41_02246544 {
    u8 filler_00[0x40];
    BgConfig *bgConfig;
} Ov41_02246544;

extern const BgTemplate ov41_0224C018;

void ov41_02246544(Ov41_02246544 *a0, BgConfig *bgConfig, enum HeapID heapID) {
    BgTemplate template;

    a0->bgConfig = bgConfig;
    template = ov41_0224C018;
    FreeBgTilemapBuffer(a0->bgConfig, GF_BG_LYR_MAIN_2);
    InitBgFromTemplate(a0->bgConfig, GF_BG_LYR_MAIN_2, &template, GF_BG_TYPE_TEXT);
    BG_ClearCharDataRange(GF_BG_LYR_MAIN_2, 0x20, 0, heapID);
    BgClearTilemapBufferAndCommit(a0->bgConfig, GF_BG_LYR_MAIN_2);
}
