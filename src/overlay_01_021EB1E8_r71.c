#include "global.h"

typedef struct Ov01_021EC828 {
    u8 filler_00[4];
    u8 unk04[0x20];
    int unk24;
    u8 filler_28[6];
    s16 unk2E;
} Ov01_021EC828;

void ov01_021EC828(Ov01_021EC828 *a0) {
    int i;
    int limit;
    int value;

    if (a0->unk2E < 0) {
        value = 0x7F - a0->unk24;
    } else {
        value = a0->unk24;
    }
    limit = value / 4;
    for (i = 31; i > limit; i--) {
        a0->unk04[i] = (i - limit) * 4;
    }
}
