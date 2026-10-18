#include "global.h"

#include "bg_window.h"
#include "text.h"

typedef struct Ov96_02214044 {
    u8 filler_000[0x18];
    Window windows[4];
    u8 filler_058[0x760];
    String *strings[3];
    String *names[4];
    u8 filler_7D4[0x44];
    u8 highlighted[4];
} Ov96_02214044;

void ov96_02214044(Ov96_02214044 *a0, u8 index, int mode) {
    String *string;

    FillWindowPixelBuffer(&a0->windows[index], 0);
    if (mode != 0) {
        if (mode == 2) {
            string = a0->strings[0];
        } else if (mode == 1) {
            string = a0->strings[1];
        } else if (mode == 3) {
            string = a0->strings[2];
        } else {
            GF_ASSERT(FALSE);
            string = a0->strings[0];
        }
        AddTextPrinterParameterizedWithColor(&a0->windows[index], 4, string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    } else {
        AddTextPrinterParameterizedWithColor(&a0->windows[index], 4, a0->names[index], 0, 0, TEXT_SPEED_NOTRANSFER, a0->highlighted[index] ? MAKE_TEXT_COLOR(3, 4, 0) : MAKE_TEXT_COLOR(1, 2, 0), NULL);
    }
    CopyWindowToVram(&a0->windows[index]);
}
