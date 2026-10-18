#include "global.h"

#include "touchscreen.h"

typedef struct Ov57Placed {
    BOOL active;
    u8 sealId;
    u8 x;
    u8 y;
    u8 filler_7[9];
} Ov57Placed;

typedef struct Ov57_02237FAC {
    u8 filler_000[0x34C];
    Ov57Placed placed[8];
    u8 filler_3CC[0x84];
    u8 sealIds[8];
} Ov57_02237FAC;

void ov57_02238260(Ov57_02237FAC *a0, u8 index);
void ov57_02238044(Ov57_02237FAC *a0, u8 index);

int ov57_02237FAC(Ov57_02237FAC *a0, int slot) {
    int i;
    u32 x;
    u32 y;

    for (i = 0; i < 8; i++) {
        if (a0->placed[i].active != TRUE) {
            a0->placed[i].sealId = a0->sealIds[slot];
            a0->placed[i].x = 190;
            a0->placed[i].y = 70;
            System_GetTouchHeldCoords(&x, &y);
            a0->placed[i].x = x;
            a0->placed[i].y = y;
            ov57_02238260(a0, i);
            ov57_02238044(a0, i);
            a0->placed[i].active = TRUE;
            return i;
        }
    }
    return 0xFF;
}
