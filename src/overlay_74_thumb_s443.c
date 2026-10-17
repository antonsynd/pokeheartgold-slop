#include "global.h"

void ov74_02236010(void) {
    if (PAD_DetectFold() == FALSE) {
        if (CTRDG_IsAgbCartridge() == FALSE) {
            CTRDG_TerminateForPulledOut();
        }
    }
}
