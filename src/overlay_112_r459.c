#include "global.h"

typedef struct ManagedSprite ManagedSprite;

BOOL ManagedSprite_GetDrawFlag(ManagedSprite *managedSprite);
BOOL ManagedSprite_IsAnimated(ManagedSprite *managedSprite);
int ManagedSprite_GetActiveAnim(ManagedSprite *managedSprite);
void ManagedSprite_SetAnim(ManagedSprite *managedSprite, u16 anim);

typedef struct Ov112_021F1D28 {
    u8 filler_00[0x70];
    ManagedSprite *sprites[1];
} Ov112_021F1D28;

void ov112_021F1D28(Ov112_021F1D28 *a0, int idx) {
    if (ManagedSprite_GetDrawFlag(a0->sprites[idx]) && !ManagedSprite_IsAnimated(a0->sprites[idx])) {
        u16 anim = ManagedSprite_GetActiveAnim(a0->sprites[idx]) + 1;
        ManagedSprite_SetAnim(a0->sprites[idx], anim);
    }
}
