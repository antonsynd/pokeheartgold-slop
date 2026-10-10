#include "global.h"

extern int PlaySE(u16 sndseq);
extern int ov102_021E940C(void *a0, int a1);
extern BOOL ov102_021E85A8(void *a0, u8 a1);
extern BOOL ov102_021E85E8(void *a0);
extern void ov102_021E874C(void *a0, void *a1);
extern void ov102_021E7AA4(void);
extern void ov102_021E87B4(void);

int ov102_021E8294(u8 *a0, int *state) {
    int r1 = *(int *)(a0 + 0x38);
    u16 keys;

    if ((r1 == 0 && a0[0x6b] != 0) || (r1 == 1 && a0[0x6b] != 1) || (*(u16 *)(a0 + 0x30) & 4)) {
        PlaySE(0x5e4);
        *(int *)(a0 + 0x38) = 4;
        a0[0x6b] ^= 1;
        *(u16 *)(a0 + 0x50) = 0;
        ov102_021E940C(*(void **)(a0 + 0x14), 0x1b);
        *state = 2;
        return 2;
    }
    keys = *(u16 *)(a0 + 0x30);
    if (keys & 2) {
        goto cancel;
    }
    if (keys & 1) {
        if (*(u16 *)(a0 + 0x50) == 0xfe) {
            goto cancel;
        }
        if (ov102_021E85A8(*(void **)(a0 + 0x18), a0[0x6b])) {
            PlaySE(0x5dc);
            ov102_021E874C(a0 + 0x54, a0);
            *(void **)(a0 + 0x24) = (void *)ov102_021E87B4;
            ov102_021E940C(*(void **)(a0 + 0x14), 0xb);
            *state = 1;
            return 1;
        }
        return PlaySE(0x5f2);
    }
    if (ov102_021E85E8(a0)) {
        PlaySE(0x5dc);
        return ov102_021E940C(*(void **)(a0 + 0x14), 0x11);
    }
    return 0;

cancel:
    PlaySE(0x5dc);
    ov102_021E940C(*(void **)(a0 + 0x14), 0xa);
    *(void **)(a0 + 0x24) = (void *)ov102_021E7AA4;
    *state = 1;
    return 1;
}
