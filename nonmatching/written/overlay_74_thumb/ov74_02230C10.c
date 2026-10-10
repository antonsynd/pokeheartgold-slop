#include "global.h"

extern u8 *ov74_02231184(void);
extern u8 *ov74_0223115C(void);
extern void ov74_022312C0(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4);
extern u32 ov74_02231260(void);
extern void ov74_02230A4C(u32 a0, u32 a1, u16 mask);
extern int ov74_02230A74(void);

void ov74_02230C10(void) {
    u8 *v0 = ov74_02231184();
    u8 *entries;
    int i;
    u16 shift;
    u16 mask;
    u32 count;
    u32 word;

    if (v0[0x19] != 0) {
        return;
    }

    if (v0[0x1c] == 0xfd) {
        entries = ov74_0223115C();
        for (i = 0; i < 8; i++) {
            u8 *entry = entries + i * 0xc;

            if (entry[9] != 0) {
                shift = *(u16 *)(entry + 6);
                mask = 1 << shift;
                ov74_022312C0(*(u32 *)(v0 + 8), *(u32 *)(v0 + 4), 0, 0, 0xfd);
                ov74_02230A4C(*(u32 *)(v0 + 8), ov74_02231260(), mask);
                entry[9]--;
                return;
            }
        }
        v0[0x1a]--;
        if (v0[0x1a] == 0) {
            v0[0x19] = 2;
        }
    } else {
        ov74_02231260();
        ov74_02230A74();
        word = *(u32 *)(*(u8 **)(v0 + 0xc) + 8);
        count = (word & 0xffff) >> 8;
        if (count == 0) {
            if (v0[0x1b] == 0) {
                v0[0x19] = 2;
                return;
            }
            v0[0x1b]--;
        }
        ov74_022312C0(*(u32 *)(v0 + 8), *(u32 *)(v0 + 4), 0, count, v0[0x1c]);
        ov74_02230A4C(*(u32 *)(v0 + 8), ov74_02231260(), 0xffff);
    }
}
