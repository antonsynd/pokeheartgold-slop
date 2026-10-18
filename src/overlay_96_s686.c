#include "global.h"

typedef struct Ov96_021FB8B4 {
    void *unk0;
} Ov96_021FB8B4;

void ov96_021EB10C(void *a0, f32 scaleX, f32 scaleY);

void ov96_021FB8B4(Ov96_021FB8B4 *a0, int value) {
    f32 scale;

    if (value < 0) {
        value = 0;
    }
    scale = (100.0 + 2.0 * value) / 100.0;
    ov96_021EB10C(a0->unk0, scale, scale);
}
