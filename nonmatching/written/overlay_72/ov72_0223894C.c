#include "global.h"

typedef int (*Ov72Handler)(void *, void *, u32, u32);

extern Ov72Handler ov72_0223B660[];
extern void *ov72_022387C4(void);
extern void sub_0203A930(void *);

void ov72_0223894C(u8 *work) {
    u32 r3v;
    sub_0203A930(ov72_022387C4());
    __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
    u32 idx = *(u32 *)(work + 0x1c);
    Ov72Handler fn = ov72_0223B660[idx];
    fn(work, fn, idx << 2, r3v);
    if (idx != *(u32 *)(work + 0x1c)) {
        *(u16 *)(work + 0xfd0) = 0;
        *(u16 *)(work + 0xfd2) = 0;
    }
}
