#include "global.h"

#include "gf_gfx_planes.h"

extern const GraphicsBanks ov41_0224C06C;

void ov41_022466D0(void) {
    GraphicsBanks banks = ov41_0224C06C;
    GfGfx_SetBanks(&banks);
}
