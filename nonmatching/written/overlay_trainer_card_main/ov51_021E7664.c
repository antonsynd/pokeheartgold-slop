#include "global.h"
#include "bg_window.h"
#include "text.h"

void ov51_021E7664(Window *window, BOOL showColon, String *string)
{
    if (showColon) {
        AddTextPrinterParameterizedWithColor(window, 0, string, 0xcd, 0, 0, 0x10200, NULL);
    } else {
        FillWindowPixelRect(window, 0, 0xcd, 0, 5, 0x10);
        CopyWindowToVram(window);
    }
}
