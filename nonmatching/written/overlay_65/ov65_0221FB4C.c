#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "text.h"

u8 ov65_0221FB4C(Window *window, String *str, int unused, u32 textSpeed, int xOrCenter, int yOffset) {
    int x = xOrCenter;

    if (xOrCenter == 1) {
        u32 strWidth = FontID_String_GetWidth(0, str, 0);
        x = ((int)(window->width * 8) - (int)strWidth) / 2;
    }
    return AddTextPrinterParameterizedWithColor(window, 0, str, x, yOffset, textSpeed, 0xB0C00, NULL);
}
