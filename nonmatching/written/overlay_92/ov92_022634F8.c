#include "global.h"

// Converts a 4x4 matrix of f32 to fx32, rounding away from zero.
void ov92_022634F8(f32 *in, int *out) {
    int i;

    for (i = 0; i < 16; i++) {
        if (in[i] > 0.0f) {
            out[i] = (int)(4096.0f * in[i] + 0.5f);
        } else {
            out[i] = (int)(4096.0f * in[i] - 0.5f);
        }
    }
}
