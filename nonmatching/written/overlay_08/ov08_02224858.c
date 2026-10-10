#include "global.h"

/* Declared with full-width parameters: when the mode is not 0..2 the asm
   passes the raw r3 argument and the caller's r7 through unchanged. */
extern void ScrollWindow(void *window, u32 direction, u32 y, u32 fillValue);
extern void ScheduleWindowCopyToVram(void *window);
extern const u8 *const ov08_02225EE0[];

void ov08_02224858(u8 *a, u32 idx, int mode, u32 dir) {
    u32 callerR7;
    const u8 *list;
    u32 amount;
    u32 i;
    __asm__ volatile("movs %0, r7" : "=l"(callerR7) : : "cc");
    amount = callerR7;
    if (idx >= 6 && idx <= 11 && a[0x31] == 0) {
        list = ov08_02225EE0[idx + 11];
    } else {
        list = ov08_02225EE0[idx];
    }
    if (list == NULL) {
        return;
    }
    if (mode == 0 || mode == 2) {
        dir = 1;
        amount = 2;
    } else if (mode == 1) {
        dir = 0;
        amount = 4;
    }
    for (i = 0; i < 8; i++) {
        if (list[i] == 0xFF) {
            return;
        }
        ScrollWindow(*(u8 **)(a + 0x2c) + list[i] * 16, dir, amount, 0);
        ScheduleWindowCopyToVram(*(u8 **)(a + 0x2c) + list[i] * 16);
    }
}
