#include "global.h"

extern u64 _s32_div_f(s32 a, s32 b);

BOOL ov01_021F4704(s32 a, s32 b, s32 mod) {
    u32 ra = (u32)(_s32_div_f(a, mod) >> 32);
    u32 rb = (u32)(_s32_div_f(b, mod) >> 32);
    if (ra == rb) {
        return TRUE;
    }
    return FALSE;
}
