#include "global.h"

typedef struct UnkStruct_sub_02011F10 {
    u8 unk00[0xc];
    s32 unk0C;
    s32 unk10;
} UnkStruct_sub_02011F10;

extern s32 _s32_div_f(s32 num, s32 den);
s64 _ll_mul(s64 a, s64 b);
void *sub_02010EE0(void *param0, u32 param1);
s32 sub_02010A54(s32 a, s32 b);
s32 sub_02010A7C(s32 a, s32 b);
void sub_02010A00(s32 param0, s32 *param1, s32 param2, s32 param3);

void sub_02011F10(UnkStruct_sub_02011F10 *param0)
{
    u8 *v9;
    s32 v3[192];
    u32 saved[5]; // r4, r5, r6, r7, lr as the original's prologue pushes them
    register u32 *savedPtr __asm__("r2") = saved;
    s32 *entrySp = (s32 *)((u8 *)__builtin_frame_address(0) + 8);
    s32 v1;
    s32 v2;
    s32 v4;
    s32 v5;
    s32 v6;
    s32 v7;
    s32 v8;
    s32 i;
    s16 sinValue;
    s64 product;

    __asm__ volatile("stmia %0!, {r4, r5, r6}" : "+r"(savedPtr) : : "memory");
    saved[3] = ((u32 *)__builtin_frame_address(0))[0];
    saved[4] = ((u32 *)__builtin_frame_address(0))[1];

    v9 = sub_02010EE0(param0, 0);

    sinValue = *(s16 *)((u8 *)FX_SinCosTable_ + ((param0->unk10 >> 4) << 2));
    product = _ll_mul((s64)sinValue, (s64)param0->unk0C);
    v5 = (s32)((u32)((u64)(product + 0x800) >> 12));
    v5 = v5 >> 12;

    v2 = _s32_div_f(v5 * 2, 21);
    v2 = (v2 + 1) * 2;
    v2 = 180 - v2;
    v2 = _s32_div_f(0xffff * v2, 360);
    v2 = (s32)(v2 + (s32)((u32)v2 >> 31)) >> 1;

    v1 = sub_02010A54(v2, 256) >> 12;
    if (v1 >= 0xc0) {
        GF_AssertFail();
    }
    sub_02010A00(v2, v3, v1, 0);

    for (i = 0; i < 96; i++) {
        v4 = v1 - (i + 1);
        v6 = v5;
        if (v4 > 0) {
            // v3 is the last thing in the original's frame: past it come the pushed r4-r7/lr, then the caller's frame.
            s32 entry;
            if (v4 < 192) {
                entry = v3[v4];
            } else if (v4 < 197) {
                entry = (s32)saved[v4 - 192];
            } else {
                entry = entrySp[v4 - 197];
            }
            if (entry > v6) {
                v6 = entry;
            }
        }
        v7 = sub_02010A7C(128, -v6);
        v8 = sub_02010A7C(128, v6);
        *(s16 *)(v9 + 0x300 + 2 * i) = (s16)v7;
        *(s16 *)(v9 + 0x480 + 2 * i) = (s16)v8;
        *(s16 *)(v9 + 0x300 + 2 * (191 - i)) = (s16)v7;
        *(s16 *)(v9 + 0x480 + 2 * (191 - i)) = (s16)v8;
    }
}
