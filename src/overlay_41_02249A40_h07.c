#include "global.h"

typedef struct Ov41_02249B44 {
    void *view;
    int mode;
} Ov41_02249B44;

void ov41_02245FA8(void *view, int *x, int *y);
void ov41_02249780(void *view);
void ov41_022497A0(void *view, int *width, int *height);

void ov41_02249B44(Ov41_02249B44 *a0, int *x, int *y) {
    int width;
    int height;
    void *view;

    if (a0->mode < 3) {
        ov41_02245FA8(a0->view, x, y);
        return;
    }
    view = a0->view;
    ov41_02249780(view);
    ov41_022497A0(view, &width, &height);
    width /= 2;
    height /= 2;
    *x -= width;
    *y -= height;
}
