#include "global.h"

#include "bg_window.h"
#include "font.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_ov43_0222EC58_A {
    u8 padding_00[0xC];
    Window *unk_0C[8];
} UnkStruct_ov43_0222EC58_A;

typedef struct UnkStruct_ov43_0222EC58_B {
    u8 padding_00[0x50];
    MessageFormat *unk_50;
    MsgData *unk_54;
} UnkStruct_ov43_0222EC58_B;

u8 ov43_0222EC58(UnkStruct_ov43_0222EC58_A *param0, u32 param1, u32 param2, void *param3, UnkStruct_ov43_0222EC58_B *param4, u32 entryID, u32 xOffset, u32 yOffset, u32 color, String *string, String *fmtString, u32 param11) {
    u32 x = xOffset;

    ReadMsgDataIntoString(param4->unk_54, entryID, fmtString);
    StringExpandPlaceholders(param4->unk_50, string, fmtString);

    if (param11 == 1) {
        x -= (FontID_String_GetWidth(1, string, 0) + 1) >> 1;
    } else if (param11 == 2) {
        x -= FontID_String_GetWidth(1, string, 0);
    }

    return AddTextPrinterParameterizedWithColor(&param0->unk_0C[param1][param2], 1, string, x, yOffset, 0xff, color, NULL);
}
