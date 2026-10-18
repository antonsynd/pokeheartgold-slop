#include "global.h"

#include "bg_window.h"

typedef struct Ov43Pos {
    s16 x;
    s16 y;
    u8 filler_4[6];
} Ov43Pos;

typedef struct Ov43_0222CB34 {
    BgConfig *bgConfig;
} Ov43_0222CB34;

typedef struct Ov43Sub {
    u8 filler_0[0xC];
    NNSG2dScreenData *screen;
} Ov43Sub;

// The pool references the y column through its own label
// (ov43_0222EFA0 + 2), so the y reads go through a struct anchored there.
typedef struct Ov43PosY {
    s16 y;
    u8 filler_2[8];
} Ov43PosY;

extern const Ov43Pos ov43_0222EFA0[];
extern const Ov43PosY ov43_0222EFA2[];

void ov43_0222CB34(const s16 *offset, Ov43_0222CB34 *a1, Ov43Sub *a2, int index) {
    int dy = offset[1] < 0 ? -offset[1] : offset[1];
    int dx = offset[0] < 0 ? -offset[0] : offset[0];
    NNSG2dScreenData *screen = a2->screen;

    // `x - -dx` keeps the table value as the first operand of the add
    CopyToBgTilemapRect(a1->bgConfig, GF_BG_LYR_MAIN_2, ov43_0222EFA0[index].x - -dx, ov43_0222EFA2[index].y - -dy, 3, 4, screen->rawData, 0, 0, screen->screenWidth / 8, screen->screenHeight / 8);
    ScheduleBgTilemapBufferTransfer(a1->bgConfig, GF_BG_LYR_MAIN_2);
}
