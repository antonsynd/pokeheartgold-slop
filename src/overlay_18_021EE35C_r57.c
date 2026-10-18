#include "global.h"

#include "bg_window.h"
#include "unk_0201956C.h"

typedef struct Ov18_021F006C {
    u8 filler_00[8];
    UnkStruct_0201956C *tilemaps;
    Window windows[1];
} Ov18_021F006C;

void ov18_021F006C(Ov18_021F006C *a0, int index) {
    u16 *tilemap = sub_02019B08(a0->tilemaps, 15);
    Window *windows = a0->windows;
    u16 baseTile = GetWindowBaseTile(&windows[index]);
    u8 x = GetWindowX(&windows[index]);
    u8 y = GetWindowY(&windows[index]);
    u8 width = GetWindowWidth(&windows[index]);
    u8 height = GetWindowHeight(&windows[index]);
    u32 i;
    u32 j;

    for (i = 0; i < height; i++) {
        for (j = 0; j < width; j++) {
            tilemap[(y + i) * 32 + x + j] = (tilemap[(y + i) * 32 + x + j] & 0xF000) + baseTile + i * width + j;
        }
    }
    CopyWindowPixelsToVram_TextMode(&windows[index]);
}
