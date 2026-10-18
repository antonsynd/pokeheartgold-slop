#include "global.h"

typedef struct Ov99Record {
    u16 values[4];
    u8 filler_08[0x24];
} Ov99Record;

typedef struct Ov99_021E5BD8 {
    Ov99Record *records;
} Ov99_021E5BD8;

u16 ov99_021E5BD8(Ov99_021E5BD8 *a0, int index, int field) {
    GF_ASSERT(a0 != NULL);
    if (field == 3) {
        u16 value = a0->records[index].values[3] - a0->records[index].values[0];

        value -= a0->records[index].values[1];
        value -= a0->records[index].values[2];
        return value;
    }
    return a0->records[index].values[field];
}
