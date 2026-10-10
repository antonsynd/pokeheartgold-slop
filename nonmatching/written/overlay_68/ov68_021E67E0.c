#include "global.h"
#include "bg_window.h"

typedef struct UnkStruct_ov68_021E67E0_Data {
    /* 0x00 */ u8 filler_00[0x16];
    /* 0x16 */ u16 listBase;
} UnkStruct_ov68_021E67E0_Data;

typedef struct UnkStruct_ov68_021E67E0 {
    /* 0x000 */ UnkStruct_ov68_021E67E0_Data *data;
    /* 0x004 */ BgConfig *bgConfig;
    /* 0x008 */ u8 filler_008[0xA8 - 0x8];
    /* 0x0A8 */ Window window;
} UnkStruct_ov68_021E67E0;

u8 ov68_021E66F0(UnkStruct_ov68_021E67E0 *ctl, int base, int row);
int ov68_021E70BC(UnkStruct_ov68_021E67E0 *ctl);

int ov68_021E67E0(UnkStruct_ov68_021E67E0 *ctl) {
    u32 i;
    u32 base;

    FillWindowPixelBuffer(&ctl->window, 0);
    for (i = 0; i < 4; i++) {
        base = ctl->data->listBase;
        ov68_021E66F0(ctl, (u8)base, (u8)i);
    }
    ScheduleWindowCopyToVram(&ctl->window);
    ScheduleBgTilemapBufferTransfer(ctl->bgConfig, 7);
    return ov68_021E70BC(ctl);
}
