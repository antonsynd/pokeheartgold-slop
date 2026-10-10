#include "global.h"

typedef void (*UnkFunc_ov102_021E7AA4)(void *a0, void *a1, void *a2, u32 a3);
extern UnkFunc_ov102_021E7AA4 ov102_021EC5E8[];

void ov102_021E7AA4(u8 *a0, void *a1) {
    u32 off = *(u32 *)(a0 + 4) << 2;
    UnkFunc_ov102_021E7AA4 fn = *(UnkFunc_ov102_021E7AA4 *)((u8 *)ov102_021EC5E8 + off);
    fn(a0, a1, (void *)fn, off);
}
