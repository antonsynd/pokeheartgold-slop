#include "global.h"

void sub_02032858(u32 errcode);

void sub_020331A4(void *wm_portsendcallback)
{
    u32 r3Entry;
    u8 *callback = (u8 *)wm_portsendcallback;
    u16 errcode;
    u32 fn;

    __asm__ volatile("movs %0, r3" : "=l"(r3Entry) : : "cc");

    errcode = *(u16 *)(callback + 2);
    if (errcode != 0 && errcode != 0xf) {
        sub_02032858(errcode);
        return;
    }

    fn = *(u32 *)(callback + 0x20);
    if (fn != 0) {
        ((void (*)(u32, u32, u32, u32))fn)((u32)(errcode == 0), (u32)errcode, fn, r3Entry);
    }
}
