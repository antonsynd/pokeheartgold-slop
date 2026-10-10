#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "message_format.h"
#include "msgdata.h"
#include "text.h"
#include "unk_02097268.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern const u32 ov108_021EA724[2];

typedef struct UnkStruct_ov108_021E7CD8 {
    SafariObjectConfig config;
    u8 counts[5];
} UnkStruct_ov108_021E7CD8;

void ov108_021E7CD8(void *data, u32 idx) {
    Window *windows = (Window *)((u8 *)data + 0x3B4);
    Window *nameWin = (Window *)((u8 *)data + 0x3F4);
    int i;

    if (idx >= 6) {
        if (U8AT(data, 0x184E3) != 0) {
            for (i = 0; i < 5; i++) {
                FillWindowPixelBuffer(&windows[6 + i * 2], (u8)ov108_021EA724[i % 2]);
                ScheduleWindowCopyToVram(&windows[6 + i * 2]);
            }
        }
        FillWindowPixelBuffer(nameWin, 0xC);
        ScheduleWindowCopyToVram(nameWin);
        return;
    }

    u8 *area = (u8 *)data + 0x1C + idx * 0x7A;
    ReadMsgDataIntoString(PTRAT(data, 0x304), area[0] + 0x10, PTRAT(data, 0x30C));
    u8 width = GetWindowWidth(nameWin);
    u32 strWidth = FontID_String_GetWidth(0, PTRAT(data, 0x30C), 0);
    u32 x = (u8)((width * 8 - strWidth) >> 1);
    FillWindowPixelBuffer(nameWin, 0xC);
    AddTextPrinterParameterizedWithColor(nameWin, 0, PTRAT(data, 0x30C), x, 4, 0xFF, 0x80B0C, NULL);
    ScheduleWindowCopyToVram(nameWin);

    if (U8AT(data, 0x184E3) != 0) {
        UnkStruct_ov108_021E7CD8 work;
        MI_CpuFill8(work.counts, 0, 5);
        for (i = 0; i < area[1]; i++) {
            GetSafariObjectConfig(&work.config, area[2 + i * 4], 2);
            u8 type = work.config.objectType;
            if (type == 0) {
                work.counts[4]++;
            } else {
                work.counts[type - 1]++;
            }
        }
        for (i = 0; i < 5; i++) {
            Window *win = &windows[6 + i * 2];
            BufferIntegerAsString(PTRAT(data, 0x308), 0, work.counts[i], 2, 1, 1);
            StringExpandPlaceholders(PTRAT(data, 0x308), PTRAT(data, 0x30C), PTRAT(data, 0x338));
            u32 color = ov108_021EA724[i % 2];
            FillWindowPixelBuffer(win, (u8)color);
            AddTextPrinterParameterizedWithColor(win, 0, PTRAT(data, 0x30C), 0, 0, 0xFF, color, NULL);
            ScheduleWindowCopyToVram(win);
        }
    }
}
