#include "global.h"
#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_ov40_0222FF74 {
    void *unk_00;
    void *unk_04;
    u8 filler_08[0x3C - 0x08];
    Window windows[5];
} UnkStruct_ov40_0222FF74;

typedef struct UnkStruct_ov40_0222FF74_Param1 {
    u8 filler_00[0x24];
    BgConfig *bgConfig;
    u8 filler_28[0x48 - 0x28];
    MsgData *msgData;
} UnkStruct_ov40_0222FF74_Param1;

MessageFormat *ov40_0222DAB0(enum HeapID heapID);
u32 ov40_022306C0(Window *window, String *string);
void ov40_02230DCC(UnkStruct_ov40_0222FF74_Param1 *param1, String *string);
String *sub_020315B8(void *a0, enum HeapID heapID);
u64 sub_0203088C(void *a0, int a1, int a2);

void ov40_0222FF74(UnkStruct_ov40_0222FF74 *work, UnkStruct_ov40_0222FF74_Param1 *param1) {
    static const s16 windowParams[5][4] = {
        { 0x4, 0x4, 0x18, 0x2 },
        { 0x4, 0x6, 0x18, 0x4 },
        { 0x4, 0xB, 0x5, 0x2 },
        { 0x4, 0xD, 0x5, 0x2 },
        { 0x4, 0x15, 0x18, 0x2 },
    };
    static const int messageIds[6] = { 0x14, 0x14, 0x14, 0xA, 0x14, 0x14 };
    int i;
    int tile;
    Window *window;
    String *str;
    MessageFormat *msgFmt;
    String *name;
    String *src;
    String *dest;
    u64 value;

    tile = 1;
    for (i = 0; i < 5; i++) {
        if (windowParams[i][0] == 0xFF) {
            break;
        }
        window = &work->windows[i];
        str = NewString_ReadMsgData(param1->msgData, messageIds[i]);
        InitWindow(window);
        AddWindowParameterized(param1->bgConfig, window, 2, windowParams[i][0], windowParams[i][1], windowParams[i][2], windowParams[i][3], 14, tile);
        FillWindowPixelBuffer(window, 0);
        AddTextPrinterParameterizedWithColor(window, 0, str, ov40_022306C0(window, str), 0, 0xFF, 0xF0D00, NULL);
        ScheduleWindowCopyToVram(window);
        tile += windowParams[i][2] * windowParams[i][3];
        String_Delete(str);
    }

    {
        void *saveData = work->unk_00;
        msgFmt = ov40_0222DAB0(0x6D);
        window = &work->windows[0];
        name = sub_020315B8(saveData, 0x6D);
        ov40_02230DCC(param1, name);
        src = NewString_ReadMsgData(param1->msgData, 7);
        dest = String_New(0xFF, 0x6D);
        BufferString(msgFmt, 0, name, 0, 1, 2);
        StringExpandPlaceholders(msgFmt, dest, src);
        FillWindowPixelBuffer(window, 0);
        AddTextPrinterParameterizedWithColor(window, 0, dest, ov40_022306C0(window, dest), 0, 0xFF, 0xF0D00, NULL);
        ScheduleWindowCopyToVram(window);
        String_Delete(name);
        String_Delete(src);
        String_Delete(dest);
        MessageFormat_ResetBuffers(msgFmt);
    }

    {
        int kind = sub_0203088C(work->unk_04, 3, 0);
        window = &work->windows[1];
        str = NewString_ReadMsgData(param1->msgData, kind + 0x84);
        FillWindowPixelBuffer(window, 0);
        AddTextPrinterParameterizedWithColor(window, 0, str, 0, 0, 0xFF, 0xF0D00, NULL);
        ScheduleWindowCopyToVram(window);
        String_Delete(str);
        MessageFormat_ResetBuffers(msgFmt);
    }

    {
        int number = sub_0203088C(work->unk_04, 2, 0);
        if (number != 0) {
            window = &work->windows[2];
            name = String_New(0xFF, 0x6D);
            src = NewString_ReadMsgData(param1->msgData, 9);
            dest = String_New(0xFF, 0x6D);
            String16_FormatInteger(name, number, 4, 0, 1);
            BufferString(msgFmt, 0, name, 0, 1, 2);
            StringExpandPlaceholders(msgFmt, dest, src);
            FillWindowPixelBuffer(window, 0);
            AddTextPrinterParameterizedWithColor(window, 0, dest, ov40_022306C0(window, dest), 0, 0xFF, 0xF0D00, NULL);
            ScheduleWindowCopyToVram(window);
            String_Delete(name);
            String_Delete(src);
            String_Delete(dest);
            MessageFormat_ResetBuffers(msgFmt);
        } else {
            window = &work->windows[3];
            FillWindowPixelBuffer(window, 0);
            ScheduleWindowCopyToVram(window);
        }
    }

    {
        u64 rest;
        u32 low, mid, high;
        String *lowStr;
        String *midStr;
        String *highStr;

        value = sub_0203088C(work->unk_04, 4, 0);
        lowStr = String_New(0xFF, 0x6D);
        midStr = String_New(0xFF, 0x6D);
        highStr = String_New(0xFF, 0x6D);
        window = &work->windows[4];
        rest = value;
        low = rest % 100000;
        rest /= 100000;
        mid = rest % 100000;
        rest /= 100000;
        high = (u32)rest;
        if ((high / 10) % 10 == 0 && value != 0) {
            src = NewString_ReadMsgData(param1->msgData, 12);
        } else {
            src = NewString_ReadMsgData(param1->msgData, 11);
        }
        dest = String_New(0xFF, 0x6D);
        String16_FormatInteger(lowStr, low, 5, 2, 1);
        String16_FormatInteger(midStr, mid, 5, 2, 1);
        String16_FormatInteger(highStr, high, 2, 2, 1);
        BufferString(msgFmt, 2, lowStr, 0, 1, 2);
        BufferString(msgFmt, 1, midStr, 0, 1, 2);
        BufferString(msgFmt, 0, highStr, 0, 1, 2);
        StringExpandPlaceholders(msgFmt, dest, src);
        FillWindowPixelBuffer(window, 0);
        AddTextPrinterParameterizedWithColor(window, 0, dest, ov40_022306C0(window, dest), 0, 0xFF, 0xF0D00, NULL);
        ScheduleWindowCopyToVram(window);
        String_Delete(lowStr);
        String_Delete(midStr);
        String_Delete(highStr);
        String_Delete(src);
        String_Delete(dest);
        MessageFormat_ResetBuffers(msgFmt);
    }

    MessageFormat_Delete(msgFmt);
}
