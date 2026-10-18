#include "global.h"

#include "bg_window.h"

typedef struct Ov43_0222C46C {
    BgConfig *bgConfig;
    u8 filler_004[0x208];
    NNSG2dScreenData *screen;
} Ov43_0222C46C;

void ov43_0222C46C(void *a0, Ov43_0222C46C *a1, int a2, int index) {
    NNSG2dScreenData *screen = a1->screen;

    CopyToBgTilemapRect(a1->bgConfig, GF_BG_LYR_MAIN_0, index * 4 + 16, 0, 4, 4, screen->rawData, index * 4 + 16, 8, screen->screenWidth / 8, screen->screenHeight / 8);
    ScheduleBgTilemapBufferTransfer(a1->bgConfig, GF_BG_LYR_MAIN_0);
}
