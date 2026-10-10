#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"

extern u8 AddTextPrinterParameterizedWithColor(Window *window, u32 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);

typedef struct {
    u8 filler_00[8];
    s32 clearBeforePrinting;
    s32 textRightAligned;
    Window *window;
    MessageFormat *messageFormat;
    u8 filler_18[0x20 - 0x18];
    u32 textXOffset;
    u32 textYOffset;
    u8 filler_28[0x34 - 0x28];
    s32 textBank;
    u8 filler_38[0x40 - 0x38];
    u32 font;
    u32 textColor;
    u8 backgroundColorIdx;
    u8 filler_49[3];
    s32 textEntryID;
    u32 renderDelay;
} UnkStruct_ov74_0223547C;

typedef struct {
    u8 filler_00[8];
    enum HeapID heapID;
} UnkStruct_ov74_0223D454;

extern UnkStruct_ov74_0223D454 ov74_0223D454;

u32 ov74_0223547C(UnkStruct_ov74_0223547C *window, s32 textEntryID) {
    UnkStruct_ov74_0223D454 *manager = &ov74_0223D454;
    u32 printerID;
    __asm__ volatile("movs %0, r7" : "=l"(printerID) : : "cc");

    if (textEntryID != -1 && window->textEntryID != textEntryID) {
        window->textEntryID = textEntryID;

        if (window->clearBeforePrinting == 1) {
            FillWindowPixelBuffer(window->window, window->backgroundColorIdx);
        }

        if (window->textEntryID != -1) {
            MessageFormat *messageFormat;
            MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, (NarcId)0x1B, window->textBank, manager->heapID);
            String *string;

            messageFormat = window->messageFormat;
            if (messageFormat == NULL) {
                messageFormat = MessageFormat_New(manager->heapID);
            }

            string = ReadMsgData_ExpandPlaceholders(messageFormat, msgData, window->textEntryID, manager->heapID);

            if (window->textRightAligned == 0) {
                printerID = AddTextPrinterParameterizedWithColor(window->window, window->font, string, window->textXOffset, window->textYOffset, window->renderDelay, window->textColor, NULL);
            } else {
                u32 textWidth = FontID_String_GetWidth(window->font, string, GetFontAttribute((u8)window->font, 2));
                u32 x = GetWindowWidth(window->window) * 8 - textWidth;
                printerID = AddTextPrinterParameterizedWithColor(window->window, window->font, string, x, window->textYOffset, window->renderDelay, window->textColor, NULL);
                window->textRightAligned = 0;
            }

            String_Delete(string);

            if (window->messageFormat == NULL) {
                MessageFormat_Delete(messageFormat);
            }

            DestroyMsgData(msgData);
        }
    }

    window->renderDelay = 0xFF;
    return printerID;
}
