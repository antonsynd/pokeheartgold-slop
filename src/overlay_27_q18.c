#include "global.h"

#include "screen_fade.h"

typedef struct Ov27Field {
    u8 filler_00[0x6C];
    void *unk6C;
    u8 filler_70[0x62];
    u8 state : 6;
    u8 unkD2_6 : 2;
} Ov27Field;

typedef struct Ov27_0225A7FC {
    u8 filler_00[0x10];
    Ov27Field *field;
} Ov27_0225A7FC;

void ov27_0225A7B0(Ov27_0225A7FC *a0);
void ov27_0225A7DC(Ov27_0225A7FC *a0);
BOOL ov27_0225B4D8(Ov27_0225A7FC *a0);
void ov27_0225B404(Ov27_0225A7FC *a0);

void ov27_0225A7FC(Ov27_0225A7FC *a0) {
    switch (a0->field->state) {
    case 0:
        ov27_0225A7B0(a0);
        break;
    case 1:
        ov27_0225A7DC(a0);
        a0->field->state = 2;
        break;
    case 2:
        if (a0->field->unk6C != NULL && IsPaletteFadeFinished() && ov27_0225B4D8(a0)) {
            ov27_0225B404(a0);
        }
        break;
    case 3:
    case 4:
    default:
        GF_ASSERT(FALSE);
        break;
    }
}
