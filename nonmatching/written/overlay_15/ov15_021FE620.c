typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

u32 TMHMGetMove(u32 itemId);
void *NewString_ReadMsgData(void *msgData, s32 strno);
void String_Delete(void *string);
void StringExpandPlaceholders(void *messageFormat, void *dest, void *src);
void BufferIntegerAsString(void *messageFormat, u32 fieldno, u32 num, u32 maxDigits, u32 paddingMode, u32 charsetMode);
u32 GetMoveMaxPP(u32 move, u32 ppUp);
u32 GetMoveAttr(u32 move, u32 attr);
void ScheduleWindowCopyToVram(void *window);
u32 AddTextPrinterParameterizedWithColor(void *window, u32 fontId, void *str, u32 x, u32 y, u32 speed, u32 color, void *callback);

#define APP_STRINGS(app) (*(void **)((u8 *)(app) + 0x2f0))
#define APP_FORMAT(app) (*(void **)((u8 *)(app) + 0x2f4))
#define APP_BUFFER(app) (*(void **)((u8 *)(app) + 0x5e4))

void ov15_021FE620(void *app, u32 item)
{
    void *window = (u8 *)app + 0x14;
    u32 move;
    void *string;
    u32 value;
    u32 maxPP;

    move = TMHMGetMove(item);

    string = NewString_ReadMsgData(APP_STRINGS(app), 0x65);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0, 0xff, 0xf0e00, 0);
    String_Delete(string);

    string = NewString_ReadMsgData(APP_STRINGS(app), 0x59);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0x10, 0xff, 0xf0e00, 0);
    String_Delete(string);

    string = NewString_ReadMsgData(APP_STRINGS(app), 0x5c);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0x48, 0, 0xff, 0xf0e00, 0);
    String_Delete(string);

    string = NewString_ReadMsgData(APP_STRINGS(app), 0x5a);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0xa8, 0, 0xff, 0xf0e00, 0);
    String_Delete(string);

    string = NewString_ReadMsgData(APP_STRINGS(app), 0x5b);
    AddTextPrinterParameterizedWithColor(window, 0, string, 0xa8, 0x10, 0xff, 0xf0e00, 0);
    String_Delete(string);

    maxPP = GetMoveMaxPP(move, 0);
    string = NewString_ReadMsgData(APP_STRINGS(app), 0x5d);
    BufferIntegerAsString(APP_FORMAT(app), 0, maxPP, 2, 1, 1);
    StringExpandPlaceholders(APP_FORMAT(app), APP_BUFFER(app), string);
    String_Delete(string);
    AddTextPrinterParameterizedWithColor(window, 0, APP_BUFFER(app), 0x30, 0x10, 0xff, 0xf0e00, 0);

    value = (u16)GetMoveAttr(move, 2);
    if (value <= 1) {
        string = NewString_ReadMsgData(APP_STRINGS(app), 0x19);
    } else {
        string = NewString_ReadMsgData(APP_STRINGS(app), 0x5e);
    }
    BufferIntegerAsString(APP_FORMAT(app), 0, value, 3, 0, 1);
    StringExpandPlaceholders(APP_FORMAT(app), APP_BUFFER(app), string);
    String_Delete(string);
    AddTextPrinterParameterizedWithColor(window, 0, APP_BUFFER(app), 0xe8, 0, 0xff, 0xf0e00, 0);

    value = (u16)GetMoveAttr(move, 4);
    if (value == 0) {
        string = NewString_ReadMsgData(APP_STRINGS(app), 0x19);
    } else {
        string = NewString_ReadMsgData(APP_STRINGS(app), 0x5e);
    }
    BufferIntegerAsString(APP_FORMAT(app), 0, value, 3, 0, 1);
    StringExpandPlaceholders(APP_FORMAT(app), APP_BUFFER(app), string);
    String_Delete(string);
    AddTextPrinterParameterizedWithColor(window, 0, APP_BUFFER(app), 0xe8, 0x10, 0xff, 0xf0e00, 0);

    ScheduleWindowCopyToVram(window);
}
