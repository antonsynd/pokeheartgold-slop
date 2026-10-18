#include "global.h"

#include "gf_gfx_planes.h"
#include "screen_fade.h"
#include "system.h"

typedef struct Ov67_021E5A6C {
    u8 filler_0[4];
    int state;
    u16 unk8;
} Ov67_021E5A6C;

void ov67_021E5BC0(void);
void ov67_021E5BE0(void *data);
void ov67_021E5DA0(Ov67_021E5A6C *a0);
void ov67_021E5EB0(Ov67_021E5A6C *a0);
void ov67_021E60B4(Ov67_021E5A6C *a0);
void ov67_021E6820(Ov67_021E5A6C *a0);
void ov67_021E6008(Ov67_021E5A6C *a0);
void ov67_021E6220(Ov67_021E5A6C *a0);
void ov67_021E63E8(Ov67_021E5A6C *a0);
void ov67_021E65C0(Ov67_021E5A6C *a0);
void ov67_021E681C(Ov67_021E5A6C *a0);
void ov67_021E6BC4(Ov67_021E5A6C *a0);

BOOL ov67_021E5A6C(Ov67_021E5A6C *a0) {
    switch (a0->state) {
    case 0:
        Main_SetVBlankIntrCB(NULL, NULL);
        HBlankInterruptDisable();
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
        ov67_021E5BC0();
        ResetVisibleHardwareWindows(PM_LCD_TOP);
        ResetVisibleHardwareWindows(PM_LCD_BOTTOM);
        ov67_021E5DA0(a0);
        break;
    case 1:
        ov67_021E5EB0(a0);
        ov67_021E60B4(a0);
        break;
    case 2:
        ov67_021E6820(a0);
        break;
    case 3:
        ov67_021E6008(a0);
        if (a0->unk8 == 0) {
            ov67_021E6220(a0);
        } else {
            ov67_021E63E8(a0);
            ov67_021E65C0(a0);
            ov67_021E681C(a0);
            ov67_021E6BC4(a0);
        }
        break;
    case 4:
        Main_SetVBlankIntrCB(ov67_021E5BE0, a0);
        a0->state = 0;
        return TRUE;
    }
    a0->state++;
    return FALSE;
}
