#include "global.h"

extern void ov74_0223144C(u16 state);
extern void *ov74_02231100(void);
extern void ov74_02231450(void *bssDesc);
extern void ov74_02231070(int a0);
extern int ov74_0222FE78(void);
extern int ov74_02231094(void);
extern u8 *ov74_02231154(void);
extern int ov74_02230320(u8 *callback);
extern void ov74_0223030C(void);
extern void ov74_02231448(u16 errcode);
extern void ov74_0222FE4C(void);

void ov74_02230404(u8 *callback) {
    u8 *work;
    u16 state;

    ov74_0223144C(*(u16 *)(callback + 8));
    if (*(u16 *)(callback + 2) != 0) {
        ov74_02231448(*(u16 *)(callback + 2));
        ov74_0222FE4C();
        return;
    }

    ov74_02231450(ov74_02231100());
    ov74_02231070(6);
    if (ov74_0222FE78() != 0) {
        return;
    }
    if (ov74_02231094() == 1) {
        work = ov74_02231154();
        *(u8 *)(work + 0x1c3) = (*(u8 *)(work + 0x1c3) & 0x0f) | 0x10;
    }

    state = *(u16 *)(callback + 8);
    if (state != 4) {
        if (state != 5) {
            ov74_02231448(*(u16 *)(callback + 2));
            ov74_0222FE4C();
            return;
        }
        if (ov74_02230320(callback) != 0) {
            return;
        }
    }
    ov74_0223030C();
}
