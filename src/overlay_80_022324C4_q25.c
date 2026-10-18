#include "global.h"

typedef struct Ov80_02233648 {
    u8 filler_00[0x10];
    u8 type;
    u8 filler_11[0x3];
    u16 species;
    u16 round;
} Ov80_02233648;

extern const u8 ov80_0223BE54[];
extern const u8 ov80_0223BE60[];

u8 ov80_02233648(Ov80_02233648 *a0) {
    u8 type = a0->type;
    u16 round = a0->round;
    u8 ret;

    if (type <= 1) {
        if (round >= 8) {
            ret = 7;
        } else {
            ret = ov80_0223BE54[round];
        }
    } else {
        if (round >= 8) {
            ret = 18;
        } else {
            ret = ov80_0223BE60[round];
        }
    }
    if (type == 0 && (a0->species == 0x15 || a0->species == 0x31)) {
        ret = 0x14;
    }
    return ret;
}
