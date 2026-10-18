#include "global.h"

#include "files/msgdata/msg.naix"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "options.h"
#include "overlay_manager.h"
#include "player_data.h"
#include "pm_string.h"
#include "render_text.h"
#include "save.h"
#include "screen_fade.h"
#include "system.h"
#include "unk_020210A0.h"
#include "unk_0203A3B0.h"
#include "vram_transfer_manager.h"

typedef struct Ov39Session {
    u8 filler_00[4];
    SaveData *saveData;
    int unk08;
} Ov39Session;

typedef struct Ov39Args {
    Ov39Session *session;
    int isWifi;
    u8 filler_08[0x74];
    int unk7C;
} Ov39Args;

typedef struct Ov39App {
    Ov39Args *args;
    BgConfig *bgConfig;
    int unk08;
    u8 filler_0C[0x14];
    MessageFormat *msgFormat;
    MsgData *msgData0;
    MsgData *msgData1;
    MsgData *msgData2;
    u8 filler_30[4];
    String *string34;
    String *string38;
    String *string3C;
    u8 filler_40[0x50];
    int textFrameDelay;
    u8 filler_94[0x344];
} Ov39App;

void ov39_02228418(void *app);
void ov39_02228440(BgConfig *bgConfig);
void ov39_022285CC(Ov39App *app);
void ov39_022288A0(Ov39App *app);
void ov39_02228B6C(Ov39App *app, int a1, int a2);

BOOL ov39_02228140(OverlayManager *man, int *state) {
    Ov39App *app;

    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();
    Heap_Create(HEAP_ID_3, HEAP_ID_124, 0x50000);
    app = OverlayManager_CreateAndGetData(man, sizeof(Ov39App), HEAP_ID_124);
    MI_CpuFill8(app, 0, sizeof(Ov39App));
    app->args = OverlayManager_GetArgs(man);
    app->bgConfig = BgConfig_Alloc(HEAP_ID_124);
    GF_CreateVramTransferManager(64, HEAP_ID_124);
    SetKeyRepeatTimers(4, 8);
    ov39_02228440(app->bgConfig);
    sub_020210BC();
    sub_02021148(4);
    app->msgFormat = MessageFormat_New_Custom(11, 64, HEAP_ID_124);
    app->msgData0 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0775, HEAP_ID_124);
    app->msgData1 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0778, HEAP_ID_124);
    app->msgData2 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0800, HEAP_ID_124);
    app->string34 = String_New(90 * 2, HEAP_ID_124);
    app->string3C = String_New(16 * 8 * 2, HEAP_ID_124);
    app->string38 = NewString_ReadMsgData(app->msgData0, 31);
    ov39_022285CC(app);
    ov39_022288A0(app);
    BeginNormalPaletteFade(0, 1, 1, RGB_BLACK, 6, 1, HEAP_ID_124);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG0, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_ON);
    gSystem.screensFlipped = TRUE;
    GfGfx_SwapDisplay();
    TextFlags_SetCanABSpeedUpPrint(TRUE);
    TextFlags_SetAutoScrollParam(0);
    TextFlags_SetCanTouchSpeedUpPrint(TRUE);
    Main_SetVBlankIntrCB(ov39_02228418, app);
    if (app->args->isWifi) {
        sub_0203A880();
        ov39_02228B6C(app, 13, 8);
    } else if (app->args->session->unk08) {
        app->unk08 = 1;
    } else {
        app->unk08 = 0;
    }
    app->textFrameDelay = Options_GetTextFrameDelay(Save_PlayerData_GetOptionsAddr(app->args->session->saveData));
    app->args->unk7C = 0;
    return TRUE;
}
