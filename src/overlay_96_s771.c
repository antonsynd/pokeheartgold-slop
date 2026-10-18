#include "global.h"

#include "files/msgdata/msg.naix"
#include "files/msgdata/msg/msg_0309.h"

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov96_021FFD80 {
    u8 filler_00[4];
    Window window;
    enum HeapID heapId;
} Ov96_021FFD80;

void ov96_021FFD80(Ov96_021FFD80 *a0, int laps, int distance) {
    MsgData *msgData;
    MessageFormat *msgFormat;
    String *string;
    int tenths;

    FillWindowPixelBuffer(&a0->window, 0);
    tenths = distance * 10 / 1024.0;
    GF_ASSERT(tenths <= 9);
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, msg_0309, a0->heapId);
    msgFormat = MessageFormat_New(a0->heapId);
    BufferIntegerAsString(msgFormat, 0, laps, 2, PRINTING_MODE_LEADING_ZEROS, TRUE);
    BufferIntegerAsString(msgFormat, 1, tenths, 1, PRINTING_MODE_LEADING_ZEROS, TRUE);
    string = ReadMsgData_ExpandPlaceholders(msgFormat, msgData, msg_0309_00162, a0->heapId);
    AddTextPrinterParameterizedWithColor(&a0->window, 4, string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 14, 0), NULL);
    String_Delete(string);
    MessageFormat_Delete(msgFormat);
    DestroyMsgData(msgData);
    CopyWindowToVram(&a0->window);
}
