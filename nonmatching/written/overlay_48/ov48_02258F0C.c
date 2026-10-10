#include "global.h"

typedef struct UnkStruct_ov48_02258F0C {
    int x;
    int y;
} UnkStruct_ov48_02258F0C;

void ov48_02258F0C(UnkStruct_ov48_02258F0C *param0) {
    int v;

    if (param0->x >= 0) {
        param0->x = param0->x % 0xffff;
    } else {
        v = -param0->x;
        param0->x = param0->x + 0xffff * (v / 0xffff + 1);
    }

    if (param0->y >= 0) {
        param0->y = param0->y % 0xffff;
    } else {
        v = -param0->y;
        param0->y = param0->y + 0xffff * (v / 0xffff + 1);
    }
}
