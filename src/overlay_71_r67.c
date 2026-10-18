#include "global.h"

#include "gf_3d_vramman.h"
#include "pokepic.h"

typedef struct Ov71_02247ED0 {
    u8 filler_00[0xC];
    PokepicManager *pokepicManager;
} Ov71_02247ED0;

void ov71_02247ED0(Ov71_02247ED0 *a0) {
    NNSGfdTexKey texKey;
    NNSGfdPlttKey plttKey;

    NNS_G3dInit();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_SetClearColor(RGB_BLACK, 0, 0x7FFF, 0x3F, FALSE);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);
    GF_3DVramMan_InitFrameTexVramManager(1, TRUE);
    GF_3DVramMan_InitFramePlttVramManager(0x4000, TRUE);
    texKey = NNS_GfdAllocTexVram(0x4000, FALSE, 0);
    plttKey = NNS_GfdAllocPlttVram(0x80, FALSE, NNS_GFD_ALLOC_FROM_LOW);
    PokepicManager_SetCharBaseAddrAndSize(a0->pokepicManager, NNS_GfdGetTexKeyAddr(texKey), NNS_GfdGetTexKeySize(texKey));
    PokepicManager_SetPlttBaseAddrAndSize(a0->pokepicManager, NNS_GfdGetPlttKeyAddr(plttKey), NNS_GfdGetPlttKeySize(plttKey));
}
