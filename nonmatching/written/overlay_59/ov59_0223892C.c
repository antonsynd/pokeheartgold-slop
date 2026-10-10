#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "message_format.h"
#include "text.h"
#include "sprite.h"
#include "sprite_system.h"

extern const s16 ov59_0223C6C4[];
extern const s16 ov59_0223C6C6[];

void ov59_0223892C(u8 *param0, int param1) {
    Window *win = (Window *)(param0 + 0x128) + (param1 + 0xB);
    u8 *counts = param0 + 0x1A;
    Sprite **slot = (Sprite **)(param0 + 0x254) + (param1 + 2);

    if (counts[param1] == 0) {
        Sprite_SetDrawFlag(*slot, FALSE);
        ClearWindowTilemapAndScheduleTransfer(win);
    } else {
        u8 width;
        Sprite_SetDrawFlag(*slot, TRUE);
        FillWindowPixelBuffer(win, 0);
        BufferIntegerAsString(*(MessageFormat **)(param0 + 0x60), 0, counts[param1], 2, 1, 1);
        StringExpandPlaceholders(*(MessageFormat **)(param0 + 0x60), *(String **)(param0 + 0x64), *(String **)(param0 + 0x74));
        width = FontID_String_GetWidth(0, *(String **)(param0 + 0x64), 0);
        AddTextPrinterParameterizedWithColor(win, 0, *(String **)(param0 + 0x64), (0x10 - width) / 2, 0, 0xFF, 0x10200, NULL);
        ScheduleWindowCopyToVram(win);
    }
    Sprite_SetPositionXY(*slot, ov59_0223C6C4[param1 * 2], ov59_0223C6C6[param1 * 2]);
}
