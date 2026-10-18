#include "global.h"

#include "bg_window.h"
#include "font.h"
#include "text.h"

typedef struct Ov27Label {
    String *string;
    u8 filler_04[4];
} Ov27Label;

typedef struct Ov27_0225BCE8 {
    u8 filler_000[0x3F0];
    Window windows[7];
    u8 filler_460[0x14];
    Ov27Label labels[7];
} Ov27_0225BCE8;

void ov27_0225BCE8(Ov27_0225BCE8 *a0) {
    int i;

    for (i = 0; i < 7; i++) {
        if (a0->labels[i].string != NULL) {
            int x = 72 - FontID_String_GetWidth(0, a0->labels[i].string, 0);

            AddTextPrinterParameterizedWithColor(&a0->windows[i], 0, a0->labels[i].string, x / 2, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(14, 2, 0), NULL);
        }
    }
}
