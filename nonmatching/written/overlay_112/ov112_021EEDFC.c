#include "global.h"

typedef int (*UnkFunc_ov112_021EEDFC)(u8 *work, void *fn, u32 r2, u32 r3);
extern void *ov112_021FF8F8[];

int ov112_021EEDFC(u8 *work) {
    u32 r3; /* the asm passes the caller's r3 on to the handler unchanged */
    __asm__ volatile("movs %0, r3" : "=l"(r3) : : "cc");
    u32 idx4 = *(u32 *)(work + 8) << 2;
    void *fn = *(void **)((u8 *)ov112_021FF8F8 + idx4);
    int next = ((UnkFunc_ov112_021EEDFC)fn)(work, fn, idx4, r3);
    *(int *)(work + 8) = next;
    if (next == 11) {
        *(int *)(work + 8) = 0;
        return 3;
    }
    return 2;
}
