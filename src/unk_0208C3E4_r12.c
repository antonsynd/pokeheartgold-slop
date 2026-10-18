#include "global.h"

#include "bg_window.h"
#include "font.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_0208C8C8 {
    u8 filler_000[0x224];
    Window *extraWindows;
    u8 filler_228[0x578];
    MsgData *msgData;
    u8 filler_7A4[8];
    String *string;
} UnkStruct_0208C8C8;

void sub_0208C87C(UnkStruct_0208C8C8 *a0, u32 entryId, u16 value, u8 digits, int paddingMode);

void sub_0208C8C8(UnkStruct_0208C8C8 *a0, u32 index, u32 slashEntryId, u32 curEntryId, u32 maxEntryId, u16 curValue, u16 maxValue, u8 digits, u8 xOffset, u8 yOffset) {
    Window *window = &a0->extraWindows[index];

    ReadMsgDataIntoString(a0->msgData, slashEntryId, a0->string);
    u32 strWidth = FontID_String_GetWidth(0, a0->string, 0);
    u16 curXOffset = xOffset - strWidth / 2;
    u16 maxXOffset = curXOffset + strWidth;

    AddTextPrinterParameterizedWithColor(window, 0, a0->string, curXOffset, yOffset, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    sub_0208C87C(a0, curEntryId, curValue, digits, 0);
    strWidth = FontID_String_GetWidth(0, a0->string, 0);
    AddTextPrinterParameterizedWithColor(window, 0, a0->string, curXOffset - strWidth, yOffset, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    sub_0208C87C(a0, maxEntryId, maxValue, digits, 0);
    AddTextPrinterParameterizedWithColor(window, 0, a0->string, maxXOffset, yOffset, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
}
