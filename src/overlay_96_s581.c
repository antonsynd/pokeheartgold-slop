#include "global.h"

typedef struct Ov96Point {
    u16 x;
    u16 y;
} Ov96Point;

typedef struct Ov96Marker {
    u32 unk00;
    VecFx32 pos;
    void *objs[3];
} Ov96Marker;

extern const Ov96Point ov96_0221C21C[];

void ov96_021EB588(void *obj, VecFx32 *pos);

void ov96_021F7544(Ov96Marker *markers) {
    int i;
    VecFx32 pos;

    for (i = 0; i < 29; i++) {
        pos.x = ov96_0221C21C[i].x << 15;
        pos.y = ov96_0221C21C[i].y << 15;
        pos.z = 0;
        ov96_021EB588(markers[i].objs[0], &pos);
        ov96_021EB588(markers[i].objs[1], &pos);
        ov96_021EB588(markers[i].objs[2], &pos);
        markers[i].pos = pos;
    }
}
