#include "global.h"

extern void *ov74_02231054(void);
extern u8 *ov74_0223105C(void);
extern int ov74_02230A74(void);
extern int ov74_02230A7C(void);
extern int WM_Init(void *wmBuf, u16 dmaNo);
extern u32 ov74_02230A14(void);
extern void ov74_02231194(void);
extern u8 *ov74_02231184(void);
extern u16 WM_GetNextTgid(void);

void ov74_02230A84(u32 *param0, u32 buf) {
    u8 *v;
    u32 *word44;
    u16 *src8;
    u16 *src4;
    u8 *dst;
    u32 i;
    int size;

    ov74_02231054();
    v = ov74_0223105C();

    if ((buf & 0x1f) != 0) {
        buf += 0x20 - (buf & 0x1f);
    }

    v[0] = 0;
    v[1] = 0;
    v[2] = 0;
    v[3] = 4;
    *(u32 *)(v + 4) = 0x400131;
    *(u16 *)(v + 0xc) = 0;

    *(u32 *)(v + 0x34) = buf;
    buf += 0xf00;
    *(u32 *)(v + 0x38) = buf;
    size = ov74_02230A74();
    *(int *)(v + 0x2c) = size;
    buf += size;
    *(u32 *)(v + 0x3c) = buf;
    size = ov74_02230A7C();
    buf += size;
    *(int *)(v + 0x30) = size;
    *(u32 *)(v + 0x28) = buf;
    *(u32 *)(v + 0x24) = buf + 0xc0;
    buf += 0xe0;

    WM_Init(*(void **)(v + 0x34), 2);

    *(u32 *)(v + 0x10) = ov74_02230A14();
    *(u32 *)(v + 0x14) = 0;
    *(u32 *)(v + 0x18) = 0;
    *(u32 *)(v + 0x1c) = 0;
    *(u32 *)(v + 0x20) = 0;

    *(u32 *)(v + 0x40) = (*(u32 *)(v + 0x40) & 0xffff0000) | 0x110f;

    word44 = (u32 *)(v + 0x44);
    *word44 = (*word44 & ~0xffu) | (*param0 & 0xff);
    *word44 = (*word44 & 0xfffff0ff) | (*param0 & 0xf00);
    *word44 = (*word44 & 0xffff0fff) | (*param0 & 0xf000);
    *word44 = (*word44 & 0xffff) | (*param0 & 0xffff0000);

    src8 = (u16 *)param0[2];
    src4 = (u16 *)param0[1];
    dst = v;
    i = 0;
    while (src8 != NULL && i < 12) {
        *(u16 *)(dst + 0x48) = *src8;
        *(u16 *)(dst + 0x60) = *src4;
        dst += 2;
        i++;
        src8++;
        src4++;
    }

    *(u32 *)(v + 0x78) = *(u32 *)(v + 0x40);
    *(u32 *)(v + 0x7c) = *(u32 *)(v + 0x44);

    ov74_02231194();
    *(u32 *)(ov74_02231184() + 8) = buf;
    buf += *(int *)(v + 0x2c);
    *(u32 *)(ov74_02231184() + 0xc) = buf;
    WM_GetNextTgid();
}
