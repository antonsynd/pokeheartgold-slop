#include "global.h"

extern int ov80_02237254(u8 challengeType);

int ov81_02242710(u8 *app) {
    return ov80_02237254(app[9]);
}
