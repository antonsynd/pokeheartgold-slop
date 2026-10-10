#include "global.h"

u8 *ov96_021E60D8(void *param_1, u32 param_2, u32 param_3);

void ov96_02206E88(void *param_1, u32 *param_2, u32 param_3, u32 param_4, u8 *param_5)
{
    u8 *r4 = ov96_021E60D8(param_1, param_3, param_4);
    u8 *out = param_5 + param_4 * 20;

    *(float *)(out + 0x14) = (float)((double)(float)(s32)param_2[r4[0]] / 10.0);
    *(u8 *)(out + 0x1c) = (u8)*(u32 *)((u8 *)param_2 + 4 * r4[1] + 0x50);
    *(float *)(out + 0xc) = (float)((double)(float)(s32)*(u32 *)((u8 *)param_2 + 4 * r4[4] + 0x14) / 10.0);
    *(float *)(out + 0x10) = (float)((double)(float)(s32)*(u32 *)((u8 *)param_2 + 4 * r4[1] + 0x28) / 10.0);
    *(u32 *)(out + 0x18) = *(u32 *)((u8 *)param_2 + 4 * r4[3] + 0x3c);
}
