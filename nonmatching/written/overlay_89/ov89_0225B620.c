#include "global.h"

extern u8 ov89_0225AD00(void *p0);
extern void ov89_0225AD64(void *p0, u8 a);
extern void ov89_0225ADA4(void *a, void *b, void *c, int d);
extern void sub_020182B0(void *p, s32 *x, s32 *y, s32 *z);
extern void sub_020181B0(void *p, void *q);
extern void sub_020182A8(void *p, s32 x, s32 y, s32 z);
extern void sub_020182A0(void *p, int v);

int ov89_0225B620(void *param0, u8 *param1) {
    u8 *v0 = param1 + 0x94;
    s32 v1 = 0;
    s32 v2 = 0;
    s32 v3 = 0;
    int i;
    int state = v0[0x16d];

    if (state == 0) {
        v0[0x16c] = ov89_0225AD00(param0);
        sub_020182B0(param1 + 0x1c, &v1, &v2, &v3);
        for (i = 0; i < 3; i++) {
            sub_020181B0(v0 + i * 0x78, param1 + 0xc);
            sub_020182A8(v0 + i * 0x78, v1, v2, v3);
            sub_020182A0(v0 + i * 0x78, 0);
        }
        v0[0x16d] = v0[0x16d] + 1;
        state = 1;
    }

    if (state == 1) {
        sub_020182B0(param1 + 0x1c, &v1, &v2, &v3);
        if (v1 < -0x50000 || v1 > 0x50000 || v2 > 0x30000 || v2 < -0x30000 || v0[0x16b] == 1) {
            for (i = 0; i < 3; i++) {
                sub_020182A0(v0 + i * 0x78, 0);
            }
            sub_020182A0(param1 + 0x1c, 0);
            v0[0x16d] = v0[0x16d] + 1;
        } else {
            sub_020182A8(param1 + 0x1c, v1, v2 + 0x2800, v3);
            if (*(u16 *)(v0 + 0x168) % 3 == 0) {
                sub_020182A8(v0 + v0[0x16a] * 0x78, v1, v2 + 0x2800, v3);
                sub_020182A0(v0 + v0[0x16a] * 0x78, 1);
                v0[0x16a] = v0[0x16a] + 1;
                if (v0[0x16a] >= 3) {
                    v0[0x16a] = 0;
                }
            }
            *(u16 *)(v0 + 0x168) = *(u16 *)(v0 + 0x168) + 1;
        }
        ov89_0225ADA4(param1 + 0x1c, param1, v0 + 0x170, 0);
        return 0;
    }

    ov89_0225AD64(param0, v0[0x16c]);
    return 1;
}
