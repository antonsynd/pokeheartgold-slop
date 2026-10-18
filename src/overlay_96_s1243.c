#include "global.h"

typedef struct Ov96Athlete {
    u8 filler_00[4];
    void **unk04;
    u8 filler_08[0x24];
    fx32 x;
    fx32 y;
    u8 filler_34[0x74];
} Ov96Athlete;

typedef struct Ov96_02215DEC {
    u8 filler_000[0x1A4];
    Ov96Athlete athletes[4];
} Ov96_02215DEC;

Ov96_02215DEC *PokeathlonCourse_GetHeapAllocPtr4(void *course);
void ov96_021EB06C(void *a0, int x, int y, int *outX, int *outY);

void ov96_02215DEC(void *course, int index, fx32 *out) {
    int x, y;
    Ov96_02215DEC *data = PokeathlonCourse_GetHeapAllocPtr4(course);
    Ov96Athlete *athlete = &data->athletes[index];

    ov96_021EB06C(*athlete->unk04, athlete->x >> FX32_SHIFT, athlete->y >> FX32_SHIFT, &x, &y);
    out[0] = x << FX32_SHIFT;
    out[1] = y << FX32_SHIFT;
}
