#include "global.h"

#include "constants/sndseq.h"

#include "sound_02004A44.h"
#include "sprite_system.h"
#include "system.h"
#include "touchscreen.h"

typedef struct Ov112_021F0E60 {
    u8 filler_00[0x78];
    ManagedSprite *unk78;
} Ov112_021F0E60;

extern const u8 ov112_021FF2DC[];

BOOL ov112_021F0E60(Ov112_021F0E60 *a0) {
    TouchscreenHitbox hitbox = *(const TouchscreenHitbox *)&ov112_021FF2DC[0xB];

    if (TouchscreenHitbox_TouchNewIsIn(&hitbox) || (gSystem.newKeys & PAD_BUTTON_B)) {
        PlaySE(SEQ_SE_DP_SELECT);
        ManagedSprite_ResetSpriteAnimCtrlState(a0->unk78);
        return TRUE;
    }
    return FALSE;
}
