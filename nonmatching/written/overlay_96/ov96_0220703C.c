#include "global.h"

extern u32 ov96_0221CB00[];
extern u32 ov96_0221CAE0[];
u32 sub_02020F4C(void *a, void *b, void *c, void *d, void *e);
s32 ov96_02207390(void *a, void *b, void *c, s32 d);

u32 ov96_0220703C(u32 *param_1, u32 *param_2, s32 param_3, u32 *param_4, u32 *param_5)
{
    u32 arr34[4];
    u32 arr94[4];
    u32 arr44[4];
    u32 arr84[4];
    u32 Aarr[2];
    u32 Barr[2];
    u32 outs[2] = {0, 0};
    u8 *Rb = (u8 *)param_4;
    u32 k;
    u32 i;
    u32 m;

    Aarr[0] = (u32)((s32)param_1[0] / 4096);
    Aarr[1] = (u32)((s32)param_1[1] / 4096);
    Barr[0] = (u32)((s32)param_2[0] / 4096);
    Barr[1] = (u32)((s32)param_2[1] / 4096);
    for (i = 0; i < 4; i++) {
        arr34[i] = ov96_0221CB00[i];
    }

    for (k = 0; k < 4; k++) {
        for (i = 0; i < 4; i++) {
            arr94[i] = arr34[i];
        }
        if (sub_02020F4C(Rb + 0x20 + 0x10 * k, Rb + 0x28 + 0x10 * k, Aarr, Barr, outs) != 0) {
            ((u32 *)param_5)[0] = outs[0] << 12;
            ((u32 *)param_5)[1] = outs[1] << 12;
            ((u32 *)param_5)[2] = 0;
            return arr94[k];
        }
        if (Aarr[0] == *(u32 *)(Rb + 0x10 * k + 0x20)) {
            s32 p = (s32)*(u32 *)(Rb + 0x10 * k + 0x24);
            s32 q = (s32)*(u32 *)(Rb + 0x10 * k + 0x2c);
            s32 lo;
            s32 hi;

            if (p >= q) {
                lo = q;
                hi = p;
            } else {
                lo = p;
                hi = q;
            }
            if (!((s32)lo > (s32)Aarr[1]) && !((s32)Aarr[1] > hi)) {
                param_5[0] = param_1[0];
                param_5[1] = param_1[1];
                param_5 = param_5 + 2;
                param_5[0] = param_1[2];
                return arr94[k];
            }
        }
    }

    for (i = 0; i < 4; i++) {
        arr44[i] = ov96_0221CAE0[i];
    }
    {
        s32 S = param_3;
        u32 r6v = (u32)S << 12;

        for (m = 0; m < 4; m++) {
            u32 *r4 = (u32 *)(Rb + 0 + 8 * m);
            u32 V78[3];
            u32 V6c[3];
            u32 V60[3];
            u32 V54[3];
            s32 mag;

            for (i = 0; i < 4; i++) {
                arr84[i] = arr44[i];
            }
            V78[0] = r4[0] << 12;
            V78[1] = r4[1] << 12;
            V78[2] = 0;
            VEC_Subtract(param_2, V78, V6c);
            mag = VEC_Mag(V6c);
            if (mag > (s32)r6v) {
                continue;
            }
            {
                s32 t = ov96_02207390(param_1, param_2, V78, (s32)(S << 12));
                VEC_Subtract(param_2, param_1, V60);
                VEC_MultAdd(t, V60, param_1, V54);
                param_5[0] = V54[0];
                param_5[1] = V54[1];
                param_5[2] = 0;
                return arr84[m];
            }
        }
    }

    {
        s32 S = param_3;
        s32 q0 = (s32)param_2[0];
        s32 q1 = (s32)param_2[1];
        s32 R0 = (s32)param_4[0];
        s32 R10 = (s32)param_4[4];
        s32 R1 = (s32)param_4[1];
        s32 R14 = (s32)param_4[5];
        s32 dA;
        s32 dB;
        s32 dC;
        s32 dD;
        s32 r0v;
        s32 r3v;
        s32 r4v;
        s32 r6;
        int ip = 0;

        if ((R0 << 12) > q0) {
            return 0;
        }
        if (q0 > (R10 << 12)) {
            return 0;
        }
        if ((R1 << 12) > q1) {
            return 0;
        }
        if (q1 > (R14 << 12)) {
            return 0;
        }
        param_5[0] = param_2[0];
        param_5[1] = param_2[1];
        param_5[2] = param_2[2];

        dA = (R0 << 12) - q0;
        dB = (R10 << 12) - q0;
        if (dA < 0) {
            dA = -dA;
        }
        if (dB < 0) {
            dB = -dB;
        }
        if (dA >= dB) {
            r0v = dB;
            r6 = 10;
        } else {
            r0v = dA;
            r6 = 12;
        }
        dC = (R1 << 12) - q1;
        dD = (R14 << 12) - q1;
        if (dC < 0) {
            dC = -dC;
        }
        if (dD < 0) {
            dD = -dD;
        }
        if (dC < dD) {
            r4v = 9;
            r3v = dC;
        } else {
            r3v = dD;
            r4v = 11;
        }
        if (r0v > r3v) {
            r0v = r4v;
        } else {
            ip = 1;
            r0v = r6;
        }

        if (ip != 0) {
            if (r6 == 12) {
                param_5[0] = (u32)((R0 - S) << 12);
            } else {
                param_5[0] = (u32)((R10 + S) << 12);
            }
            return (u32)r6;
        }
        if (r4v == 9) {
            param_5[1] = (u32)((R1 - S) << 12);
        } else {
            param_5[1] = (u32)((R14 + S) << 12);
        }
        return (u32)r0v;
    }
}
