#include "global.h"

extern const u16 ov85_021EA7C4[];

extern int *ov85_021E8610(void *p);
extern void ov85_021E7B40(void *p, u32 a, int idx, int b, u32 c, int d, void *e);

int ov85_021E5E30(u8 *p) {
    int *v0;
    int idx;
    int count;

    count = *(int *)(p + 0xc) - 1;
    *(int *)(p + 0xc) = count;
    if (count > 0) {
        return 0;
    }
    *(int *)(p + 0xc) = 0xf;

    v0 = ov85_021E8610(p);
    idx = v0[4];
    ov85_021E7B40(p, *(u16 *)(p + idx * 4 + 0x72), idx, v0[0],
                  *(u16 *)((u8 *)ov85_021EA7C4 + v0[5] * 10 + idx * 2), v0[1],
                  p + 0x2d0 + idx * 0xb0);

    v0[4] = v0[4] + 1;
    v0[4] = v0[4] % v0[5];
    v0[0] = v0[0] + 1;
    if (v0[0] == v0[5]) {
        *(int *)(p + 0xc) = 0;
        *(int *)p = 0x12;
    }
    return 0;
}
