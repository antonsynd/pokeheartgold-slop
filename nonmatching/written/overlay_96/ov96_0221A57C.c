#include "global.h"
#include "error_handling.h"

extern u32 ov96_0221D9C8[];

u8 *ov96_021E94EC(void *gfx, u8 index);

void ov96_0221A57C(u32 param_1, u32 param_2)
{
    u32 fn;
    u8 i;
    u8 *entry;
    u32 r1;
    u32 r2;
    u32 r3;
    u16 result;

    fn = ov96_0221D9C8[param_2];
    if (fn == 0) {
        GF_AssertFail();
        return;
    }

    for (i = 0; i < 4; i++) {
        entry = ov96_021E94EC((void *)param_1, i);
        __asm__ volatile("movs %0, r1" : "=l"(r1) : : "cc");
        __asm__ volatile("movs %0, r2" : "=l"(r2) : : "cc");
        __asm__ volatile("movs %0, r3" : "=l"(r3) : : "cc");
        result = ((u16 (*)(u32, u32, u32, u32))fn)(*(u32 *)(entry + 0xc) & 0xffff, r1, r2, r3);
        *(u16 *)(entry + 0xa) = result;
    }
}
