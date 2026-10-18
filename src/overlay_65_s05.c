#include "global.h"

#include "bg_window.h"
#include "overlay_65.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sprite.h"
#include "unk_02037C94.h"
#include "unk_0203A3B0.h"

typedef struct TradeRoom {
    u8 filler_000[0x20];
    u8 summaryMonIndex;
    u8 filler_021[0x27];
    int summarySide;
    OverlayManager *appMan;
    int subAppActive;
    int phase;
    u8 filler_058[0x3C];
    int selectedSlot[2];
    u8 filler_09C[0xE4];
    BgConfig *bgConfig;
    u8 filler_184[0x1C];
    SpriteList *spriteList;
    u8 filler_1A4[0x1A0];
    Sprite *cursorSprites[2];
} TradeRoom;

// Called as matched
#define sub_020399FC(heapId, bgConfig) ((void (*)(int, BgConfig *))sub_020399FC)(heapId, bgConfig)

void ov65_0221BFEC(TradeRoom *tradeRoom);
int ov65_0221C5E0(TradeRoom *tradeRoom);
int ov65_0221CC0C(TradeRoom *tradeRoom);
void ov65_0221CD0C(TradeRoom *tradeRoom);
void ov65_0221CCB0(TradeRoom *tradeRoom);
void ov65_0221D1C8(BgConfig *bgConfig);
void ov65_0221E06C(TradeRoom *tradeRoom, int side);
void ov65_0221C08C(TradeRoom *tradeRoom);
void ov65_0221CB5C(TradeRoom *tradeRoom);
void ov65_0221DD34(int slot, Sprite *cursor, int a2);
void ov65_0221F714(TradeRoom *tradeRoom);

BOOL WirelessTradeSelectMon_Main(OverlayManager *man, int *state) {
    TradeRoom *tradeRoom = OverlayManager_GetData(man);
    BOOL isDone = FALSE;

    switch (*state) {
    case 0:
        if (IsPaletteFadeFinished()) {
            *state = 1;
            ov65_0221BFEC(tradeRoom);
        }
        break;
    case 1:
        switch (tradeRoom->phase) {
        case 0:
            tradeRoom->phase = ov65_0221C5E0(tradeRoom);
            break;
        case 1:
            tradeRoom->phase = ov65_0221CC0C(tradeRoom);
            break;
        case 2:
            BeginNormalPaletteFade(0, 0, 0, RGB_BLACK, 8, 1, HEAP_ID_26);
            *state = 2;
            break;
        case 3:
            BeginNormalPaletteFade(0, 0, 0, RGB_BLACK, 8, 1, HEAP_ID_26);
            tradeRoom->phase = 4;
            break;
        case 4:
            if (IsPaletteFadeFinished()) {
                ov65_0221CD0C(tradeRoom);
                ov65_0221CCB0(tradeRoom);
                ov65_0221D1C8(tradeRoom->bgConfig);
                tradeRoom->subAppActive = 1;
                tradeRoom->phase = 5;
                ov65_0221E06C(tradeRoom, tradeRoom->selectedSlot[0] / 6);
            }
            break;
        case 5:
            if (OverlayManager_Run(tradeRoom->appMan)) {
                OverlayManager_Delete(tradeRoom->appMan);
                ov65_0221C08C(tradeRoom);
                tradeRoom->subAppActive = 0;
                tradeRoom->selectedSlot[0] = tradeRoom->summaryMonIndex + tradeRoom->summarySide * 6;
                ov65_0221CB5C(tradeRoom);
                ov65_0221DD34(tradeRoom->selectedSlot[0], tradeRoom->cursorSprites[0], 0);
                sub_0203A880();
                tradeRoom->phase = 6;
            }
            break;
        case 6:
            BeginNormalPaletteFade(0, 1, 1, RGB_BLACK, 8, 1, HEAP_ID_26);
            tradeRoom->phase = 7;
            break;
        case 7:
            if (IsPaletteFadeFinished()) {
                tradeRoom->phase = 1;
            }
            break;
        }
        break;
    case 2:
        if (IsPaletteFadeFinished()) {
            isDone = TRUE;
        }
        break;
    }
    if (!tradeRoom->subAppActive) {
        ov65_0221F714(tradeRoom);
        SpriteList_RenderAndAnimateSprites(tradeRoom->spriteList);
    }
    sub_020399FC(26, tradeRoom->bgConfig);
    return isDone;
}
