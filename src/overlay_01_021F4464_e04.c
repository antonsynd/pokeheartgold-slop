#include "global.h"

typedef struct CaptureSetup {
    int vramBank;
    u8 filler_04[8];
    GXCaptureSize size;
    GXCaptureMode mode;
    GXCaptureSrcA srcA;
    GXCaptureSrcB srcB;
    GXCaptureDest dest;
} CaptureSetup;

void ov01_021F45E4(CaptureSetup *setup) {
    switch (setup->vramBank) {
    case 2:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_A, HW_VRAM_A_SIZE);
        break;
    case 6:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_B, HW_VRAM_B_SIZE);
        break;
    case 10:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
        break;
    case 14:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_D, HW_VRAM_D_SIZE);
        break;
    }
    GX_SetCapture(setup->size, setup->mode, setup->srcA, setup->srcB, setup->dest, 16, 0);
}
