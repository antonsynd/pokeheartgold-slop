#include "global.h"

typedef struct Ov96Gauge {
    f32 value;
    u8 filler_04[4];
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 filler_0B[0x11];
} Ov96Gauge;

typedef struct Ov96_021FF6DC {
    u8 filler_00[0x24];
    Ov96Gauge gauges[4];
    u8 filler_94[0x11];
    u8 unkA5;
} Ov96_021FF6DC;

f32 ov96_021FF6DC(Ov96_021FF6DC *a0, int index) {
    if (a0->unkA5 != 0) {
        return a0->gauges[index].unk8;
    }
    if (a0->gauges[index].value <= 40.0) {
        return a0->gauges[index].unk9;
    } else {
        return a0->gauges[index].unkA;
    }
}
