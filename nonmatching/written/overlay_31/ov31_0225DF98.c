#include "global.h"
#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_ov31_0225DF98_Inner {
    u8 filler_000[0x270];
    u8 unk_270;
    u8 unk_271;
} UnkStruct_ov31_0225DF98_Inner;

typedef struct UnkStruct_ov31_0225DF98 {
    u8 filler_000[0x14];
    UnkStruct_ov31_0225DF98_Inner *unk_14;
    u8 filler_018[0x54 - 0x18];
    Window window;
    u8 filler_064[0x154 - 0x64];
    MessageFormat *msgFmt;
    MsgData *msgData;
} UnkStruct_ov31_0225DF98;

void ov31_0225DF98(UnkStruct_ov31_0225DF98 *a0) {
    String *dest;
    String *src;
    UnkStruct_ov31_0225DF98_Inner *inner;
    int a, b;

    FillWindowPixelBuffer(&a0->window, 0);
    dest = String_New(6, 0xb);
    src = NewString_ReadMsgData(a0->msgData, 0x2b);
    inner = a0->unk_14;
    a = (inner->unk_271 + 6) / 6;
    b = inner->unk_270 / 6;
    if (inner->unk_270 % 6 != 0) {
        b++;
    }
    BufferIntegerAsString(a0->msgFmt, 0, a, 2, 1, 1);
    BufferIntegerAsString(a0->msgFmt, 1, b, 2, 1, 1);
    StringExpandPlaceholders(a0->msgFmt, dest, src);
    AddTextPrinterParameterizedWithColor(&a0->window, 0, dest, 0, 0, 0xff, 0xF0E00, NULL);
    String_Delete(src);
    String_Delete(dest);
    ScheduleWindowCopyToVram(&a0->window);
}
