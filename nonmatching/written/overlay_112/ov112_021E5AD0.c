#include "global.h"

extern u64 OS_GetTick(void);
extern u64 _ll_udiv(u64 a, u64 b);
extern void ov112_021E5A14(int param);
extern u32 _021FF9E0[];

BOOL ov112_021E5AD0(void) {
    u64 diff;
    if (_021FF9E0[0x2C / 4] == 0 && _021FF9E0[0x24 / 4] == 0) {
        return FALSE;
    }
    diff = OS_GetTick() - *(u64 *)&_021FF9E0[0x30 / 4];
    if (_ll_udiv(diff << 6, 0x82EA) < 100) {
        return FALSE;
    }
    ov112_021E5A14(1);
    _021FF9E0[0x24 / 4] = 0;
    return TRUE;
}
