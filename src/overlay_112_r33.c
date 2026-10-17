#include "global.h"

extern OSMutex ov112_021FFB08;
extern OSThread ov112_021FFBD8;

void ov112_021E7464(void) {
    OS_LockMutex(&ov112_021FFB08);
    OS_KillThread(&ov112_021FFBD8, NULL);
    OS_UnlockMutex(&ov112_021FFB08);
}
