#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov40App {
    u8 filler_000[0x24];
    BgConfig *bgConfig;
    u8 filler_028[0x20];
    MsgData *msgData;
    u8 filler_04C[0x854];
    BOOL messageEnabled;
    Window messageWindow;
} Ov40App;

void ov40_0222C6C8(Ov40App *app, int a1, int a2);

void ov40_0222DD9C(Ov40App *app, int msgId) {
    Window *window = &app->messageWindow;
    String *string;

    if (app->messageEnabled == TRUE) {
        return;
    }
    app->messageEnabled = TRUE;
    ov40_0222C6C8(app, 6, 0);
    G2S_BlendNone();
    SetBgPriority(GF_BG_LYR_SUB_2, 0);
    InitWindow(window);
    AddWindowParameterized(app->bgConfig, window, GF_BG_LYR_SUB_2, 1, 19, 30, 4, 14, 0x20);
    string = NewString_ReadMsgData(app->msgData, msgId);
    FillWindowPixelBuffer(window, 0xCC);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 13, 12), NULL);
    ScheduleWindowCopyToVram(window);
    String_Delete(string);
    OS_WaitVBlankIntr();
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG2, GF_PLANE_TOGGLE_ON);
}
