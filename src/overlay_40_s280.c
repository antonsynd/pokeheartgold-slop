#include "global.h"

#include "bg_window.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov40_02237030_Sub {
    u8 filler_000[0x1A4];
    Window windows[4];
} Ov40_02237030_Sub;

typedef struct Ov40_02237030 {
    u8 filler_000[0x48];
    MsgData *msgData;
    u8 filler_04C[0x814];
    Ov40_02237030_Sub *unk860;
} Ov40_02237030;

void ov40_02237030(Ov40_02237030 *a0, int msgId) {
    Ov40_02237030_Sub *sub = a0->unk860;
    Window *window = &sub->windows[3];
    String *string = NewString_ReadMsgData(a0->msgData, msgId);

    FillWindowPixelBuffer(window, 0xCC);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0, 0xFF, MAKE_TEXT_COLOR(15, 13, 0), NULL);
    ScheduleWindowCopyToVram(window);
    String_Delete(string);
}
