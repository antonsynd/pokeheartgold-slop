#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_ov31_0225E2D4_Inner {
    u8 filler_000[0x28C];
    s32 unk_28C;
} UnkStruct_ov31_0225E2D4_Inner;

typedef struct UnkStruct_ov31_0225E2D4 {
    u8 filler_000[0x14];
    UnkStruct_ov31_0225E2D4_Inner *unk_14;
    u8 filler_018[0xF4 - 0x18];
    Window window_0F4;
    Window window_104;
    u8 filler_114[0x134 - 0x114];
    Window window_134;
    u8 filler_144[0x154 - 0x144];
    MessageFormat *msgFmt;
    MsgData *msgData;
} UnkStruct_ov31_0225E2D4;

void ov31_0225E2D4(UnkStruct_ov31_0225E2D4 *a0, int a1) {
    String *tens;
    String *ones;
    String *tensSrc;
    String *onesSrc;
    String *total;
    String *totalSrc;
    u32 width;

    tens = String_New(2, 0xb);
    ones = String_New(2, 0xb);
    tensSrc = NewString_ReadMsgData(a0->msgData, 0x2c);
    onesSrc = NewString_ReadMsgData(a0->msgData, 0x2d);
    BufferIntegerAsString(a0->msgFmt, 0, a1 / 10, 1, 1, 1);
    BufferIntegerAsString(a0->msgFmt, 1, a1 % 10, 1, 1, 1);
    StringExpandPlaceholders(a0->msgFmt, tens, tensSrc);
    StringExpandPlaceholders(a0->msgFmt, ones, onesSrc);
    FillWindowPixelBuffer(&a0->window_0F4, 0);
    FillWindowPixelBuffer(&a0->window_104, 0);
    AddTextPrinterParameterizedWithColor(&a0->window_0F4, 0, tens, 0, 4, 0xff, 0x10200, NULL);
    AddTextPrinterParameterizedWithColor(&a0->window_104, 0, ones, 0, 4, 0xff, 0x10200, NULL);
    String_Delete(tens);
    String_Delete(ones);
    String_Delete(tensSrc);
    String_Delete(onesSrc);
    ScheduleWindowCopyToVram(&a0->window_0F4);
    ScheduleWindowCopyToVram(&a0->window_104);
    FillWindowPixelBuffer(&a0->window_134, 0);
    total = String_New(9, 0xb);
    totalSrc = NewString_ReadMsgData(a0->msgData, 0x26);
    BufferIntegerAsString(a0->msgFmt, 0, a0->unk_14->unk_28C * a1, 6, 1, 1);
    StringExpandPlaceholders(a0->msgFmt, total, totalSrc);
    width = FontID_String_GetWidth(0, total, 0);
    AddTextPrinterParameterizedWithColor(&a0->window_134, 0, total, 0x40 - width, 4, 0xff, 0x10200, NULL);
    String_Delete(total);
    String_Delete(totalSrc);
    ScheduleWindowCopyToVram(&a0->window_134);
}
