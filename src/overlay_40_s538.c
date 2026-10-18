#include "global.h"

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct Ov40App {
    u8 filler_000[0x48];
    MsgData *msgData;
    u8 filler_04C[0x840];
    void *records[6];
    Window window;
} Ov40App;

MessageFormat *ov40_0222DAB0(enum HeapID heapId);
String *sub_020315B8(void *record, enum HeapID heapId);
void ov40_02230DCC(Ov40App *app, String *string);

void ov40_022442F0(Ov40App *app, int msgId, int index) {
    String *string;
    Window *window = &app->window;

    if (msgId == 282) {
        MessageFormat *msgFormat;
        String *name;
        String *format;
        void *record = app->records[index];

        msgFormat = ov40_0222DAB0(HEAP_ID_109);
        string = String_New(255, HEAP_ID_109);
        name = sub_020315B8(record, HEAP_ID_109);
        ov40_02230DCC(app, name);
        format = NewString_ReadMsgData(app->msgData, msgId);
        BufferString(msgFormat, 0, name, 0, 1, GAME_LANGUAGE);
        StringExpandPlaceholders(msgFormat, string, format);
        String_Delete(name);
        String_Delete(format);
        MessageFormat_Delete(msgFormat);
    } else {
        string = NewString_ReadMsgData(app->msgData, msgId);
    }
    FillWindowPixelBuffer(window, 0xCC);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 13, 12), NULL);
    ScheduleWindowCopyToVram(window);
    String_Delete(string);
}
