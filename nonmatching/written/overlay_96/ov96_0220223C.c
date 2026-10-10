#include "global.h"
#include "pokeathlon/pokeathlon.h"

extern u32 ov96_0221C98C[];
int _dgr(double a, double b);
int _dls(double a, double b);
void ov96_02202738(u8 *heap, void *p);
u32 ov96_022031A8(u8 *heap, u8 idx, u8 x, u8 z, void *out);
void ov96_02204320(u8 value, void *vec);
void ov96_022043C0(u32 a, u32 b);
void ov96_022033FC(PokeathlonCourseData *data);
void ov96_02203468(PokeathlonCourseData *data);
void ov96_02203754(u8 *heap);
void ov96_02203544(PokeathlonCourseData *data, u8 *heap);

void ov96_0220223C(PokeathlonCourseData *param_1)
{
    u8 *copy = PokeathlonCourse_GetDataCopyArea(param_1);
    u8 *heap = PokeathlonCourse_GetHeapAllocPtr4(param_1);
    u32 i;

    if (ov96_021E5F24(param_1) != 0) {
        return;
    }
    if (heap[0x5d0] != 0) {
        ov96_02202738(heap, ov96_021E8A20(copy + 0x28));
        return;
    }
    {
        u32 *dst = (u32 *)ov96_021E8A20(copy + 0x50);
        u32 *src = (u32 *)ov96_021E8A20(copy);
        for (i = 0; i < 4; i++) {
            u32 a = src[0];
            u32 b = src[1];
            src += 2;
            dst[0] = a;
            dst[1] = b;
            dst += 2;
        }
        *dst = *src;
    }
    if (*(u16 *)(heap + 0x5e8) != 0) {
        (*(u16 *)(heap + 0x5e8))--;
    }
    ov96_021E8A20(copy + 0x28);

    for (i = 0; i < 4; i++) {
        u8 *r5 = heap + 12 * i;
        u32 *flagA = (u32 *)(r5 + 0x59c);
        u32 *flagB = (u32 *)(r5 + 0x5a0);
        u8 *ent = ov96_021E8A20(copy + 0x50 + 0x28 * i);

        if (*(u32 *)ent == 0) {
            *flagA = 0;
            *flagB = 0;
        } else if (*flagA != 0 && *flagB != 0) {
            *flagA = 0;
        } else if (*flagA == 0 && *flagB == 0) {
            *flagA = 1;
            *flagB = 1;
        }

        if (*flagA != 0) {
            u32 out94[3] = {0, 0, 0};
            u32 r6 = ov96_022031A8(heap, (u8)i, ent[4], ent[5], out94);

            if (r6 != 0xc) {
                u8 *blk;
                u32 c4;
                if (heap[r6 * 32 + 0x430] != 0) {
                    continue;
                }
                blk = heap + 0x48 * r6;
                c4 = *(u32 *)(blk + 0xc4);
                if (c4 == 0 || c4 == 2) {
                    heap[0x5cc + i] = (u8)r6;
                    ((u32 *)(blk + 0xe0))[0] = out94[0];
                    ((u32 *)(blk + 0xe0))[1] = out94[1];
                    ((u32 *)(blk + 0xe0))[2] = out94[2];
                    ((u32 *)(blk + 0xec))[0] = (u32)ent[4] << 12;
                    ((u32 *)(blk + 0xec))[1] = 0;
                    ((u32 *)(blk + 0xec))[2] = (u32)ent[5] << 12;
                    if (*(u32 *)(blk + 0xc4) == 0) {
                        u32 *t = ov96_0221C98C + 3 * r6;
                        *(u32 *)(blk + 0xc8) = t[0];
                        *(u32 *)(blk + 0xcc) = t[1];
                        *(u32 *)(blk + 0xd0) = t[2];
                        *(u32 *)(blk + 0xc4) = 2;
                        *(u16 *)(blk + 0xfc) = 0;
                        *(u16 *)(blk + 0xfe) = 0;
                    }
                }
            }
            heap[0x5ea] = 0;
        } else if (*flagB != 0) {
            if (heap[0x5cc + i] == 0xc) {
                continue;
            }
            if (_dls((double)(unsigned)heap[0x5ea], 30.0)) {
                heap[0x5ea]++;
            }
        } else {
            u32 v7c[3] = {0, 0, 0};
            u32 k;

            if (heap[0x5cc + i] == 0xc) {
                heap[0x5ea] = 0;
                continue;
            }
            k = ov96_022031A8(heap, (u8)i, ent[4], ent[5], v7c);
            if (k != 0xc && k == heap[0x5cc + i]) {
                u16 *w = (u16 *)(heap + 0x48 * k + 0xfc);
                if (*w < 4) {
                    u16 v;
                    (*w)++;
                    v = *w;
                    if (v <= 1) {
                        *(u16 *)(heap + 0x48 * k + 0xfe) = 0;
                    } else if (v <= 2) {
                        *(u16 *)(heap + 0x48 * k + 0xfe) = 1;
                    } else if (v <= 3) {
                        *(u16 *)(heap + 0x48 * k + 0xfe) = 2;
                    } else {
                        *(u16 *)(heap + 0x48 * k + 0xfe) = 3;
                    }
                }
                heap[0x5cc + i] = 0xc;
                heap[0x5ea] = 0;
                continue;
            } else {
                u32 zero[3] = {0, 0, 0};
                u32 m = heap[0x5cc + i];
                u32 v4c[3];
                u32 v64[3];
                u32 v58[3];
                u8 *blk;

                v4c[0] = (u32)ent[4] << 12;
                v4c[1] = 0;
                v4c[2] = (u32)ent[5] << 12;
                VEC_Subtract(v7c, heap + 0xe0 + 0x48 * m, v64);
                VEC_Subtract(v4c, heap + 0xec + 0x48 * m, v58);
                if ((s32)v58[2] <= 0) {
                    u8 *pm;
                    s16 s;
                    float scale;
                    fx32 mag;
                    u32 a1;
                    s32 n;
                    float c1, A, F, Q0, Q;
                    double dScale, dClamp, P1, P2;
                    s32 scaled;

                    blk = heap + 0x48 * m;
                    ((u32 *)(blk + 0xd4))[0] = v64[0];
                    ((u32 *)(blk + 0xd4))[1] = v64[1];
                    ((u32 *)(blk + 0xd4))[2] = v64[2];

                    pm = heap + 32 * m;
                    s = *(s16 *)(pm + 0x42e);
                    if (s <= 60) {
                        scale = 0.5f;
                    } else if (s <= 70) {
                        scale = 0.6f;
                    } else if (s <= 80) {
                        scale = 0.7f;
                    } else if (s <= 90) {
                        scale = 0.8f;
                    } else {
                        scale = 1.0f;
                    }

                    mag = VEC_Mag(blk + 0xd4);
                    a1 = (u32)((s32)mag >> 11) >> 20;
                    n = (s32)((u32)mag + a1) >> 12;
                    c1 = (float)n;
                    if (_dgr((double)c1, 2.0)) {
                        c1 = 2.0f;
                    } else if (_dls((double)c1, 1.0)) {
                        c1 = 1.0f;
                    }

                    A = (float)(1.0 + (double)(float)(unsigned)heap[0x5ea] / 30.0);

                    dScale = (double)scale;
                    dClamp = (double)c1;
                    F = *(float *)(pm + 0x41c);
                    P1 = dClamp * (2.0 - (double)F);
                    P2 = dScale * P1;
                    Q0 = (float)(P2 / (double)A);
                    Q = Q0;
                    if (_dgr((double)Q0, 3.0)) {
                        Q = 3.0f;
                    } else if (_dls((double)Q0, 1.0)) {
                        Q = 1.0f;
                    }

                    VEC_Normalize(blk + 0xd4, blk + 0xd4);
                    scaled = (s32)(Q * 4096.0f);
                    VEC_MultAdd(scaled, blk + 0xd4, zero, blk + 0xd4);
                    ov96_02204320((u8)*(u32 *)(pm + 0x428), blk + 0xd4);
                    *(u32 *)(blk + 0xc4) = 1;
                }
                heap[0x5cc + i] = 0xc;
                heap[0x5ea] = 0;
                continue;
            }
        }
    }

    ov96_022043C0(*(u32 *)(heap + 0x5dc), 0x708 - *(u16 *)(heap + 0x5e8));
    ov96_022033FC(param_1);
    ov96_02203468(param_1);
    ov96_02203754(heap);
    ov96_02203544(param_1, heap);
    heap[0x5d0] = (*(u16 *)(heap + 0x5e8) == 0);
    ov96_02202738(heap, ov96_021E8A20(copy + 0x28));
}
