#include "global.h"

#include "bg_window.h"
#include "render_window.h"

typedef struct UnkStruct_ov90_022594FC {
    Window unk_00[2];
    u16 unk_20[2];
    u32 unk_24[4];
    int unk_34;
} UnkStruct_ov90_022594FC;

extern u32 TextPrinterCheckActive(u8 printerId);
extern void RemoveTextPrinter(u8 printerId);
extern void ov90_02259570(UnkStruct_ov90_022594FC *param0, u32 param1);

void ov90_022594FC(UnkStruct_ov90_022594FC *param0, u32 param1) {
    ov90_02259570(param0, param1);

    if (TextPrinterCheckActive(param0->unk_20[param1])) {
        RemoveTextPrinter(param0->unk_20[param1]);
    }

    ClearFrameAndWindow2(&param0->unk_00[param1], 1);
    ClearWindowTilemapAndScheduleTransfer(&param0->unk_00[param1]);
}
