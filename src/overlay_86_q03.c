#include "global.h"

#include "screen_fade.h"

typedef struct Ov86_021E5B38 {
    u8 filler_0[4];
    u8 subState;
} Ov86_021E5B38;

BOOL ov86_021E71FC(Ov86_021E5B38 *a0);
void ov86_021E720C(Ov86_021E5B38 *a0);
void ov86_021E60B8(Ov86_021E5B38 *a0);

BOOL ov86_021E5B38(Ov86_021E5B38 *a0) {
    switch (a0->subState) {
    case 0:
        if (ov86_021E71FC(a0) == TRUE) {
            ov86_021E720C(a0);
        } else {
            ov86_021E60B8(a0);
        }
        a0->subState++;
        break;
    case 1:
        BeginNormalPaletteFade(0, 1, 1, RGB_BLACK, 6, 3, HEAP_ID_121);
        a0->subState++;
        break;
    case 2:
        if (IsPaletteFadeFinished() == TRUE) {
            return TRUE;
        }
        break;
    }
    return FALSE;
}
