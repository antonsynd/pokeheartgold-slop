#include "global.h"

#include "unk_0201956C.h"

typedef struct Ov14Sub {
    u8 filler_000[0x10];
    u16 state;
    u8 filler_012[0x2DE];
    UnkStruct_0201956C *tilemaps;
} Ov14Sub;

typedef struct Ov14_021EA180 {
    u8 filler_00[0x34];
    Ov14Sub *sub;
} Ov14_021EA180;

BOOL ov14_021E9F20(Ov14_021EA180 *a0);
BOOL ov14_021E9434(Ov14_021EA180 *a0);
BOOL sub_02019978(UnkStruct_0201956C *a0, int a1);

BOOL ov14_021EA180(Ov14_021EA180 *a0) {
    Ov14Sub *sub = a0->sub;
    BOOL busyA;
    BOOL busyB;
    BOOL busyC;

    switch (sub->state) {
    case 0:
        busyA = ov14_021E9F20(a0);
        busyB = ov14_021E9434(a0);
        if (!busyA && !busyB) {
            sub->state++;
        }
        break;
    case 1:
        busyA = sub_02019978(a0->sub->tilemaps, 8);
        busyB = sub_02019978(a0->sub->tilemaps, 9);
        busyC = sub_02019978(a0->sub->tilemaps, 10);
        if (!busyA && !busyB && !busyC) {
            sub->state = 0;
            return FALSE;
        }
        break;
    }
    return TRUE;
}
