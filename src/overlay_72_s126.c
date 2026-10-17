#include "global.h"

int ov72_0223A738(void *a0);
void ov72_0223AA9C(void *a0);
void ov72_0223A8F0(void *a0, int a1);
void ov72_0223ABB0(void *a0);

BOOL ov72_0223AB84(void *a0) {
    int ret = ov72_0223A738(a0);

    if (ret == -1) {
        ov72_0223AA9C(a0);
    } else {
        ov72_0223A8F0(a0, ret);
    }
    ov72_0223ABB0(a0);
    return FALSE;
}
