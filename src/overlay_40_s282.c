#include "global.h"

#include "bg_window.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct Ov40Data {
    u8 filler_000[4];
    u16 name[0xE0];
    Window nameWindow;
    u8 filler_1D4[0x2EF];
    u8 unk4C3;
    u8 filler_4C4[0x210];
    Window windows[3];
    u8 filler_704[0x94];
    int windowCount;
} Ov40Data;

typedef struct Ov40App {
    u8 filler_000[0x24];
    BgConfig *bgConfig;
    u8 filler_028[0x20];
    MsgData *msgData;
    u8 filler_04C[0x814];
    Ov40Data *data;
} Ov40App;

int ov40_022306C0(Window *window, String *string);

void ov40_02237144(Ov40App *app) {
    Ov40Data *data = app->data;
    Window *window = &data->nameWindow;
    String *string = String_New(0xFF, HEAP_ID_109);

    CopyU16ArrayToString(string, data->name);
    FillWindowPixelBuffer(window, 0);
    AddTextPrinterParameterizedWithColor(window, 0, string, ov40_022306C0(window, string), 4, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 1, 0), NULL);
    ScheduleWindowCopyToVram(window);
    String_Delete(string);
}
