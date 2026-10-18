#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"

extern const GraphicsModes _0224BF94;

void ov41_02246778(void) {
    GraphicsModes modes = _0224BF94;

    SetBothScreensModesAndDisable(&modes);
    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    NNS_G2dInitOamManagerModule();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
}
