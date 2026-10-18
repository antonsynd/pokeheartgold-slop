#include "global.h"

typedef struct Ov96_02218744 {
    u8 filler_00[0x14];
    int state;
    u8 filler_18[0x48];
    u32 unk60_0 : 26;
    u32 finished : 1;
    u32 unk60_27 : 5;
} Ov96_02218744;

BOOL ov96_02218744(Ov96_02218744 *a0) {
    GF_ASSERT(a0 != NULL);
    GF_ASSERT(a0->state != 0);

    BOOL result = FALSE;
    BOOL notFour = FALSE;
    BOOL running = FALSE;
    int state = a0->state;

    if (state != 10 && !a0->finished) {
        running = TRUE;
    }
    if (running && state != 4) {
        notFour = TRUE;
    }
    if (notFour && state != 3) {
        result = TRUE;
    }
    return result;
}
