#include "global.h"

typedef int (*Ov70Handler)(void *, void *, u32, u32);

extern Ov70Handler ov70_022464CC[];
extern void ov70_02238F9C(void *sprite, int x, int y);
extern void ov70_02241330(void *work, int a, int b);

int ov70_0223AA90(u8 *work) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u32 *)(work + 0x2c);
    Ov70Handler fn = ov70_022464CC[idx];
    int ret = fn(work, fn, idx << 2, callerR3);
    int i;
    for (i = 0; i < 8; i++) {
        ov70_02238F9C(*(void **)(work + 0xEE4 + i * 4),
                      *(s16 *)(work + 0x120C + i * 4),
                      *(int *)(work + 0xF14) + *(s16 *)(work + 0x120E + i * 4) + 0x20);
    }
    ov70_02238F9C(*(void **)(work + 0xEE0), 0xD0, 0x3A - *(int *)(work + 0xF14));
    ov70_02241330(work, *(int *)(work + 0x12C), *(int *)(work + 0xF14));
    return ret;
}
