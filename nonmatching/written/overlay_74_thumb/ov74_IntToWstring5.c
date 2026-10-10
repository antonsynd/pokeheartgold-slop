#include "global.h"

void ov74_IntToWstring5(u16 *dest, int id) {
    dest[0] = id / 10000 + 48;
    id = id % 10000;
    dest[1] = id / 1000 + 48;
    id = id % 1000;
    dest[2] = id / 100 + 48;
    id = id % 100;
    dest[3] = id / 10 + 48;
    id = id % 10;
    dest[4] = id + 48;
}
