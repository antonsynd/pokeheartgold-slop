#include "global.h"

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct Ov40Record {
    u8 filler_000[0x4B0];
    u64 score;
} Ov40Record;

typedef struct Ov40App {
    u8 filler_000[0x48];
    MsgData *msgData;
    u8 filler_04C[0x858];
    Window window;
} Ov40App;

MessageFormat *ov40_0222DAB0(enum HeapID heapId);

void ov40_02242E4C(Ov40Record *record, Ov40App *app) {
    String *format;
    String *string;
    MessageFormat *msgFormat;
    Window *window;

    msgFormat = ov40_0222DAB0(HEAP_ID_109);
    {
        u64 score = record->score;
        u64 rest = score;
        u32 parts[3];
        String *low = String_New(255, HEAP_ID_109);
        String *mid = String_New(255, HEAP_ID_109);
        String *high = String_New(255, HEAP_ID_109);

        window = &app->window;
        parts[0] = rest % 100000;
        rest /= 100000;
        parts[1] = rest % 100000;
        rest /= 100000;
        parts[2] = rest;
        format = NewString_ReadMsgData(app->msgData, 295);
        string = String_New(255, HEAP_ID_109);
        String16_FormatInteger(low, parts[0], 5, PRINTING_MODE_LEADING_ZEROS, TRUE);
        String16_FormatInteger(mid, parts[1], 5, PRINTING_MODE_LEADING_ZEROS, TRUE);
        String16_FormatInteger(high, parts[2], 2, PRINTING_MODE_LEADING_ZEROS, TRUE);
        BufferString(msgFormat, 2, low, 0, 1, GAME_LANGUAGE);
        BufferString(msgFormat, 1, mid, 0, 1, GAME_LANGUAGE);
        BufferString(msgFormat, 0, high, 0, 1, GAME_LANGUAGE);
        StringExpandPlaceholders(msgFormat, string, format);
        FillWindowPixelBuffer(window, 0xCC);
        AddTextPrinterParameterizedWithColor(window, 0, string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 13, 0), NULL);
        ScheduleWindowCopyToVram(window);
        String_Delete(low);
        String_Delete(mid);
        String_Delete(high);
        String_Delete(format);
        String_Delete(string);
        MessageFormat_ResetBuffers(msgFormat);
    }
    MessageFormat_Delete(msgFormat);
}
