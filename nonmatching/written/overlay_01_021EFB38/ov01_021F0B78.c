#include "global.h"
#include "sys_task_api.h"

extern void GF_AssertFail(void);
extern u64 _u32_div_f(u32 a, u32 b);
extern void ov01_021EFE34(void *task, s32 start, s32 end, s32 steps);
extern void ov01_021F0C40(SysTask *task, void *data);

void ov01_021F0B78(u8 *a, u8 *b, s32 steps, u32 div, u32 mul, u32 winIn0, u32 winIn1) {
    s32 i;
    if (*(u32 *)(b + 0xE0) != 0) {
        GF_AssertFail();
    }
    *(u32 *)(a + 0x18) = 0;
    *(u32 *)(b + 0xD8) = *(u32 *)(*(u8 **)(*(u8 **)(a + 0x10) + 4) + 0x1C);
    *(u32 *)(b + 0x14) = 0;
    *(u8 **)(b + 0xE4) = a + 0x18;
    ov01_021EFE34(b, 0xFF, 0, steps);
    for (i = 0; i < 0xC0; i++) {
        u32 rem = (u32)(_u32_div_f(i, div) >> 32);
        u32 v = (u32)_u32_div_f(mul * rem, div);
        u32 q = (u32)_u32_div_f(i, div);
        if ((q & 1) == 0) {
            b[0x18 + i] = v;
        } else {
            b[0x18 + i] = mul - v;
        }
    }
    *(vu16 *)0x04000048 = (*(vu16 *)0x04000048 & ~0x3F) | winIn0 | 0x20;
    *(vu16 *)0x0400004A = (*(vu16 *)0x0400004A & ~0x3F) | winIn1;
    *(vu16 *)0x04000040 = 0;
    *(vu16 *)0x04000044 = 0xC0;
    *(vu32 *)0x04000000 = (*(vu32 *)0x04000000 & 0xFFFF1FFF) | 0x2000;
    SysTask_CreateOnVWaitQueue(ov01_021F0C40, b, 0x400);
}
