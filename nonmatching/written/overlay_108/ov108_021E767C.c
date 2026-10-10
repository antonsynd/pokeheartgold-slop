#include "global.h"
#include "bg_window.h"

#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

void ov108_021E767C(void *data, int param) {
    FillBgTilemapRect(PTRAT(data, 0x340), 0, 0, 0, 0x13, 0x18, 5, 0x11);
    u16 *scr = PTRAT(data, 0x4D8);
    CopyToBgTilemapRect(PTRAT(data, 0x340), 0, 0, (u8)(0x15 - param * 2), 0x18, (u8)(param * 2 + 3), (u8 *)scr + 0xC, 0, (u8)(param * 3), (u8)(scr[0] >> 3), (u8)(scr[1] >> 3));
    ScheduleBgTilemapBufferTransfer(PTRAT(data, 0x340), 0);
}
