#include "global.h"
#include "bg_window.h"

typedef struct UnkStruct_ov28_0225E578 {
    u8 filler_000[0x10];
    BgConfig *bgConfig;
    u8 filler_014[0x214 - 0x14];
    u32 unk_214;
    u32 unk_218;
    u8 filler_21C[0x250 - 0x21C];
    u8 cells[15][15];
} UnkStruct_ov28_0225E578;

extern const u16 ov28_0225EB14[];
extern const u16 ov28_0225EB32[];

u32 ov28_0225E51C(UnkStruct_ov28_0225E578 *a0, u16 x, u16 y);

void ov28_0225E578(UnkStruct_ov28_0225E578 *a0, int mode) {
    int cx = 0;
    int cy = 0;
    s16 x, y;

    if (mode == 1) {
        cx = (s16)((a0->unk_214 >> 3) - 3);
        cy = (s16)((a0->unk_218 >> 3) - 5);
    }

    for (y = 0; y < 15; y++) {
        for (x = 0; x < 15; x++) {
            u8 *cell;
            if (ov28_0225EB14[y] & (1 << x)) {
                continue;
            }
            cell = &a0->cells[y][x];
            if (mode == 1 && x >= cx - 3 && x <= cx + 3 && y >= cy - 3 && y <= cy + 3
                && abs(cx - x) + abs(cy - y) < 5) {
                u32 target = ov28_0225E51C(a0, (u16)x, (u16)y);
                if (*cell < target) {
                    *cell += 10;
                    if (*cell > target) {
                        *cell = target;
                    }
                } else {
                    *cell = target;
                }
            } else if (*cell < 2) {
                *cell = 0;
            } else {
                *cell -= 2;
            }
            if (*cell == 0) {
                FillBgTilemapRect(a0->bgConfig, 6, 0x1001, x + 3, y + 5, 1, 1, 0x11);
            } else {
                FillBgTilemapRect(a0->bgConfig, 6, ov28_0225EB32[*cell / 10], x + 3, y + 5, 1, 1, 0x11);
            }
        }
    }
    ScheduleBgTilemapBufferTransfer(a0->bgConfig, 6);
}
