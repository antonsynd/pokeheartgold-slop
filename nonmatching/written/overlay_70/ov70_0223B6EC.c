#include "global.h"

typedef int (*Ov70Handler)(void *, void *, u32, u32);

extern Ov70Handler ov70_02246528[];
extern u8 ov70_022464FE[];
extern void ov70_02238F9C(void *sprite, int x, int y);
extern int ov70_0223C2EC(void *work);

int ov70_0223B6EC(u8 *work) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u32 *)(work + 0x2c);
    Ov70Handler fn = ov70_02246528[idx];
    int ret = fn(work, fn, idx << 2, callerR3);
    int i;
    for (i = 0; i < 8; i++) {
        ov70_02238F9C(*(void **)(work + 0xEE4 + i * 4),
                      *(s16 *)(work + 0x120C + i * 4),
                      *(int *)(work + 0xF14) + *(s16 *)(work + 0x120E + i * 4));
        ov70_02238F9C(*(void **)(work + 0xF10), 0x37, *(int *)(work + 0xF14) + 0x1A8);
    }
    int a = ov70_0223C2EC(work);
    int b = ov70_0223C2EC(work);
    ov70_02238F9C(*(void **)(work + 0xDCC),
                  *(u16 *)(ov70_022464FE + a * 6),
                  *(u16 *)(ov70_022464FE + b * 6 + 2) - *(int *)(work + 0xF14));
    return ret;
}
