#include "global.h"

#include "bg_window.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov40App {
    u8 filler_000[0x48];
    MsgData *msgData;
    u8 filler_04C[0x854];
    BOOL messageEnabled;
    Window messageWindow;
} Ov40App;

void ov40_0222DF60(Ov40App *app, int msgId) {
    String *string;
    Window *window = &app->messageWindow;

    if (app->messageEnabled) {
        string = NewString_ReadMsgData(app->msgData, msgId);
        FillWindowPixelBuffer(window, 0xCC);
        AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 13, 12), NULL);
        ScheduleWindowCopyToVram(window);
        String_Delete(string);
    }
}
