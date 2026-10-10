#include "global.h"

extern void ov74_0223144C(u16 state);
extern void ov74_02231070(int a0);
extern int ov74_0222FE78(void);
extern int ov74_02231094(void);
extern void ov74_0222FE4C(void);

void ov74_022306C8(u8 *callback) {
    u16 errcode;
    int mode;

    ov74_0223144C(*(u16 *)(callback + 4));
    errcode = *(u16 *)(callback + 2);
    if (errcode != 0) {
        if (errcode != 9 && errcode != 0xd && errcode != 0xf) {
            ov74_0222FE4C();
        }
        return;
    }

    if (*(u16 *)callback == 0xe) {
        if (ov74_0222FE78() != 0) {
            return;
        }
    }

    mode = ov74_02231094();
    if (mode == 1) {
        ov74_02231070(0xb);
    } else if (mode == 2) {
        ov74_02231070(0xa);
    }
}
