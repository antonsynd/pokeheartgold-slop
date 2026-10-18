#include "global.h"

typedef struct Ov96Runner {
    u8 filler_00[0x30];
    fx32 x;
    fx32 y;
    u8 filler_38[0x44];
} Ov96Runner;

typedef struct Ov96Team {
    Ov96Runner runners[3];
    u8 filler_174[0];
} Ov96Team;

typedef struct Ov96_02213364 {
    u8 filler_00[0x5C];
    Ov96Team teams[4];
} Ov96_02213364;

int ov96_021E6104(Ov96_02213364 *a0);
BOOL ov96_021E872C(int x, int y, int targetX, int targetY, int range, int *distance);

u8 ov96_02213364(Ov96_02213364 *a0, u8 team, s16 targetX, s16 targetY) {
    int distances[3];
    u8 valid[3];
    int distance;
    int range = ov96_021E6104(a0);
    fx32 best = range << FX32_SHIFT;
    u8 i;
    u8 count = 0;
    u8 result;

    for (i = 0; i < 3; i++) {
        Ov96Runner *runner = &a0->teams[team].runners[i];

        if (ov96_021E872C(runner->x / FX32_ONE, runner->y / FX32_ONE, targetX, targetY, range, &distance)) {
            distances[i] = distance;
            valid[i] = TRUE;
            count++;
        } else {
            distances[i] = 0;
            valid[i] = FALSE;
        }
    }

    if (count == 0) {
        return 12;
    }

    result = 3;
    for (i = 0; i < 3; i++) {
        if (valid[i] && distances[i] < best) {
            result = i;
            best = distances[i];
        }
    }

    if (result == 3) {
        GF_ASSERT(FALSE);
        result = 12;
    }
    return result;
}
