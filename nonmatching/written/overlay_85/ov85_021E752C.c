#include "global.h"

extern const u32 ov85_021EA5C4[];
extern const u32 ov85_021EA5DC[];

extern void sub_020696C4(void *a, u32 b, void *narc, u32 c, u32 heapId, u32 d);
extern void sub_02069714(void *a);
extern void sub_02069978(void *a, void *b);

void ov85_021E752C(u8 *p) {
    u8 *v2 = p + 0xd4;
    u32 idx = *(u32 *)(*(u8 **)(p + 0xcc) + 8);
    u32 *src;
    u32 *dst;
    u32 a;
    u32 b;
    u32 c;

    sub_020696C4(v2 + 0x54, 0, *(void **)(p + 0xd80), ov85_021EA5C4[idx], 0x66, 0);
    sub_02069714(v2 + 0x54);
    sub_02069978(v2 + 0x68, v2 + 0x54);

    *(u32 *)(v2 + 0x3c) = 0;
    *(u32 *)(v2 + 0x44) = ov85_021EA5DC[idx];
    *(u32 *)(v2 + 0x18) = 0x1000;
    *(u32 *)(v2 + 0x1c) = 0x1000;
    *(u32 *)(v2 + 0x20) = 0x1000;
    *(u16 *)(v2 + 0x4c) = 0;
    *(u16 *)(v2 + 0x4e) = 0;
    *(u16 *)(v2 + 0x50) = 0;
    *(u32 *)(v2 + 0) = 0;
    *(u32 *)(v2 + 4) = 0xfffdc000;
    *(u32 *)(v2 + 8) = 0;

    /* v2->unk_0C = v2->unk_00, as the asm does it: ldmia/stmia of two words, then ldr/str of the third */
    src = (u32 *)v2;
    dst = (u32 *)(v2 + 0xc);
    __asm__ volatile(
        "ldmia %[src]!, {%[a], %[b]}\n\t"
        "stmia %[dst]!, {%[a], %[b]}\n\t"
        "ldr %[c], [%[src]]\n\t"
        "str %[c], [%[dst]]"
        : [src] "+l"(src), [dst] "+l"(dst), [a] "=&l"(a), [b] "=&l"(b), [c] "=&l"(c)
        :
        : "memory");
}
