#include "global.h"

typedef struct Ov96Position {
    u8 filler_0[8];
    fx32 x;
} Ov96Position;

typedef struct Ov96_02219460 {
    u8 filler_00[4];
    Ov96Position *position;
    u8 filler_08[0x57];
    u8 state;
} Ov96_02219460;

typedef struct Ov96Input {
    u32 unk0_0 : 14;
    u32 held : 1;
    u32 locked : 1;
    u32 unk0_16 : 16;
} Ov96Input;

BOOL ov96_0221862C(Ov96_02219460 *a0);

void ov96_02219460(Ov96_02219460 *a0, Ov96Input *input, BOOL a2) {
    u8 *dest = &a0->state;
    BOOL near = (a0->position->x >> FX32_SHIFT) < 30 ? TRUE : FALSE;
    u8 state;

    if (ov96_0221862C(a0)) {
        if (near) {
            state = 1;
        } else {
            state = 0;
        }
    } else {
        state = 3;
    }
    if (!a2) {
        *dest = state;
        return;
    }
    if (input->held) {
        if (state <= 1) {
            *dest = 2;
        } else if (state == 3) {
            *dest = 4;
        } else {
            GF_ASSERT(FALSE);
        }
    } else if (!input->locked) {
        *dest = state;
    }
}
