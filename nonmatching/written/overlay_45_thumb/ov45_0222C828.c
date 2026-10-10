#include "global.h"

typedef void (*UnkFunc_ov45_0222C828)(void *, const void *, void *, u32);

extern UnkFunc_ov45_0222C828 const ov45_02254A60[];

void ov45_0222C828(int param0, const u8 *param1, u32 param2, void *param3) {
    UnkFunc_ov45_0222C828 func = ov45_02254A60[param1[0x11]];
    func(param3, param1, (void *)func, param1[0x11] << 2);
}
