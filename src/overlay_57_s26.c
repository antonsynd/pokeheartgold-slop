#include "global.h"

typedef struct Ov57Colors {
    u8 rgb[3];
} Ov57Colors;

typedef struct Ov57Row {
    u8 rgb[3];
    u8 filler_03[0xD];
} Ov57Row;

typedef struct Ov57Preset {
    Ov57Colors *colors;
    u8 filler_04[4];
} Ov57Preset;

typedef struct Ov57_022384C0 {
    u8 filler_000[8];
    Ov57Preset presets[105];
    Ov57Row rows[8];
    u8 filler_3D0[0x1C];
    int presetIndex;
} Ov57_022384C0;

BOOL ov57_022384C0(Ov57_022384C0 *a0) {
    int i;
    Ov57Colors *colors;

    colors = a0->presets[a0->presetIndex].colors;

    for (i = 0; i < 8; i++) {
        if (a0->rows[i].rgb[0] != colors[i].rgb[0] || a0->rows[i].rgb[1] != colors[i].rgb[1] || a0->rows[i].rgb[2] != colors[i].rgb[2]) {
            return TRUE;
        }
    }
    return FALSE;
}
