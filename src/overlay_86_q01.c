#include "global.h"

#include "overlay_manager.h"
#include "sprite_system.h"

typedef struct Ov86_021E5A40 {
    u8 filler_000[0x230];
    SpriteManager *spriteManager;
} Ov86_021E5A40;

BOOL ov86_021E5B38(Ov86_021E5A40 *data);
BOOL ov86_021E5BA0(Ov86_021E5A40 *data);
BOOL ov86_021E5C94(Ov86_021E5A40 *data);
void ov86_021E5E90(Ov86_021E5A40 *data, int *state, int nextState);
void ov86_021E703C(Ov86_021E5A40 *data);

BOOL ov86_021E5A40(OverlayManager *man, int *state) {
    Ov86_021E5A40 *data = OverlayManager_GetData(man);

    switch (*state) {
    case 0:
        if (ov86_021E5B38(data) == TRUE) {
            ov86_021E5E90(data, state, 1);
        }
        break;
    case 1:
        if (ov86_021E5BA0(data) == TRUE) {
            ov86_021E5E90(data, state, 2);
        }
        break;
    case 2:
        if (ov86_021E5C94(data) == TRUE) {
            return TRUE;
        }
        break;
    }
    ov86_021E703C(data);
    SpriteSystem_DrawSprites(data->spriteManager);
    return FALSE;
}
