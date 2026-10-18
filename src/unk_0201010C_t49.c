#include "global.h"

typedef struct BlendPlanes {
    u8 mask : 5;
    u8 unused : 3;
} BlendPlanes;

typedef union BlendPlanesRaw {
    u8 raw;
    BlendPlanes planes;
} BlendPlanesRaw;

u8 sub_020132E8(int a0, int a1);
u8 sub_0201333C(int a0);
void sub_02013220(int mask, int a1, int a2, int a3);
void sub_020132A8(int mask, int a1, int a2);
void sub_02013440(void *base, int mask, int a2, int a3, int a4);
void sub_02013468(void *base, int mask, int a2, int a3);

void sub_02010FEC(void *a0, int a1, int a2, BOOL a3) {
    BlendPlanes planesA;
    BlendPlanes planesB;
    BlendPlanesRaw rawA;
    BlendPlanesRaw rawB;

    rawA.raw = sub_020132E8(a1, a2);
    planesA = rawA.planes;
    rawB.raw = sub_0201333C(a2);
    planesB = rawB.planes;
    if (!a3) {
        sub_02013220(planesB.mask, 0, a1, a2);
        sub_020132A8(planesA.mask, 0, a2);
    } else {
        sub_02013440(a0, planesB.mask, 0, a1, a2);
        sub_02013468(a0, planesA.mask, 0, a2);
    }
}
