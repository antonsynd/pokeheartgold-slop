typedef unsigned char u8;
typedef signed short s16;
typedef unsigned int u32;
typedef long long s64;

void *PokeathlonCourse_GetHeapAllocPtr4(void *);
void ov96_021FE538(void *, void *, void *);
void VEC_Add(void *, void *, void *);
u32 ov96_021EAF8C(u32);
u32 ov96_021FF5A8(void *, u32, u32, void *, void *, void *);
int ov96_021FF764(void *, void *, void *);
int VEC_Mag(void *);
void VEC_Normalize(void *, void *);
void VEC_MultAdd(int, void *, void *, void *);
void VEC_Subtract(void *, void *, void *);
void GF_AssertFail(void);
void ov96_021E8228(void *, u32, u32, u32, u32);

static inline float U2F(u32 v) {
    union { u32 u; float f; } x;
    x.u = v;
    return x.f;
}
static inline u32 F2U(float f) {
    union { u32 u; float f; } x;
    x.f = f;
    return x.u;
}

#define B(o) (*(u8 *)(p + (o)))
#define W(o) (*(int *)(p + (o)))
#define F(o) (*(float *)(p + (o)))

static void ov96_NegIf(int *v, int mode) {
    // mode 0: negate when > 0, mode 1: negate when < 0
    if (mode == 0) {
        if (*v > 0) *v = -*v;
    } else {
        if (*v < 0) *v = -*v;
    }
}

