#include "global.h"

#include "palette.h"

typedef struct Ov92Sub {
    u8 filler_0[4];
    int season;
} Ov92Sub;

typedef struct Ov92_0225E130 {
    u8 filler_00[4];
    Ov92Sub *sub;
    u8 filler_08[0x54];
    PaletteData *paletteData;
} Ov92_0225E130;

extern const u32 _02264020[][4][5];

void ov92_0225E130(Ov92_0225E130 *a0, int index) {
    PaletteData *paletteData = a0->paletteData;
    int i;

    for (i = 0; i < 4; i++) {
        PaletteData_LoadFromNarc(paletteData, (NarcId)193, 0x49, HEAP_ID_113, PLTTBUF_SUB_BG, 0x20, (i + 1) * 16, _02264020[a0->sub->season - 1][index][i + 1] * 16);
    }
}
