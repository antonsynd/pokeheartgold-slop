#include "global.h"

typedef BOOL (*UnkFunc_ov102_021E85E8)(void *a0, void *a1, u32 a2, void *a3);
extern UnkFunc_ov102_021E85E8 _021EC5D8[] __asm__("_021EC5D8");

BOOL ov102_021E85E8(u8 *a0, void *a1, void *a2, void *a3) {
    u32 off = (u32)a0[0x6b] << 2;
    UnkFunc_ov102_021E85E8 fn = *(UnkFunc_ov102_021E85E8 *)((u8 *)_021EC5D8 + off);
    return fn(a0, (void *)fn, off, a3);
}
