#include "global.h"

extern u32 ov96_0221CA30[];
u16 LCRandom(void);
int _dgr(double a, double b);
int _dls(double a, double b);
void GF_AssertFail(void);
u32 ov96_0220472C(void *a, void *b, void *c);
void ov96_02204320(u8 value, void *vec);

void ov96_022044A0(u8 *param_1, void *param_2, u32 param_3, s32 param_4)
{
    u32 idx4;
    u32 buf40[9];
    u32 lp[12];
    u32 vzero[3];
    u32 vout[3];
    u8 *p;
    u8 *q;
    s32 rem51;
    s32 rnd;
    s32 n;
    s32 rem;
    u8 *table;
    u32 i;
    u32 k;
    u32 callerR4, callerR5, callerR6;

    /* the asm pushes {r4-r7, lr} and its locals sit below that: buf40 (9 words) is followed by lp (12 words),
       then the saved r4, r5, r6, r7, lr, then the caller's frame. Read the caller's registers first. */
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    idx4 = param_3 << 2;
    vzero[0] = 0;
    vzero[1] = 0;
    vzero[2] = 0;

    rnd = LCRandom();
    rem51 = rnd % 51;
    p = *(u8 **)(param_1 + idx4);
    if ((s32)*(s16 *)(p + 0x16) + rem51 <= 0x78) {
        q = *(u8 **)(param_1 + 0x30 + idx4);
        if (*(u16 *)(q + 0x44) < 4) {
            if (*(u32 *)(q + 0xc) == 0) {
                *(u16 *)(q + 0x44) = 1;
                *(u32 *)(q + 0xc) = 2;
                table = (u8 *)ov96_0221CA30 + 12 * param_3;
                ((u32 *)(q + 0x10))[0] = ((u32 *)table)[0];
                ((u32 *)(q + 0x10))[1] = ((u32 *)table)[1];
                ((u32 *)(q + 0x10))[2] = ((u32 *)table)[2];
                return;
            }
            if (*(u32 *)(q + 0xc) != 2) {
                GF_AssertFail();
            }
            *(u16 *)(q + 0x44) = *(u16 *)(q + 0x44) + 1;
            {
                u16 v = *(u16 *)(q + 0x44);
                *(u16 *)(q + 0x46) = v <= 1 ? 0 : v <= 2 ? 1 : v <= 3 ? 2 : 3;
            }
            return;
        }
    }

    for (i = 0; i < 12; i++) {
        u8 *s = param_1 + 8 * i;
        u8 *pi = *(u8 **)(param_1 + 4 * i);
        s32 t1;
        s32 r21;

        *(u32 *)(s + 0x60) = (u32)pi;
        *(u16 *)(s + 0x64) = (u16)i;
        rnd = LCRandom();
        t1 = (s32)*(u16 *)(pi + 0x14) / 20;
        r21 = rnd % 21;
        *(u16 *)(s + 0x66) = (u16)(t1 + r21);
        if (pi[0x19] == 1) {
            *(u16 *)(s + 0x66) = *(u16 *)(s + 0x66) + 1;
        }
        *(u16 *)(s + 0x66) = (u16)(*(u16 *)(s + 0x66) + (0x78 - (s32)*(s16 *)(pi + 0x16)) / 20);
    }
    for (k = 0; k < 12; k++) {
        lp[k] = (u32)(param_1 + 0x60 + 8 * k);
    }
    n = ov96_0220472C(param_2, lp, buf40);
    rem = (s32)LCRandom() % n;
    p = *(u8 **)(param_1 + idx4);
    {
        u8 ri = (u8)rem;
        u32 x;

        /* buf40[ri] is unchecked in the asm: ri 9..20 reads lp, 21..25 the saved r4-r7 and lr,
           and 26 upward the caller's frame (read relative to the entry stack pointer) */
        if (ri < 9) {
            x = buf40[ri];
        } else if (ri < 21) {
            x = lp[ri - 9];
        } else if (ri == 21) {
            x = callerR4;
        } else if (ri == 22) {
            x = callerR5;
        } else if (ri == 23) {
            x = callerR6;
        } else if (ri == 24) {
            x = *(u32 *)__builtin_frame_address(0);
        } else if (ri == 25) {
            x = (u32)__builtin_return_address(0);
        } else {
            x = ((u32 *)((char *)__builtin_frame_address(0) + 8))[ri - 26];
        }
        u32 v8 = (u8)*(u16 *)(x + 4);
        table = (u8 *)ov96_0221CA30;
        VEC_Subtract(table + 12 * v8, table + 12 * param_3, vout);
    }
    VEC_Normalize(vout, vout);
    ov96_02204320(3, vout);
    ov96_02204320((u8)*(u32 *)(p + 0x10), vout);
    {
        s32 rnd3 = LCRandom();
        s32 rem3 = rnd3 % 51;
        double d1 = (double)(float)param_4 / 40.0;
        double d2 = (double)(float)*(s16 *)(p + 0x16) / 50.0;
        double d3 = (double)(float)rem3;
        double total = d1 + (d2 + d3);
        float f = (float)total;
        float g = f;
        s32 scale;
        u8 *qq;

        if (_dgr((double)f, 2.0)) {
            g = 2.0f;
        } else if (_dls((double)f, 1.0)) {
            g = 1.0f;
        }
        scale = (s32)(4096.0f * g);
        qq = *(u8 **)(param_1 + 0x30 + idx4);
        VEC_MultAdd(scale, vout, vzero, qq + 0x1c);
        *(u32 *)(qq + 0xc) = 1;
        table = (u8 *)ov96_0221CA30 + 12 * param_3;
        ((u32 *)(qq + 0x10))[0] = ((u32 *)table)[0];
        ((u32 *)(qq + 0x10))[1] = ((u32 *)table)[1];
        ((u32 *)(qq + 0x10))[2] = ((u32 *)table)[2];
    }
}
