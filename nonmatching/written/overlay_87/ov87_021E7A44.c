#include "global.h"

#include "bg_window.h"

extern void ov87_021E7AB0(void *app, int x, int y);

void ov87_021E7A44(u8 *p, int touchX, int touchY) {
    int y, x;

    for (y = -3; y < 3; y++) {
        for (x = -3; x < 3; x++) {
            if (touchX + x > 0 && touchX + x < 256 && touchY + y > 0 && touchY + y < 192) {
                ov87_021E7AB0(p, touchX + x, touchY + y);
            }
        }
    }

    BG_LoadCharTilesData(*(BgConfig **)(p + 0x58), 0, *(void **)(p + 0x38c), *(u32 *)(*(u8 **)(p + 0x388) + 0x10), 0);
    BgCommitTilemapBufferToVram(*(BgConfig **)(p + 0x58), 0);
}
