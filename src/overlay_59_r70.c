#include "global.h"

int ov59_0223A2D0(void *a0, int *out);
int ov59_0223A268(void *a0);

int ov59_02239F18(void *a0) {
    int result = 0;
    int ret = ov59_0223A2D0(a0, &result);

    if (result == 0) {
        ret = ov59_0223A268(a0);
    }
    return ret;
}
