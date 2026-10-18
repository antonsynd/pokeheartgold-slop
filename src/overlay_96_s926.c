#include "global.h"

typedef struct Ov96Point {
    BOOL enabled;
    int x;
    int y;
} Ov96Point;

typedef struct Ov96_02208AF8 {
    u8 filler_00[0x20];
    Ov96Point points[20];
} Ov96_02208AF8;

void ov96_02208AF8(Ov96_02208AF8 *a0, const u8 *coords) {
    int i;

    for (i = 0; i < 20; i++) {
        u16 x = coords[0] << 3;
        u16 y = coords[1] << 3;

        if (x != 0 && y != 0) {
            a0->points[i].enabled = TRUE;
            a0->points[i].x = x;
            a0->points[i].y = y;
        } else {
            a0->points[i].enabled = FALSE;
        }
        coords += 2;
    }
}
