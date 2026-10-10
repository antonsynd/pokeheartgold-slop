#include "global.h"

void PlaySE(u32 se);
u32 ov96_0220B164(u32 value);
void ov96_0220AED4(u32 value);
void ov96_0220AF64(u32 value);

void ov96_0220AD64(u8 *param_1)
{
    u32 v = *(u32 *)(param_1 + 0x180);
    u32 mode = (v >> 4) & 0xf;
    u32 i;

    if (mode >= 10) {
        for (i = 0; i < 10; i++) {
            if (ov96_0220B164(*(u32 *)(param_1 + 0x154 + 4 * i)) == 1) {
                break;
            }
        }
        if (i == 10) {
            PlaySE(0x8BD);
            v = *(u32 *)(param_1 + 0x180);
            *(u32 *)(param_1 + 0x180) = (v & ~0xfu) | 2;
        }
    } else {
        u32 w = *(u32 *)(param_1 + 0x17c);
        u32 c = w & 0xffff;
        u32 nw = (w & 0xffff0000u) | ((c + 1) & 0xffff);

        *(u32 *)(param_1 + 0x17c) = nw;
        if (c >= 2) {
            *(u32 *)(param_1 + 0x17c) = *(u32 *)(param_1 + 0x17c) & 0xffff0000u;
            ov96_0220AED4(*(u32 *)(param_1 + 0x154 + 4 * mode));
            PlaySE(0x8C1);
            v = *(u32 *)(param_1 + 0x180);
            mode = (v >> 4) & 0xf;
            *(u32 *)(param_1 + 0x180) = (v & ~0xf0u) | (((mode + 1) & 0xf) << 4);
        }
    }
    for (i = 0; i < 10; i++) {
        ov96_0220AF64(*(u32 *)(param_1 + 0x154 + 4 * i));
    }
}
