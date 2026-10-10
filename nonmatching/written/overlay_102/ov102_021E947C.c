#include "global.h"

extern void *SysTask_GetData(void *task);

BOOL ov102_021E947C(u8 *a0, int a1) {
    int i;
    for (i = 0; i < 4; i++) {
        void *task = *(void **)(a0 + 8 + i * 4);
        if (task != NULL) {
            u8 *data = SysTask_GetData(task);
            if (*(int *)(data + 0xc) == a1) {
                return 0;
            }
        }
    }
    return 1;
}
