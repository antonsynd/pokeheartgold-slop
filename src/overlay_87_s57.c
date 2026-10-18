#include "global.h"

#include "constants/sndseq.h"

#include "sound.h"

#define SCRATCH_REGION_WIDTH  240
#define SCRATCH_REGION_HEIGHT 160

typedef struct ScratchOffCardApp {
    u8 filler_000[0x3A1];
    u8 numRevealedCells;
    u8 scratchedOffCellIdxs[3];
    u8 cellIsRevealed[9];
    u8 filler_3AE[0x4C];
    u8 scratchedPixels[SCRATCH_REGION_WIDTH * SCRATCH_REGION_HEIGHT];
} ScratchOffCardApp;

extern const s16 ov87_021E82C0[][2];
extern const s16 ov87_021E82C2[][2];

void ov87_021E7590(ScratchOffCardApp *app, int touchX, int touchY) {
    for (int y = -3; y < 3; y++) {
        for (int x = -3; x < 3; x++) {
            if (touchX + x > 0 && touchX + x < SCRATCH_REGION_WIDTH && touchY + y > 0 && touchY + y < SCRATCH_REGION_HEIGHT) {
                app->scratchedPixels[(touchX + x) + ((touchY + y) * SCRATCH_REGION_WIDTH)] = TRUE;
            }
        }
    }
}

BOOL ov87_021E75E0(ScratchOffCardApp *app, u8 cellIdx) {
    int x;
    int revealedPixels = 0;
    int left = ov87_021E82C0[cellIdx][0];
    int top = ov87_021E82C2[cellIdx][0];

    for (int y = top; y < (top + 20); y++) {
        for (x = left; x < (left + 25); x++) {
            if (app->scratchedPixels[y * SCRATCH_REGION_WIDTH + x] == TRUE) {
                revealedPixels++;
            }
        }
    }
    if (revealedPixels >= 380) {
        if (!app->cellIsRevealed[cellIdx]) {
            PlaySE(SEQ_SE_DP_PIRORIRO);
            app->scratchedOffCellIdxs[app->numRevealedCells] = cellIdx;
            app->numRevealedCells++;
        }
        app->cellIsRevealed[cellIdx] = TRUE;
        return TRUE;
    }
    return FALSE;
}
