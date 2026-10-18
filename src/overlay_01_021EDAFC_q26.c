#include "global.h"

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov01_021EE754 {
    u8 filler_00[8];
    Window window;
    u8 filler_18[0x74];
    MsgData *msgData;
    MessageFormat *msgFormat;
} Ov01_021EE754;

void ov01_021EE754(Ov01_021EE754 *a0, u16 msgId, u8 x, u8 y) {
    String *template = String_New(0x5A, HEAP_ID_FIELD1);
    String *string = String_New(0x5A, HEAP_ID_FIELD1);

    ReadMsgDataIntoString(a0->msgData, msgId, template);
    StringExpandPlaceholders(a0->msgFormat, string, template);
    AddTextPrinterParameterized(&a0->window, 0, string, x, y, 0xFF, NULL);
    String_Delete(template);
    String_Delete(string);
}
