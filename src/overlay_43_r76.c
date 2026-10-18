#include "global.h"

BOOL ov43_0222BEEC(void *a0, int *a1, int a2, BOOL *flag);
BOOL ov43_0222BD18(void *a0, int *a1, int a2);

BOOL ov43_0222BFA4(void *a0, int *a1, int a2) {
    BOOL flag = FALSE;
    BOOL ret = ov43_0222BEEC(a0, a1, a2, &flag);

    if (flag) {
        *a1 = 1;
        return ret;
    }
    return ov43_0222BD18(a0, a1, a2);
}
