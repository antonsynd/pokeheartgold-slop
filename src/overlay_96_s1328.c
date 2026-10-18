#include "global.h"

#include "bg_window.h"

typedef struct Ov96_02219A5C {
    u8 filler_00[0x14];
    BgConfig *bgConfig;
    u8 filler_18[0x14];
    NNSG2dScreenData *screenData;
} Ov96_02219A5C;

void ov96_02219A5C(Ov96_02219A5C *a0, int value) {
    u8 srcX[3];
    u8 srcY[3];
    u8 digit;
    u8 i;

    digit = value / 100;
    srcX[0] = (digit % 5) * 4;
    srcY[0] = (digit / 5) * 8;
    digit = (value - digit * 100) / 10;
    srcX[1] = (digit % 5) * 4;
    srcY[1] = (digit / 5) * 8;
    digit = value % 10;
    srcX[2] = (digit % 5) * 4;
    srcY[2] = (digit / 5) * 8;

    for (i = 0; i < 3; i++) {
        CopyRectToBgTilemapRect(a0->bgConfig, GF_BG_LYR_SUB_2, i * 4 + 16, 11, 4, 8, a0->screenData->rawData, srcX[i], srcY[i], 20, 16);
    }
    ScheduleBgTilemapBufferTransfer(a0->bgConfig, GF_BG_LYR_SUB_2);
}
