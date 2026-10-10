#include "global.h"

void ov96_021EABA8(void *obj, u32 a1);

typedef struct UnkPair_ov96_022144C0 {
    u8 *key;
    u8 *entry;
} UnkPair_ov96_022144C0;

void ov96_022144C0(u8 *param_1, u8 *param_2)
{
    UnkPair_ov96_022144C0 pairs[3];
    UnkPair_ov96_022144C0 *slots[3];
    UnkPair_ov96_022144C0 *hi;
    UnkPair_ov96_022144C0 *lo;
    u32 i;

    for (i = 0; i < 3; i++) {
        pairs[i].key = param_2 + i;
        pairs[i].entry = param_1 + 0x7c * i;
    }

    if (*pairs[0].key >= *pairs[1].key) {
        hi = &pairs[0];
        lo = &pairs[1];
    } else {
        hi = &pairs[1];
        lo = &pairs[0];
    }

    if (*hi->key < *pairs[2].key) {
        slots[0] = &pairs[2];
        slots[1] = hi;
        slots[2] = lo;
    } else if (*lo->key < *pairs[2].key) {
        slots[0] = hi;
        slots[1] = &pairs[2];
        slots[2] = lo;
    } else {
        slots[0] = hi;
        slots[1] = lo;
        slots[2] = &pairs[2];
    }

    for (i = 0; i < 3; i++) {
        ov96_021EABA8(*(void **)(slots[i]->entry), i + 8);
    }
}
