#include "global.h"

typedef struct Ov27MenuIcon {
    u16 palette;
    u16 unk2_0 : 15;
    u16 hidden : 1;
} Ov27MenuIcon;

typedef struct Ov27_0225B398 {
    u8 filler_000[0x4CC];
    u16 palettes[0x28];
    u32 unk51C_0 : 1;
    u32 layout : 4;
    u32 unk51C_5 : 27;
} Ov27_0225B398;

extern const Ov27MenuIcon ov27_0225CF94[];
extern const u8 ov27_0225CFC8[][8];

void ov27_0225B398(Ov27_0225B398 *a0, int selected) {
    int i;
    int icon;
    u16 palette;
    int offset;

    GF_ASSERT(selected < 7);
    for (i = 0; i < 7; i++) {
        icon = ov27_0225CFC8[a0->layout][i];
        palette = ov27_0225CF94[icon].palette;
        offset = 0;
        if (icon != 13 && palette != 0xFFFF) {
            if (i == selected) {
                offset = 16;
            }
            GXS_LoadOBJPltt(&a0->palettes[offset], i * 32, 32);
        }
    }
}
