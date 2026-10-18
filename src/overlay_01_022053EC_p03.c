#include "global.h"

typedef struct Ov01_02209750 {
    u32 values[3][16];
} Ov01_02209750;

extern const Ov01_02209750 ov01_02209750;

BOOL ov01_02205584(void *a0);
int sub_020659A8(void *a0);
int sub_0206599C(void *a0);

u32 ov01_022054E0(void *a0) {
    Ov01_02209750 table = ov01_02209750;
    int col;
    u8 row;

    if (ov01_02205584(a0)) {
        return 0;
    }
    row = sub_020659A8(a0);
    if (row == 0) {
        return 0;
    }
    col = sub_0206599C(a0);
    GF_ASSERT(col < 16);
    return table.values[(u8)(row - 1)][col];
}
