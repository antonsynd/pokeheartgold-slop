#include "global.h"

extern void ov112_021E59B4(int a, int b, int c, u8 d, u32 e);
extern void ov112_021E594C(void);
extern u8 _021FF500[];
extern u32 _021FF9E0[];

void ov112_021E5A14(int param) {
    void (*cb)(int);
    if (_021FF9E0[0x2C / 4] != 0 && _021FF9E0[0x08 / 4] == 0 && param == 0) {
        ov112_021E59B4(0, 0, 0xF4, _021FF500[0], _021FF9E0[0x04 / 4]);
    }
    cb = (void (*)(int))_021FF9E0[0x14 / 4];
    if (cb != NULL) {
        cb(param);
    }
    ov112_021E594C();
}
