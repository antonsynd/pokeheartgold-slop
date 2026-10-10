#include "global.h"

#define DBL(hi, lo) (((union { u64 u; double d; }){((u64)(hi) << 32) | (u64)(lo)}).d)

void GF_AssertFail(void);
void ov96_021EB10C(u32 a, float b, float c);
void SysTask_Destroy(void *task);

void ov96_0220D468(void *param_1, u8 *param_2)
{
    u16 phase = *(u16 *)(param_2 + 0xe);

    if (phase == 0) {
        u16 n = *(u16 *)(param_2 + 0xc);
        double d = (double)(unsigned)n;
        float f = (float)(1.0 - d * DBL(0x3FD33333, 0x33333333));

        *(float *)(param_2 + 8) = f;
        if (n > 1) {
            *(u16 *)(param_2 + 0xc) = 0;
            *(u16 *)(param_2 + 0xe) = *(u16 *)(param_2 + 0xe) + 1;
        } else {
            ov96_021EB10C(*(u32 *)param_2, 1.0f, f);
            *(u16 *)(param_2 + 0xc) = *(u16 *)(param_2 + 0xc) + 1;
        }
    } else if (phase == 1) {
        u16 n = *(u16 *)(param_2 + 0xc);
        double d = (double)(unsigned)n;
        float f = (float)(1.0 + d * DBL(0x3FD33333, 0x33333333));

        *(float *)(param_2 + 8) = f;
        if (n > 1) {
            *(u32 *)(param_2 + 4) = 0;
            ov96_021EB10C(*(u32 *)param_2, 1.0f, 1.0f);
            SysTask_Destroy(param_1);
        } else {
            ov96_021EB10C(*(u32 *)param_2, 1.0f, f);
            *(u16 *)(param_2 + 0xc) = *(u16 *)(param_2 + 0xc) + 1;
        }
    } else {
        GF_AssertFail();
    }
}
