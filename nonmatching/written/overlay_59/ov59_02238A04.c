#include "global.h"

#include "bg_window.h"
#include "message_format.h"
#include "text.h"

typedef struct UnkStruct_ov59_02238A04 {
    u8 padding_00[0x1A];
    u8 unk_1A[0x33];
    u8 unk_4D;
    u8 padding_4E[0x60 - 0x4E];
    MessageFormat *unk_60;
    String *unk_64;
    u8 padding_68[0x74 - 0x68];
    String *unk_74;
    u8 padding_78[0x128 - 0x78];
    Window unk_128[1];
} UnkStruct_ov59_02238A04;

extern const u8 ov59_0223C624[];

void ov59_02238A04(UnkStruct_ov59_02238A04 *param0, int param1) {
    u8 digits[2];
    int i;
    const u8 *v0;
    Window *window;

    digits[0] = param1 % 10;
    digits[1] = param1 / 10;
    v0 = ov59_0223C624;
    i = 0;
    do {
        BufferIntegerAsString(param0->unk_60, 0, digits[i], 1, 0, 1);
        StringExpandPlaceholders(param0->unk_60, param0->unk_64, param0->unk_74);
        window = &param0->unk_128[i + 8];
        FillWindowPixelBuffer(window, 0);
        AddTextPrinterParameterizedWithColor(window, 0, param0->unk_64, v0[i], 3, 0xFF, 0x10200, NULL);
        ScheduleWindowCopyToVram(window);
        if (param0->unk_1A[param0->unk_4D] < 10) {
            return;
        }
        i++;
    } while (i < 2);
}
