#include "global.h"

#include "bg_window.h"
#include "render_window.h"

typedef struct UnkStruct_ov90_02259464 {
    Window unk_00[2];
    u16 unk_20[2];
    u32 unk_24[4];
    int unk_34;
} UnkStruct_ov90_02259464;

typedef struct UnkStruct_ov90_02259464_Entry {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov90_02259464_Entry;

extern const UnkStruct_ov90_02259464_Entry ov90_0225C34C[20];

extern u32 TextPrinterCheckActive(u8 printerId);
extern void RemoveTextPrinter(u8 printerId);
extern void ov90_02259570(UnkStruct_ov90_02259464 *param0, u32 param1);
extern u32 ov90_02259314(void *param0, u32 param1, Window *param2, u32 param3, u32 param4);

void ov90_02259464(UnkStruct_ov90_02259464 *param0, void *param1, u32 param2, u32 param3) {
    u32 v0;

    if (param0->unk_34 == 1) {
        for (v0 = 0; v0 < 20; v0++) {
            if (ov90_0225C34C[v0].unk_00 == param2) {
                param2 = ov90_0225C34C[v0].unk_02;
            }
        }
    }

    if (TextPrinterCheckActive(param0->unk_20[param3])) {
        RemoveTextPrinter(param0->unk_20[param3]);
    }

    ov90_02259570(param0, param3);
    FillWindowPixelBuffer(&param0->unk_00[param3], 15);
    param0->unk_20[param3] = ov90_02259314(param1, param2, &param0->unk_00[param3], param0->unk_24[param3], 1);
    DrawFrameAndWindow2(&param0->unk_00[param3], 1, 1, 13);
    ScheduleWindowCopyToVram(&param0->unk_00[param3]);
}
