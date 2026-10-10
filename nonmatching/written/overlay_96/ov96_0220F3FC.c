#include "global.h"

void *SpriteManager_GetSpriteList(void *manager);
u32 ov96_021EA854(u32 a, u32 b, u32 c, u32 d);
void ov96_021EB138(u32 a, void *b);
void ov96_021E6168(u32 a, u32 b, u32 c, void *d);
void ov96_021E60C0(u32 a, u32 b, u32 c);
u32 ov96_021E6108(void);
void ov96_021EA8A8(u32 a, u32 b, void *c, void *d);

void ov96_0220F3FC(u8 *param_1)
{
    u32 zz[17] = {0};
    u8 arr58[192] = {0};
    u32 ret;
    u32 p4;
    u32 i;

    SpriteManager_GetSpriteList(*(void **)(param_1 + 0x10));
    ret = ov96_021EA854(*(u32 *)param_1, 12, 7, *(u32 *)(param_1 + 0x1c));
    *(u32 *)(param_1 + 0x20) = ret;
    ov96_021EB138(ret, param_1);

    p4 = *(u32 *)(param_1 + 4);
    for (i = 0; i < 12; i++) {
        u32 q = i / 3;
        u32 rr = i % 3;

        ov96_021E6168(p4, q, rr, arr58 + 16 * i);
        ov96_021E60C0(p4, q, rr);
        zz[5 + i] = ov96_021E6108();
    }
    zz[1] = 1;
    zz[3] = 1;
    zz[4] = 1;
    ov96_021EA8A8(*(u32 *)(param_1 + 0x20), 12, arr58, zz);
}
