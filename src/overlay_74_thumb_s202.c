#include "global.h"

WMScanParam *ov74_022310C4(void);

void ov74_0222FFAC(void) {
    WMScanParam *param = ov74_022310C4();
    u16 allowed;
    s32 i;

    allowed = WM_GetAllowedChannel();
    if (allowed == 0) {
        return;
    }
    for (i = 0; i < 16; i++) {
        if (allowed & (0x1 << ((param->channel + i) % 16))) {
            param->channel = (u16)(((param->channel + i) % 16) + 1);
            break;
        }
    }
}
