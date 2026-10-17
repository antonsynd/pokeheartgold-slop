#include "global.h"

typedef struct Ov07Coords {
    u16 x;
    u16 y;
} Ov07Coords;

typedef struct Ov07CoordsTable {
    Ov07Coords coords[6];
} Ov07CoordsTable;

extern const Ov07CoordsTable ov07_02236864;

void ov07_02231A20(int idx, int a1, Ov07Coords *out) {
    Ov07CoordsTable table = ov07_02236864;

    *out = table.coords[idx];
}
