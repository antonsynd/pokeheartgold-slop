#include "global.h"

#include "unk_02014DA0.h"

typedef struct Ov07Coords {
    u8 filler_0[4];
    int x;
    int y;
    int z;
} Ov07Coords;

typedef struct Ov07Owner {
    Ov07Coords *coords;
} Ov07Owner;

typedef struct Ov07_02220230 {
    u8 filler_00[0x20];
    Ov07Owner *owner;
    u8 filler_24[4];
    int x;
    int y;
    int z;
} Ov07_02220230;

typedef struct Ov07OffsetTable {
    s16 offsets[6][6];
} Ov07OffsetTable;

extern const Ov07OffsetTable ov07_02235440;
extern const Ov07OffsetTable ov07_02235488;

int ov07_0221C468(void *a0);
int ov07_0221C470(void *a0);
int ov07_02231924(void *a0, int a1);

void ov07_02220230(Ov07_02220230 *a0) {
    s16 unused[6] = { 0, 0, 0, 0, 0, 0 };
    Ov07OffsetTable xOffsets = ov07_02235440;
    Ov07OffsetTable yOffsets = ov07_02235488;
    void *data = sub_02015504();
    int attacker = ov07_0221C468(data);
    int defender = ov07_0221C470(data);
    int attackerPos = ov07_02231924(data, attacker);
    int defenderPos = ov07_02231924(data, defender);
    int dx;
    int dy;

    dx = xOffsets.offsets[attackerPos][defenderPos] * 0xAC;
    a0->x = dx + a0->owner->coords->x;
    dy = yOffsets.offsets[attackerPos][defenderPos] * 0xAC;
    a0->y = dy + a0->owner->coords->y;
    a0->z = a0->owner->coords->z;
}
