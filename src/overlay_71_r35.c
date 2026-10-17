#include "global.h"

#include "heap.h"

extern int _0224C040;
extern void *ov71_0224C044[32];

void ov71_022473F0(void) {
    int i;

    if (_0224C040 != 0) {
        for (i = 0; i < _0224C040; i++) {
            Heap_Free(ov71_0224C044[i]);
        }
        _0224C040 = 0;
    }
}
