#include "global.h"

extern void ov74_0223144C(u16 state);
extern void ov74_02231070(int a0);
extern int ov74_0222FE78(void);
extern void ov74_0223110C(u16 aid);
extern void ov74_02231124(int a0);
extern void ov74_02231130(int a0);
extern int ov74_02231670(void);
extern int ov74_02231118(void);
extern void ov74_02231448(u16 errcode);
extern void ov74_0222FE4C(void);

void ov74_022305E4(u8 *callback) {
    ov74_0223144C(*(u16 *)(callback + 8));
    if (*(u16 *)(callback + 2) != 0) {
        ov74_02231448(*(u16 *)(callback + 2));
        ov74_0222FE4C();
        return;
    }

    ov74_02231070(9);
    if (ov74_0222FE78() != 0) {
        return;
    }

    switch (*(u16 *)(callback + 8)) {
    case 6:
    case 8:
        break;
    case 7:
        ov74_0223110C(*(u16 *)(callback + 0xa));
        ov74_02231124(1);
        ov74_02231130(0);
        if (ov74_02231670() == 0) {
            ov74_0222FE4C();
        }
        break;
    case 9:
        if (ov74_02231118() != 0) {
            ov74_02231130(1);
        }
        ov74_02231124(0);
        break;
    default:
        ov74_02231448(*(u16 *)(callback + 2));
        ov74_0222FE4C();
        break;
    }
}
