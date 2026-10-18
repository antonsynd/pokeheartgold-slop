#include "global.h"

#include "files/msgdata/msg.naix"

#include "bg_window.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

u8 ov80_02237920(u8 cursor);

void ov82_0223F040(void *a0, Window *window, u8 textColor, u8 shadowColor, u8 bgColor, u8 fontId) {
    int row;
    int col;
    MsgData *msgData;
    String *string;

    FillWindowPixelBuffer(window, bgColor);
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, msg_0735, HEAP_ID_105);
    string = String_New(11, HEAP_ID_105);
    for (row = 0; row < 5; row++) {
        for (col = 0; col < 4; col++) {
            if (ov80_02237920(col + row * 4) != 0xFE) {
                String_SetEmpty(string);
                ReadMsgDataIntoString(msgData, ov80_02237920(col + row * 4), string);
                AddTextPrinterParameterizedWithColor(window, fontId, string, 1 + 64 * col, 16 + 36 * row, TEXT_SPEED_INSTANT, MAKE_TEXT_COLOR(textColor, shadowColor, bgColor), NULL);
            }
        }
    }
    String_Delete(string);
    DestroyMsgData(msgData);
    CopyWindowToVram(window);
}
