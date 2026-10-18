#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "sprite_system.h"

typedef struct Ov95_021E7258 {
    u8 filler_00[0x10];
    ManagedSprite *sprite;
    u8 filler_14[4];
    u8 state;
    u8 result;
} Ov95_021E7258;

BOOL ov95_021E7450(Ov95_021E7258 *a0);
BOOL ov95_021E7514(Ov95_021E7258 *a0);

int ov95_021E7258(Ov95_021E7258 *a0) {
    switch (a0->state) {
    case 0:
        if (ov95_021E7450(a0)) {
            a0->state++;
        }
        break;
    case 1:
        if (ov95_021E7514(a0)) {
            GF_ASSERT(a0->result != 0);
            ToggleBgLayer(GF_BG_LYR_SUB_1, GF_PLANE_TOGGLE_OFF);
            ToggleBgLayer(GF_BG_LYR_SUB_2, GF_PLANE_TOGGLE_OFF);
            ManagedSprite_SetDrawFlag(a0->sprite, FALSE);
            GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_OFF);
            return a0->result;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
    return 0;
}
