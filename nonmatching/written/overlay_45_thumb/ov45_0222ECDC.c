#include "global.h"

extern u8 *_022577C0;
extern void GF_AssertFail(void);
extern u32 ov45_022303BC(void *a, u32 b);

u32 ov45_0222ECDC(int param0) {
    u32 callerR4;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    u32 v0 = callerR4;
    u8 *base;
    int ok;

    if (_022577C0 == NULL) {
        GF_AssertFail();
    }
    ok = 1;
    if (_022577C0[0x12c] != 2 && _022577C0[0x12c] != 4) {
        ok = 0;
    }
    if (ok == 0) {
        GF_AssertFail();
    }
    if (param0 >= 8) {
        GF_AssertFail();
    }

    base = _022577C0 + 0x1b4;
    switch (param0) {
    case 0:
        v0 = *(u32 *)(base + 0);
        break;
    case 1:
        v0 = *(u32 *)(base + 4);
        break;
    case 2:
        v0 = *(u8 *)(base + 0xc);
        break;
    case 3:
        v0 = *(u8 *)(base + 0xd);
        break;
    case 4: {
        u32 flags = *(u32 *)(base + 8);
        v0 = 1;
        if ((flags & 1) == 0) {
            v0 = 0;
        }
        break;
    }
    case 5:
        v0 = ov45_022303BC(base, 0x13);
        break;
    case 6:
        v0 = ov45_022303BC(base, 0x10);
        break;
    case 7:
        v0 = ov45_022303BC(base, 0x11);
        break;
    }
    return v0;
}
