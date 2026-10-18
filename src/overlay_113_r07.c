#include "global.h"

#include "sound_02004A44.h"
#include "unk_020210A0.h"

typedef struct Ov113_021E5B70 {
    u8 filler_00[0x10];
    u16 state;
} Ov113_021E5B70;

void ov113_021E5CF8(Ov113_021E5B70 *a0);
void ov113_021E5D4C(Ov113_021E5B70 *a0);

BOOL ov113_021E5B70(Ov113_021E5B70 *a0) {
    switch (a0->state) {
    case 0:
        ov113_021E5CF8(a0);
        a0->state++;
        break;
    case 1:
        ov113_021E5D4C(a0);
        sub_020210BC();
        sub_02021148(1);
        Sound_SetSceneAndPlayBGM(0x45, 0, 0);
        a0->state = 0;
        return TRUE;
    }
    return FALSE;
}
