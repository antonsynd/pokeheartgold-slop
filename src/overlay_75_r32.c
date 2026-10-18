#include "global.h"

#include "files/msgdata/msg.naix"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "overlay_manager.h"
#include "pm_string.h"
#include "render_text.h"
#include "save.h"
#include "screen_fade.h"
#include "system.h"
#include "unk_020210A0.h"
#include "unk_02037C94.h"
#include "unk_0203A3B0.h"
#include "vram_transfer_manager.h"

typedef struct Ov75Args {
    u8 filler_00[4];
    SaveData *saveData;
} Ov75Args;

typedef struct Ov75App {
    Ov75Args *args;
    BgConfig *bgConfig;
    int state;
    u8 filler_0C[0x14];
    MessageFormat *msgFormat;
    MsgData *msgData0;
    MsgData *msgData3;
    MsgData *msgData1;
    MsgData *msgData2;
    MsgData *msgData4;
    String *string38;
    String *string3C;
    String *string40;
    u8 filler_44[0xA4];
    int unkE8;
    u8 filler_EC[0x330];
} Ov75App;

BOOL DWC_CheckInet(void);
void ov75_02247234(void *app);
void ov75_0224725C(BgConfig *bgConfig);
void ov75_02247450(Ov75App *app);
void ov75_02247790(Ov75App *app);
void ov75_02246BE0(Ov75Args *args, int a1);
int ov75_02246BE8(Ov75Args *args);

BOOL ov75_02246F0C(OverlayManager *man, int *state) {
    Ov75App *app;

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
    Heap_Create(HEAP_ID_3, HEAP_ID_116, 0x70000);
    app = OverlayManager_CreateAndGetData(man, sizeof(Ov75App), HEAP_ID_116);
    MI_CpuFill8(app, 0, sizeof(Ov75App));
    app->args = OverlayManager_GetArgs(man);
    app->bgConfig = BgConfig_Alloc(HEAP_ID_116);
    GF_CreateVramTransferManager(64, HEAP_ID_116);
    SetKeyRepeatTimers(4, 8);
    ov75_0224725C(app->bgConfig);
    sub_020210BC();
    sub_02021148(4);
    app->msgFormat = MessageFormat_New_Custom(11, 64, HEAP_ID_116);
    app->msgData0 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0775, HEAP_ID_116);
    app->msgData1 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0778, HEAP_ID_116);
    app->msgData2 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0800, HEAP_ID_116);
    app->msgData3 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0237, HEAP_ID_116);
    app->msgData4 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0188, HEAP_ID_116);
    app->string38 = String_New(90 * 3, HEAP_ID_116);
    app->string40 = String_New(16 * 8 * 2, HEAP_ID_116);
    app->string3C = NewString_ReadMsgData(app->msgData0, 31);
    ov75_02247450(app);
    ov75_02247790(app);

    switch (ov75_02246BE8(app->args)) {
    case 12:
        if (!DWC_CheckInet() && sub_0203A05C(app->args->saveData) == TRUE) {
            app->state = 12;
            sub_02039528(app->args->saveData);
            sub_0203A880();
        } else {
            app->state = 0;
        }
        break;
    case 22:
        app->unkE8 = 0;
        sub_0203A880();
        app->state = ov75_02246BE8(app->args);
        break;
    default:
        app->state = ov75_02246BE8(app->args);
        break;
    }

    ov75_02246BE0(app->args, 0);

    BeginNormalPaletteFade(0, 1, 1, RGB_BLACK, 6, 1, HEAP_ID_116);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG0, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    gSystem.screensFlipped = TRUE;
    GfGfx_SwapDisplay();
    TextFlags_SetCanABSpeedUpPrint(TRUE);
    TextFlags_SetAutoScrollParam(0);
    TextFlags_SetCanTouchSpeedUpPrint(FALSE);
    Main_SetVBlankIntrCB(ov75_02247234, app);
    return TRUE;
}
