#include "global.h"

extern u16 *ov99_021E728C(u8 *data, u32 *count);
extern void GF_AssertFail(void);
extern u8 ov99_021E7180(u8 *data, u32 species);

/* The count slot is the stack word the prologue's push of r3 left, so it starts as the
 * caller's r3 (ov99_021E728C fills it in). */
void ov99_021E72C0(u8 *data) {
    u32 r3;
    __asm__ volatile("movs %0, r3" : "=l"(r3) : : "cc");
    u32 n = r3;
    u32 i;
    u32 w;
    u32 cnt;

    *(u16 **)(data + 0x3f0) = ov99_021E728C(data, &n);
    for (i = 0; i < n; i++) {
        u16 species = (*(u16 **)(data + 0x3f0))[i];
        if (species == 0 || species > 0x1ed) {
            GF_AssertFail();
        }
        if (ov99_021E7180(data, species)) {
            w = *(u32 *)(data + 0x3f4);
            *(u16 *)(data + 0x14 + ((w >> 5) & 0x1ff) * 2) = species;
            w = *(u32 *)(data + 0x3f4);
            *(u32 *)(data + 0x3f4) = (w & 0xFFFFC01F) | (((((w >> 5) & 0x1ff) + 1) & 0x1ff) << 5);
        }
    }
    w = *(u32 *)(data + 0x3f4);
    cnt = (w >> 5) & 0x1ff;
    if (cnt != 0) {
        w = (w & ~0x1fu) | ((cnt / 30) & 0x1f);
        *(u32 *)(data + 0x3f4) = w;
        w = *(u32 *)(data + 0x3f4);
        if (((w >> 5) & 0x1ff) % 30 == 0) {
            *(u32 *)(data + 0x3f4) = (w & ~0x1fu) | (((w & 0x1f) - 1) & 0x1f);
        }
    }
}
