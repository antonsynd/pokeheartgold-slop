#include "global.h"

typedef int (*Ov70Handler)(void *, void *, u32, u32);

extern Ov70Handler ov70_02246780[];
extern void *ov70_02238E44(void);
extern void sub_0203A930(void *);

void ov70_02244124(u8 *work) {
    u32 r3v;
    sub_0203A930(ov70_02238E44());
    __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
    u32 idx = *(u32 *)(work + 0x2c);
    Ov70Handler fn = ov70_02246780[idx];
    fn(work, fn, idx << 2, r3v);
    if (idx != *(u32 *)(work + 0x2c)) {
        *(u16 *)(work + 0x1600) = 0;
        *(u16 *)(work + 0x1602) = 0;
    }
}
