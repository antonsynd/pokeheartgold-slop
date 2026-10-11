#pragma warning_errors off
#include "global.h"
#pragma thumb on
void ov74_02236074(void);
void ov74_02236070(void);
#pragma force_active on
void ov74_02236074(void) {
    OS_DisableIrq();
    OS_SetIrqFunction((1UL << 13), ov74_02236070);
    OS_EnableIrqMask(1UL << 13);
    OS_EnableIrq();
}
#pragma force_active reset
