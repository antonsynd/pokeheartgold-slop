#pragma warning_errors off
#include "global.h"
#pragma thumb on
void ov74_02236034(BOOL enable);
void ov74_02236010(void);
#pragma force_active on
void ov74_02236034(BOOL enable) {
    if (enable == 1) {
        OS_DisableIrq();
        OS_SetIrqFunction((1UL << 13), ov74_02236010);
        OS_EnableIrqMask(1UL << 13);
        OS_EnableIrq();
    } else {
        OS_DisableIrqMask(1UL << 13);
    }
}
#pragma force_active reset
