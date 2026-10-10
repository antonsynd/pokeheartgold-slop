#include "global.h"

extern void ov74_0223144C(u16 state);
extern void ov74_02231070(int a0);
extern int ov74_0222FE78(void);
extern u8 *ov74_02231154(void);
extern int ov74_02230478(void);
extern void ov74_0222FFAC(void);
extern int ov74_02231584(void);
extern void ov74_02231448(u16 errcode);
extern void ov74_0222FE4C(void);

void ov74_02230520(u8 *callback) {
    u8 *work;
    u16 state;

    ov74_0223144C(*(u16 *)(callback + 8));
    if (*(u16 *)(callback + 2) != 0) {
        ov74_02231448(*(u16 *)(callback + 2));
        ov74_0222FE4C();
        return;
    }

    work = ov74_02231154();
    *(u8 *)(work + 0x1c3) = (*(u8 *)(work + 0x1c3) & 0x0f) | 0x20;
    ov74_02231070(6);
    if (ov74_0222FE78() != 0) {
        return;
    }

    state = *(u16 *)(callback + 8);
    if (state != 4) {
        if (state != 5) {
            ov74_02231448(*(u16 *)(callback + 2));
            ov74_0222FE4C();
            return;
        }
        if (ov74_02230478() != 0) {
            return;
        }
    }
    ov74_0222FFAC();
    if (ov74_02231584() == 0) {
        ov74_0222FE4C();
    }
}
