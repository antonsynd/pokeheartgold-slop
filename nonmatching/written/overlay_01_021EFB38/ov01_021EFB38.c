#include "global.h"

typedef void (*UnkFunc_ov01_021EFB38)(u32 a0, u32 a1, u32 a2, u32 a3);

typedef struct UnkStruct_ov01_02209B64 {
    u32 unk0;
    u32 index;
    u32 counter;
} UnkStruct_ov01_02209B64;

extern UnkStruct_ov01_02209B64 ov01_02209B64;
extern UnkFunc_ov01_021EFB38 ov01_022068C4[];
extern void OS_SetTick_020D3560(u64 tick) __asm__("sub_020D3560");

void ov01_021EFB38(u32 a0, u32 a1) {
    u32 offset = ov01_02209B64.index << 2;
    UnkFunc_ov01_021EFB38 func = *(UnkFunc_ov01_021EFB38 *)((u8 *)ov01_022068C4 + offset);
    func(a0, a1, (u32)func, offset);
    ov01_02209B64.counter++;
    OS_GetTick();
    OS_SetTick_020D3560(0);
}
