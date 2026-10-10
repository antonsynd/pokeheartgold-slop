#include "global.h"
#include "bg_window.h"

#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

void ov108_021E7ADC(void *data) {
    int tile = 1;
    int i, j, k;

    for (i = 0; i < 6; i++) {
        u32 y = (u8)((i / 3) * 9 + 3);
        u8 x = (u8)((i % 3) * 9 + 3);
        for (j = 0; j < 8; j++) {
            u8 yy = (u8)y;
            for (k = 0; k < 8; k++) {
                FillBgTilemapRect(PTRAT(data, 0x340), 5, (u16)tile, (u8)(x + k), yy, 1, 1, 0x11);
                tile++;
            }
            y++;
        }
    }
    ScheduleBgTilemapBufferTransfer(PTRAT(data, 0x340), 5);
}
