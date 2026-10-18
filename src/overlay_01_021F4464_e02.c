#include "global.h"

typedef struct DisplayCaptureParams {
    u8 filler_00[0x10];
    GXCaptureSize size;
    GXCaptureMode mode;
    GXCaptureSrcA srcA;
    GXCaptureSrcB srcB;
    GXCaptureDest dest;
    int eva;
    int evb;
    u8 filler_2C[4];
    BOOL enabled;
} DisplayCaptureParams;

void ov01_021F4544(void *a0, DisplayCaptureParams *params) {
    if (params->enabled) {
        GX_SetCapture(params->size, params->mode, params->srcA, params->srcB, params->dest, params->eva, params->evb);
    }
}
