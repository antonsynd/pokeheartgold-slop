#include "global.h"

BOOL ov43_0222B324(void *a0, int *a1, int a2, BOOL *flag);
BOOL ov43_0222B278(void *a0, int *a1, int a2);

BOOL ov43_0222B374(void *a0, int *a1, int a2) {
    BOOL flag = FALSE;
    BOOL ret = ov43_0222B324(a0, a1, a2, &flag);

    if (flag) {
        *a1 = 1;
        return ret;
    }
    return ov43_0222B278(a0, a1, a2);
}
