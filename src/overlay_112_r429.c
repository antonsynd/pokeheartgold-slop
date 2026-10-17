#include "global.h"

#include "system.h"
#include "touchscreen.h"

typedef struct Ov112_021F0EFC {
    u8 filler_000[0x13D];
    u8 page;
    u8 pageCount;
} Ov112_021F0EFC;

extern const u8 ov112_021FF2DC[];

BOOL ov112_021F0EFC(Ov112_021F0EFC *a0) {
    if (a0->page < a0->pageCount - 1) {
        TouchscreenHitbox hitbox = *(const TouchscreenHitbox *)&ov112_021FF2DC[7];

        if (TouchscreenHitbox_TouchNewIsIn(&hitbox) || (gSystem.newKeys & PAD_KEY_RIGHT)) {
            return TRUE;
        }
    }
    return FALSE;
}
