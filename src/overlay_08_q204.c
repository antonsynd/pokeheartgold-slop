#include "global.h"

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov08Msg {
    int msgId;
    u8 filler_4[4];
} Ov08Msg;

typedef struct Ov08Entry {
    u16 unk0;
    u16 count;
} Ov08Entry;

typedef struct Ov08Page {
    Ov08Entry entries[36];
} Ov08Page;

typedef struct Ov08_02223678 {
    u8 filler_0000[0x10];
    MsgData *msgData;
    MessageFormat *msgFormat;
    String *string;
    u8 filler_001C[0x10];
    Window *windows;
    u8 filler_0030[0xC];
    Ov08Page pages[30];
    u8 filler_111C[0x31];
    u8 cursor;
} Ov08_02223678;

extern const Ov08Msg ov08_02225BE4[];

void ov08_02223678(Ov08_02223678 *a0, int slot, int msgIdx, int winIdx, int fontId, u32 y, u32 color) {
    Window *windows = a0->windows;
    String *string;

    FillWindowPixelBuffer(&windows[winIdx], 0);
    if (a0->pages[a0->cursor].entries[slot].count != 0) {
        string = NewString_ReadMsgData(a0->msgData, ov08_02225BE4[msgIdx].msgId);
        BufferIntegerAsString(a0->msgFormat, 0, a0->pages[a0->cursor].entries[slot].count, 3, PRINTING_MODE_LEFT_ALIGN, TRUE);
        StringExpandPlaceholders(a0->msgFormat, a0->string, string);
        AddTextPrinterParameterizedWithColor(&windows[winIdx], fontId, a0->string, 0, y, TEXT_SPEED_NOTRANSFER, color, NULL);
        String_Delete(string);
    }
    ScheduleWindowCopyToVram(&windows[winIdx]);
}
