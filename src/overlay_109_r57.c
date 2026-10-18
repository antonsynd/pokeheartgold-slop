#include "global.h"

#include "bg_window.h"

typedef struct Ov109_021E6F7C {
    u8 filler_00[0x14];
    BgConfig *bgConfig;
    u8 filler_18[0xA4];
    NNSG2dScreenData *screen;
} Ov109_021E6F7C;

void ov109_021E6F7C(Ov109_021E6F7C *a0, int a1, BOOL a2) {
    BgClearTilemapBufferAndCommit(a0->bgConfig, GF_BG_LYR_MAIN_2);
    if (a2) {
        CopyToBgTilemapRect(a0->bgConfig, GF_BG_LYR_MAIN_2, (a1 / 2) * 16, 0, 16, 24, a0->screen->rawData, (a1 / 2) * 16, 0, a0->screen->screenWidth / 8, a0->screen->screenHeight / 8);
    }
}
