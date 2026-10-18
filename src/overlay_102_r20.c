#include "global.h"

BOOL ov102_021E7A58(void *a0, int *state);
BOOL ov102_021E7C84(void *a0, int *state);

BOOL ov102_021E7D0C(void *a0, int *state) {
    if (*state == 0 && ov102_021E7A58(a0, state)) {
        return FALSE;
    }
    return ov102_021E7C84(a0, state);
}
