#include "global.h"

#include "bg_window.h"

typedef struct Ov43_0222D0F8 {
    BgConfig *bgConfig;
} Ov43_0222D0F8;

typedef struct Ov43Palettes {
    u8 palettes[2];
} Ov43Palettes;

extern const u8 _0222ED5C[];

void ov43_0222D0F8(void *a0, Ov43_0222D0F8 *a1, int idx) {
    Ov43Palettes palettes = *(const Ov43Palettes *)&_0222ED5C[1];

    BgTilemapRectChangePalette(a1->bgConfig, 2, 0x11, 0x14, 0xE, 4, palettes.palettes[idx]);
    ScheduleBgTilemapBufferTransfer(a1->bgConfig, 2);
}
