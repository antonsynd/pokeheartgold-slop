#include "global.h"

extern int _0224C040;
extern void *ov71_0224C044[32];

void ov71_02247424(void *ptr) {
    GF_ASSERT(_0224C040 < 32);
    ov71_0224C044[_0224C040++] = ptr;
}
