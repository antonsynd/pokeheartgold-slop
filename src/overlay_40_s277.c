#include "global.h"

#include "bg_window.h"
#include "msgdata.h"
#include "text.h"

typedef struct Ov40WindowLayout {
    u8 x;
    u8 y;
    u8 width;
    u8 height;
} Ov40WindowLayout;

typedef struct Ov40Data {
    u8 filler_000[0x234];
    Window windows[6];
} Ov40Data;

typedef struct Ov40App {
    u8 filler_000[0x24];
    BgConfig *bgConfig;
    u8 filler_028[0x20];
    MsgData *msgData;
    u8 filler_04C[0x814];
    Ov40Data *data;
} Ov40App;

extern const Ov40WindowLayout ov40_022452DC[];

int ov40_022306C0(Window *window, String *string);

void ov40_02236F38(Ov40App *app) {
    Window *window;
    const Ov40WindowLayout *layout = ov40_022452DC;
    int baseTile = 1;
    u32 i;
    String *string;
    int x;

    for (i = 0, window = app->data->windows; i < 6; i++) {
        InitWindow(window);
        AddWindowParameterized(app->bgConfig, window, GF_BG_LYR_SUB_2, layout->x, layout->y, layout->width, layout->height, 14, baseTile);
        string = NewString_ReadMsgData(app->msgData, i + 60);
        x = ov40_022306C0(window, string);
        FillWindowPixelBuffer(window, 0);
        AddTextPrinterParameterizedWithColor(window, 0, string, x, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 13, 0), NULL);
        ScheduleWindowCopyToVram(window);
        String_Delete(string);
        baseTile += layout->width * layout->height;
        window++;
        layout++;
    }
}
