#include "global.h"

typedef void (*ov93_022627C0_Fn)(void *, u32 *, void *, u32);

extern ov93_022627C0_Fn ov93_02263114[];

BOOL ov93_022627C0(void *param0, u32 *param1) {
    u32 idx = param1[0];
    ov93_022627C0_Fn fn = ov93_02263114[idx];
    if (fn != NULL) {
        fn(param0, param1, (void *)fn, idx * 4);
        MI_CpuFill8(param1, 0, 0x14);
        return TRUE;
    }
    return FALSE;
}
