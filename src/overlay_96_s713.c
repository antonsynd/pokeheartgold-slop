#include "global.h"

typedef struct Ov96_021FC0FC {
    u8 filler_000[0x618];
    u8 unk618[3][0x200];
    int unkC18[3];
} Ov96_021FC0FC;

void ov96_021FBF90(Ov96_021FC0FC *a0, int row, int rem);

void ov96_021FC0FC(Ov96_021FC0FC *a0, int pos, int row) {
    int idx = pos / 8;
    int rem;

    if (idx != 0) {
        rem = pos - idx * 8;
        idx = idx - 1;
        if (idx < 0x200 && a0->unk618[row][idx] != 0 && a0->unkC18[row] < idx) {
            a0->unkC18[row] = idx;
            ov96_021FBF90(a0, row, rem);
        }
    }
}
