#include "global.h"

typedef struct Ov01DirTable {
    u32 values[4];
} Ov01DirTable;

extern const Ov01DirTable ov01_02209720;
extern const Ov01DirTable ov01_02209730;
extern const Ov01DirTable ov01_02209740;
extern const Ov01DirTable ov01_02209710;

u32 ov01_0220542C(int index, u32 value) {
    Ov01DirTable tableA = ov01_02209720;
    Ov01DirTable tableB = ov01_02209730;
    Ov01DirTable tableC = ov01_02209740;
    Ov01DirTable tableD = ov01_02209710;
    u8 i;

    for (i = 0; i < 4; i++) {
        if (value == tableA.values[i]) {
            return tableB.values[index];
        }
    }
    for (i = 0; i < 4; i++) {
        if (value == tableB.values[i]) {
            return tableC.values[index];
        }
    }
    for (i = 0; i < 4; i++) {
        if (value == tableC.values[i]) {
            return tableD.values[index];
        }
    }
    GF_ASSERT(FALSE);
    return 0;
}
