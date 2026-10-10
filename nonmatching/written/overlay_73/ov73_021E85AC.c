#include "global.h"

typedef void (*ov73_021E85AC_Handler)(u8 *work, void *handler, int offset, u32 r3);

extern int ov73_021E8440(void);
extern void sub_0203A930(int a0);
extern ov73_021E85AC_Handler ov73_021EA848[];

void ov73_021E85AC(u8 *work) {
    ov73_021E85AC_Handler handler;
    u32 r3;
    int state;

    sub_0203A930(ov73_021E8440());
    /* the asm never touches r3 between the call and the blx */
    __asm__ volatile("movs %0, r3" : "=l"(r3) : : "cc");
    state = *(int *)(work + 0x1c);
    handler = ov73_021EA848[state];
    handler(work, handler, state << 2, r3);
    if (state != *(int *)(work + 0x1c)) {
        *(u16 *)(work + 0xf90) = 0;
        *(u16 *)(work + 0xf92) = 0;
    }
}
