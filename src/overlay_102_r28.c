#include "global.h"

BOOL ov102_021E7A58(void *a0, u32 *state);
BOOL ov102_021E8178(void *a0, u32 *state);

BOOL ov102_021E821C(void *a0, u32 *state) {
    if (*state <= 1 && ov102_021E7A58(a0, state)) {
        return FALSE;
    }
    return ov102_021E8178(a0, state);
}
