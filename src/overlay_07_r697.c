#include "global.h"

typedef struct Ov07List6 {
    u32 values[6];
} Ov07List6;

typedef struct Ov07List3 {
    u32 values[3];
} Ov07List3;

extern const Ov07List3 ov07_0223717C;
extern const Ov07List6 ov07_02237188;

BOOL ov07_02232580(u32 value) {
    Ov07List6 list = ov07_02237188;
    BOOL ret = FALSE;
    u32 i;

    for (i = 0; i < 6; i++) {
        if (value == list.values[i]) {
            ret = TRUE;
            break;
        }
    }
    return ret;
}

BOOL ov07_022325BC(u32 value) {
    Ov07List3 list = ov07_0223717C;
    BOOL ret = TRUE;
    u32 i;

    for (i = 0; i < 3; i++) {
        if (value == list.values[i]) {
            ret = FALSE;
            break;
        }
    }
    return ret;
}
