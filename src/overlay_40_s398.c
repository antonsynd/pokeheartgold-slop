#include "global.h"

#include "bg_window.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct Ov40Menu {
    u8 filler_000[0x614];
    Window windows[24];
    u8 filler_794_pad[0];
    int windowCount;
} Ov40Menu;

typedef struct Ov40App {
    u8 filler_000[0x24];
    BgConfig *bgConfig;
    u8 filler_028[0x20];
    MsgData *msgData;
    u8 filler_04C[0x814];
    Ov40Menu *menu;
} Ov40App;

typedef struct Ov40WindowRects {
    int rects[6][4];
} Ov40WindowRects;

typedef struct Ov40MsgIds {
    int ids[6];
} Ov40MsgIds;

extern const Ov40WindowRects ov40_022458E8;
extern const Ov40MsgIds ov40_022456F0;

int ov40_022306C0(Window *window, String *string);

void ov40_0223DBD4(Ov40App *app, int mode) {
    Ov40Menu *menu = app->menu;
    int unused;
    int centered;
    const int (*rects)[4];
    const int *msgIds;
    Ov40WindowRects allRects = ov40_022458E8;
    Ov40MsgIds allMsgIds = ov40_022456F0;

    switch (mode) {
    case 0:
        menu->windowCount = 6;
        centered = 0;
        rects = allRects.rects;
        msgIds = allMsgIds.ids;
        break;
    case 1:
        break;
    default:
        break;
    }
    {
        int i;
        int x = 0;
        int baseTile = 256;
        String *string;
        Window *window;

        for (i = 0; i < menu->windowCount; i++) {
            window = &menu->windows[i];
            InitWindow(window);
            AddWindowParameterized(app->bgConfig, window, 2, rects[i][0], rects[i][1], rects[i][2], rects[i][3], 14, baseTile);
            FillWindowPixelBuffer(window, 0);
            string = NewString_ReadMsgData(app->msgData, msgIds[i]);
            baseTile += rects[i][2] * rects[i][3];
            if (centered) {
                x = ov40_022306C0(window, string);
            }
            AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 13, 0), NULL);
            ScheduleWindowCopyToVram(window);
            String_Delete(string);
        }
    }
}