void ov96_021FDE7C(void *param_1) {
    u8 *heap = PokeathlonCourse_GetHeapAllocPtr4(param_1);
    u8 skip[4];
    int i;
    u8 *p;
    int prev[3];
    int tmp38[3];
    int vec20[3];
    int zero2c[3];
    int out50[2];

    heap[0x63c] = 0;
    for (i = 0; i < 4; i++) {
        skip[i] = 0;
        if (heap[i * 0xd4 + 0xd9] != 0) {
            ov96_021FE538(param_1, heap, heap + 0x30 + i * 0xd4);
            skip[i] = 1;
        }
    }

    p = heap + 0x30;
    for (i = 0; i < 4; i++, p += 0xd4) {
        int iVar9;
        int r4;
        u32 uVar4;
        if (skip[i] != 0) continue;

        prev[0] = W(0x7c);
        prev[1] = W(0x80);
        prev[2] = W(0x84);
        VEC_Add(p + 0x7c, p + 0x8c, p + 0x7c);
        *(int *)(p + (u32)B(0x8b) * 4 + 0xc) = *(int *)(p + (u32)B(0x8b) * 4 + 0xc) + W(0x8c);
        if (W(0x80) < 0x20000) {
            W(0x80) = 0x20000;
        } else if (W(0x80) > 0xa8000) {
            W(0x80) = 0xa8000;
        }
        uVar4 = ov96_021EAF8C(*(u32 *)(p + (u32)B(0x8b) * 4));
        uVar4 = ov96_021FF5A8(heap, W(0xcc), uVar4, prev, p + 0x7c, p + 0x7c);
        B(0xa5) = (((int)uVar4 >> 8) & 0xff) == 1;
        W(0xcc) = uVar4 & 0xff;
        switch (uVar4 & 0xff) {
        case 2: ov96_NegIf(&W(0x90), 0); break;
        case 3: ov96_NegIf(&W(0x8c), 1); break;
        case 4: ov96_NegIf(&W(0x90), 1); break;
        case 5: ov96_NegIf(&W(0x8c), 0); break;
        case 6: ov96_NegIf(&W(0x8c), 0); ov96_NegIf(&W(0x90), 0); break;
        case 7: ov96_NegIf(&W(0x8c), 1); ov96_NegIf(&W(0x90), 0); break;
        case 8: ov96_NegIf(&W(0x8c), 1); ov96_NegIf(&W(0x90), 1); break;
        case 9: ov96_NegIf(&W(0x8c), 0); ov96_NegIf(&W(0x90), 1); break;
        default: break;
        }

        iVar9 = ov96_021FF764(param_1, heap + 0x30, out50);
        if (heap[0x63c] == 0 && iVar9 != 0) {
            heap[0x63c] = 1;
            *(s16 *)(heap + 0x63e) = (s16)((int)(out50[0] + ((u32)(out50[0] >> 0xb) >> 0x14)) >> 0xc);
            heap[0x63d] = (u8)((int)(out50[1] + ((u32)(out50[1] >> 0xb) >> 0x14)) >> 0xc);
        }

        r4 = W(0x7c);
        if ((double)r4 >= 4194304.0) {
            W(0x7c) = (int)((double)r4 - 4194304.0);
            if (B(0xd1) == 0 && B(0x9c) < 0x3c) {
                B(0x9c) = B(0x9c) + 1;
            }
            if (B(0xa8) < B(0x9c)) {
                B(0xa8) = B(0x9c);
            }
            B(0xd1) = 0;
        } else if (r4 < 0) {
            W(0x7c) = (int)(4194304.0 + (double)r4);
            if (B(0x9c) != 0) {
                B(0x9c) = B(0x9c) - 1;
            } else {
                B(0xd1) = 1;
            }
        }

        tmp38[0] = W(0x8c);
        tmp38[1] = W(0x90);
        tmp38[2] = W(0x94);
        iVar9 = VEC_Mag(tmp38);
        if (B(0x9d) == 0 && B(0xa5) != 0) {
            u32 lim = (u32)*(u8 *)(p + (u32)B(0x8b) * 0x1c + 0x2c) << 0xc;
            if (iVar9 > (int)lim) {
                zero2c[0] = 0;
                zero2c[1] = 0;
                zero2c[2] = 0;
                vec20[0] = W(0x8c);
                vec20[1] = W(0x90);
                vec20[2] = W(0x94);
                VEC_Normalize(vec20, vec20);
                VEC_MultAdd((int)lim, vec20, zero2c, vec20);
                W(0x8c) = vec20[0];
                W(0x90) = vec20[1];
                W(0x94) = vec20[2];
                tmp38[0] = W(0x8c);
                tmp38[1] = W(0x90);
                tmp38[2] = W(0x94);
                iVar9 = VEC_Mag(tmp38);
            }
        }

        if (iVar9 > 0) {
            int g = (int)(4096.0 * (0.4 * (double)1.0f));
            int m;
            s64 prod;
            if (heap[0x3c2] != 0) {
                g += 0x3000;
            }
            VEC_Normalize(tmp38, tmp38);
            prod = (s64)tmp38[0] * (s64)g;
            tmp38[0] = (int)((prod + 0x800) >> 12);
            prod = (s64)tmp38[1] * (s64)g;
            tmp38[1] = (int)((prod + 0x800) >> 12);
            iVar9 = VEC_Mag(tmp38);
            m = VEC_Mag(p + 0x8c);
            if (m < iVar9) {
                W(0x8c) = 0;
                W(0x90) = 0;
            } else {
                VEC_Subtract(p + 0x8c, tmp38, p + 0x8c);
            }
        }

        iVar9 = VEC_Mag(p + 0x8c);
        {
            u32 q = *(u8 *)(p + (u32)B(0x8b) * 0x1c + 0x2e);
            if (iVar9 >= (int)((q - 1) << 0xc)) {
                B(0xa2) = 3;
            } else if (iVar9 >= (int)((q - 3) << 0xc)) {
                B(0xa2) = 2;
            } else if (iVar9 == 0) {
                B(0xa2) = 0;
            } else {
                B(0xa2) = 1;
            }
        }

        if (B(0x9d) == 0) {
            int j;
            u8 *q = p;
            for (j = 0; j < 3; j++, q += 0x1c) {
                float f6 = *(float *)(q + 0x24);
                if (j == (int)B(0x8b)) {
                    if (q[0x30] == 2) {
                        B(0xa4) = B(0xa4) - 1;
                        if (B(0xa4) == 0) {
                            q[0x30] = 1;
                            f6 = U2F(0x42200000);
                        }
                    } else {
                        if (B(0xa2) == 0) {
                            f6 = (float)((double)f6 + 0.5);
                        } else if (B(0xa2) <= 3) {
                            f6 = (float)((double)f6 - 0.5);
                        }
                        if (B(0xa3) != 0) {
                            if ((double)f6 > 40.0) {
                                f6 = U2F(0x42200000);
                            }
                        } else {
                            if (f6 > *(float *)(q + 0x28)) {
                                f6 = *(float *)(q + 0x28);
                            }
                        }
                    }
                } else {
                    f6 = (float)((double)f6 + 0.5);
                    if (f6 > *(float *)(q + 0x28)) {
                        f6 = *(float *)(q + 0x28);
                    }
                }

                if (!(f6 <= 0.0f)) {
                    *(float *)(q + 0x24) = f6;
                    if (!((double)f6 <= 40.0)) {
                        q[0x30] = 0;
                    } else {
                        q[0x30] = 1;
                    }
                } else {
                    if (j != (int)B(0x8b)) {
                        GF_AssertFail();
                    }
                    *(u32 *)(q + 0x24) = 0;
                    if (q[0x30] != 2) {
                        q[0x30] = 2;
                        B(0xa3) = 1;
                        B(0xa4) = q[0x2f];
                        ov96_021E8228(param_1, B(0xd0), B(0x8b), 1, 1);
                    }
                }
            }
        }
    }
}
