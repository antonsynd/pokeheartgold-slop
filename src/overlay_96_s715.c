#include "global.h"

typedef struct Ov96_021FC164 {
    u8 filler_000[0x618];
    u8 unk618[1][0x200];
} Ov96_021FC164;

int ov96_021FC164(Ov96_021FC164 *a0, int row, int col) {
    int idx = col / 8;
    if (a0->unk618[row][idx] == 0) {
        idx = -1;
    }
    return idx;
}
