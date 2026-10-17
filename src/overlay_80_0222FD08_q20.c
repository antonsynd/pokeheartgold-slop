#include "global.h"

typedef struct Ov80_02230b4c {
    u8 filler_00[0x4];
    u8 type;
    u8 filler_05[0x7];
    u16 species;
    u16 round;
} Ov80_02230b4c;

extern const u8 ov80_0223BDD4[];
extern const u8 ov80_0223BDE0[];

u8 ov80_02230B4C(Ov80_02230b4c *a0) {
    u8 type = a0->type;
    u16 round = a0->round;
    u8 ret;

    if (type <= 1) {
        if (round >= 8) {
            ret = 9;
        } else {
            ret = ov80_0223BDD4[round];
        }
    } else {
        if (round >= 8) {
            ret = 21;
        } else {
            ret = ov80_0223BDE0[round];
        }
    }
    if (type == 0 && (a0->species == 0x15 || a0->species == 0x31)) {
        ret = 0x14;
    }
    return ret;
}
