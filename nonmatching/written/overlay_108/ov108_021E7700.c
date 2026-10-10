#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "text.h"

u8 ov108_021E7700(void *data, u32 idx, int msg) {
    Window *win = (Window *)((u8 *)data + 0x3B4) + idx;
    u8 width = (u8)(GetWindowWidth(win) * 8);
    u8 height = (u8)(GetWindowHeight(win) * 8);
    u32 color = 0x30102;
    String **strs;
    u32 x;

    if (idx == 2) {
        strs = (String **)((u8 *)data + 0x310);
        x = (u8)((width - FontID_String_GetWidth(0, strs[msg], 0)) >> 1);
    } else {
        strs = (String **)((u8 *)data + 0x324);
        x = 0;
        if (idx <= 1) {
            color = 0xD0C0E;
            FillWindowPixelBuffer(win, 0xE);
            FillWindowPixelRect(win, 6, 0, 0, width, 2);
            FillWindowPixelRect(win, 6, 0, (u16)(height - 2), width, 2);
        } else {
            FillWindowPixelBuffer(win, 2);
        }
    }
    return AddTextPrinterParameterizedWithColor(win, 0, strs[msg], x, 4, 0, color, NULL);
}
