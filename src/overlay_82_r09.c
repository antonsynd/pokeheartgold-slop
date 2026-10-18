#include "global.h"

#include "bg_window.h"
#include "message_format.h"
#include "options.h"
#include "sound.h"
#include "unk_02035900.h"
#include "unk_020379A0.h"

typedef struct BattleHallApp {
    u8 filler_00[8];
    u8 subState;
    u8 filler_09;
    u8 printerID;
    u8 filler_0B[2];
    u8 cursorPos;
    u8 filler_0E[6];
    s16 slideOffset;
    u8 numSelectionMsgsReceived;
    u8 startMultiSelectionConfirm;
    u8 selectionID;
    u8 selectionCanceled;
    u8 selectedCursorPos;
    u8 fadeOutDelay;
    u8 filler_1C[8];
    MessageFormat *msgFormat;
    u8 filler_28[0x20];
    BgConfig *bgConfig;
    Window msgBox;
    u8 filler_5C[0x30];
    void *yesNoMenu;
    u8 filler_90[0xC];
    Options *options;
    u8 filler_0A0[0x168];
    void *monSprite;
    u8 filler_20C[0x70];
    u8 partnersSelectedCell;
    u8 partnersDecision;
} BattleHallApp;

u8 ov82_0223EF7C(BattleHallApp *app, int msgNo, int font);
void ov82_0223F5E0(BgConfig *bgConfig, u8 cell, int type);
int ov82_0223F6C4(u8 cursorPos);
BOOL ov82_0223F6E8(BattleHallApp *app, int cmd, int value);
void ov82_0223F834(BattleHallApp *app);
void ov82_0223F84C(BattleHallApp *app);
void ov82_0223F8E4(BattleHallApp *app);
void ov82_0223F90C(BattleHallApp *app);
void ov82_0223F948(int offset);
void ov82_0223FCB0(void *sprite, int flag);
void ov82_0223FD78(Window *window, u32 frame);
int ov82_0223FE18(void *menu);
void ov80_0222A7CC(MessageFormat *msgFormat, int idx);

BOOL ov82_0223E5D4(BattleHallApp *app) {
    switch (app->subState) {
    case 0:
        if (ov82_0223F6E8(app, 5, ov82_0223F6C4(app->selectedCursorPos)) == TRUE) {
            app->fadeOutDelay = 0;
            app->selectedCursorPos = 0;
            app->startMultiSelectionConfirm = FALSE;
            app->subState = 1;
        }
        break;
    case 1:
        if (app->fadeOutDelay != 0) {
            app->fadeOutDelay--;
            break;
        }
        if (app->numSelectionMsgsReceived < 2) {
            break;
        }
        app->numSelectionMsgsReceived = 0;
        if (app->selectionID < 20) {
            if (sub_0203769C() == 0) {
                app->subState = 2;
            } else {
                app->subState = 3;
            }
        } else {
            if (sub_0203769C() == 0) {
                app->subState = 3;
            } else {
                app->subState = 2;
            }
        }
        break;
    case 3:
        ov82_0223F948(0);
        app->slideOffset = 0;
        ov82_0223FCB0(app->monSprite, FALSE);
        ov82_0223FD78(&app->msgBox, Options_GetFrame(app->options));
        ov80_0222A7CC(app->msgFormat, 0);
        app->printerID = ov82_0223EF7C(app, 11, 1);
        app->fadeOutDelay = 10;
        ov82_0223F5E0(app->bgConfig, app->partnersSelectedCell, 2);
        ScheduleBgTilemapBufferTransfer(app->bgConfig, GF_BG_LYR_MAIN_3);
        app->subState = 4;
        break;
    case 4:
        if (app->partnersDecision == 0) {
            break;
        }
        if (app->partnersDecision == 1) {
            app->cursorPos = app->partnersSelectedCell;
            return TRUE;
        } else {
            ov82_0223F90C(app);
            ov82_0223F5E0(app->bgConfig, app->partnersSelectedCell, 0);
            ScheduleBgTilemapBufferTransfer(app->bgConfig, GF_BG_LYR_MAIN_3);
            app->partnersSelectedCell = 0xFF;
            app->partnersDecision = 0;
            app->selectionID = 0xFF;
            app->selectionCanceled = TRUE;
            return TRUE;
        }
        break;
    case 2:
        ov82_0223F5E0(app->bgConfig, app->cursorPos, 1);
        ScheduleBgTilemapBufferTransfer(app->bgConfig, GF_BG_LYR_MAIN_3);
        ov82_0223F84C(app);
        app->subState = 5;
        break;
    case 5:
        switch (ov82_0223FE18(app->yesNoMenu)) {
        case 0:
            break;
        case 1:
            StopSE(SEQ_SE_DP_SELECT, 0);
            PlaySE(SEQ_SE_DP_UG_020);
            ov82_0223F834(app);
            app->subState = 6;
            break;
        case 2:
            ov82_0223F834(app);
            app->subState = 7;
            break;
        }
        break;
    case 6:
        if (ov82_0223F6E8(app, 6, 1) == TRUE) {
            return TRUE;
        }
        break;
    case 7:
        if (app->slideOffset > 0) {
            app->slideOffset--;
            ov82_0223F948(-app->slideOffset);
            break;
        }
        if (ov82_0223F6E8(app, 6, 2) == TRUE) {
            ov82_0223F8E4(app);
            app->partnersSelectedCell = 0xFF;
            app->selectionID = 0xFF;
            app->selectionCanceled = TRUE;
            return TRUE;
        }
        break;
    case 8:
        sub_02037BEC();
        sub_02037AC0(104);
        app->subState = 9;
        break;
    case 9:
        if (sub_02037B38(104) == TRUE) {
            sub_02037BEC();
            sub_020379A0(HEAP_ID_105);
            app->selectionID = 0xFF;
            return TRUE;
        }
        break;
    }

    return FALSE;
}
