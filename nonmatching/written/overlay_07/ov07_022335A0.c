#include "global.h"

typedef struct UnkStruct_ov07_022335A0 {
    u8 pad_00[0x14];
    s32 index;
} UnkStruct_ov07_022335A0;

typedef BOOL (*ov07_022335A0_Fn)(UnkStruct_ov07_022335A0 *, ov07_022335A0_Fn, u32, u32);

extern ov07_022335A0_Fn ov07_0223729C[];

BOOL ov07_022335A0(UnkStruct_ov07_022335A0 *ctx) {
    u32 callerR3;
    ov07_022335A0_Fn fn;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    fn = ov07_0223729C[ctx->index];
    return fn(ctx, fn, (u32)ctx->index << 2, callerR3);
}
