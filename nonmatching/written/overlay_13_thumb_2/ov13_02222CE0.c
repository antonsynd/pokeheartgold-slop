#include "global.h"

extern OSMessageQueue ov13_0224DDA0;
extern u32 ov13_0224DD80[];

int ov13_022235DC(void);

s32 ov13_02222CE0(void) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 msg = callerR3;
    s32 result = -1;
    BOOL keepGoing = TRUE;
    u32 irq;

    if (ov13_0224DD80[3] == 0) {
        return -1;
    }
    if (ov13_022235DC() == 0) {
        return -1;
    }
    do {
        OS_ReceiveMessage(&ov13_0224DDA0, (OSMessage *)&msg, OS_MESSAGE_BLOCK);
        switch (msg) {
        case 4:
        case 5:
            break;
        case 0x14:
            keepGoing = FALSE;
            result = 0;
            ((void (*)(u32, u32))ov13_0224DD80[3])(ov13_0224DD80[2], ov13_0224DD80[3]);
            break;
        default:
            keepGoing = FALSE;
            break;
        }
    } while (keepGoing);
    irq = OS_DisableInterrupts();
    ov13_0224DD80[0] = 0;
    ov13_0224DD80[3] = 0;
    OS_RestoreInterrupts(irq);
    return result;
}
