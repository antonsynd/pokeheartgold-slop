#include "global.h"

u8 *ov96_021E60D8(void *param_1, u32 param_2, u32 param_3);

u32 ov96_0220329C(void *param_1, s32 *param_2, u32 param_3, u32 param_4, u8 *param_5)
{
    u8 *r6 = ov96_021E60D8(param_1, param_3, param_4);
    s32 v;

    v = *(s32 *)((u8 *)param_2 + ((u32)r6[4] << 2));
    *(float *)(param_5 + 4) = (float)((double)(float)v / 10.0);

    v = *(s32 *)((u8 *)param_2 + ((u32)r6[0] << 2) + 0x14);
    *(float *)(param_5 + 8) = (float)((double)(float)v / 10.0);

    *(u32 *)(param_5 + 0x10) = *(u32 *)((u8 *)param_2 + ((u32)r6[4] << 2) + 0x28);

    v = *(s32 *)((u8 *)param_2 + ((u32)r6[3] << 2) + 0x3c);
    *(float *)(param_5 + 0xc) = (float)v;

    *(u16 *)(param_5 + 0x14) = 0;
    *(u8 *)(param_5 + 0x18) = 0;
    *(u8 *)(param_5 + 0x19) = 0;
    *(u16 *)(param_5 + 0x16) = 0x78;
    return 0x78;
}
