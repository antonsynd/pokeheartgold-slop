#include "global.h"

#include "system.h"

typedef struct Ov41DragState {
    u8 filler_00[4];
    void *unk04;
    u8 filler_08[8];
    void *grabbed;
    int offsetX;
    int offsetY;
} Ov41DragState;

typedef struct Ov41_022492E0 {
    Ov41DragState *state;
} Ov41_022492E0;

void ov41_02249BAC(void *obj, int *left, int *right, int *top, int *bottom);
void ov41_02249B94(void *obj, int *width, int *height);
void ov41_022495A4(Ov41_022492E0 *a0, int x, int y);
void ov41_022482B8(void *a0, int *x, int *y);

void ov41_022492E0(Ov41_022492E0 *a0) {
    int width;
    int height;
    int left;
    int top;
    int right;
    int bottom;
    Ov41DragState *state = a0->state;
    int x;
    int y;
    int y1;

    if (state->grabbed == NULL || gSystem.touchX == 0xFFFF || gSystem.touchX == 0xFFFF) {
        return;
    }
    ov41_02249BAC(state->grabbed, &left, &right, &top, &bottom);
    ov41_02249B94(state->grabbed, &width, &height);
    x = gSystem.touchX - state->offsetX;
    y = gSystem.touchY - state->offsetY;
    y1 = y + top;
    width -= right;
    height -= bottom;
    if (x + left <= 138) {
        x = 138 - left;
    } else if (x + width >= 246) {
        x = 246 - width;
    }
    if (y1 <= 18) {
        y = 18 - top;
    } else if (y + height >= 143) {
        y = 143 - height;
    }
    ov41_022495A4(a0, x, y);
    ov41_022482B8(state->unk04, &left, &top);
    ov41_022495A4(a0, x + left, y + top);
}
