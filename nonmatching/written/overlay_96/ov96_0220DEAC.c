#include "global.h"
#include "sprite_system.h"
#include "unk_02005D10.h"
#include "pokeathlon/pokeathlon.h"

void *ov96_021EAA04(void *data, u32 idx);
void ov96_021EB0A4(void *a, u32 b, u32 c, void *d, void *e);
void ov96_021EB06C(void *a, u32 b, u32 c, void *d, void *e);
void ov96_021EB01C(void *a, u32 b, u32 c, u32 d);
void ov96_021EB10C(void *a, float b, float c);
void ov96_021EAC0C(void *a, u32 b);
void ov96_021EAB38(void *a, u32 b);
void ov96_0220D52C(void *a, void *b);
void ov96_0220D554(void *a, u32 b);
u8 *ov96_0220F378(void *a, u32 b, u32 c);
u32 ov96_0220E8C0(u8 *a, u32 b, void *c);
u32 ov96_0220F3B4(u8 *a);
void ov96_021EABA8(void *a, u32 b);
int ov96_0220DE90(void *a, void *b);
void MATH_QSort(void *data, u32 nel, u32 size, int (*comp)(void *, void *), void *work);

void ov96_0220DEAC(u8 *param_1, u8 *param_2, PokeathlonCourseData *param_3)
{
    u32 E[24];
    u8 *h;
    u8 *r5;
    u32 i;
    u32 k;
    void *r4;
    u32 r7;
    u32 F;
    u32 W;
    u32 v3c[1];
    u32 v38[1];
    u32 v30[1];
    u32 v34[1];
    u32 v2c[1];
    u32 v24 = 0xff;
    u32 v28 = 0xff;
    u8 *pi;

    for (k = 0; k < 24; k++) {
        E[k] = 0;
    }
    h = PokeathlonCourse_GetHeapAllocPtr4(param_3);
    r5 = param_1 + 0x3c;

    for (i = 0; i < 12; i++) {
        u8 *ent = (u8 *)E + 8 * i;

        r4 = ov96_021EAA04(*(void **)(h + 0x20), (u8)i);
        if (r5 == 0) {
            GF_AssertFail();
        }
        if (r4 == 0) {
            GF_AssertFail();
        }
        pi = param_2 + i;
        r7 = pi[0x10];
        ov96_021EB0A4(r4, pi[4], r7, v3c, v38);
        ent[0] = (u8)r7;
        *(void **)(ent + 4) = r4;

        F = (((*(u32 *)(param_2 + 0x20)) << 13) >> 20) >> i & 1;
        F = (u8)F;

        if (F == 1 && ((*(u32 *)(r5 + 0x18) >> 19) & 1) == 0) {
            ov96_0220D554(r4, 1);
            W = *(u32 *)(r5 + 0x18);
            W = (W | (1u << 18)) & 0xFFFF00FFu;
            W = W | (6u << 8);
            *(u32 *)(r5 + 0x18) = W;
            *(u32 *)(r5 + 0x14) = 1u << 12;
            PlaySE(0x89E);
        } else if (F == 0 && ((*(u32 *)(r5 + 0x18) >> 19) & 1) == 1) {
            ManagedSprite_SetPositionXYWithSubscreenOffset(*(void **)r5, (s16)v3c[0], (s16)v38[0], 0x1e0000);
            ManagedSprite_SetDrawFlag(*(void **)r5, 1);
            ManagedSprite_ResetSpriteAnimCtrlState(*(void **)r5);
            ov96_0220D554(r4, 0);
            ov96_021EB10C(r4, 1.0f, 1.0f);
            ov96_021EAB38(r4, 1);
            *(u32 *)(r5 + 0x18) = *(u32 *)(r5 + 0x18) & 0xFFFBFFFFu;
            PlaySE(0x8B6);
        }

        /* L_DFC6 */
        W = (*(u32 *)(r5 + 0x18) & 0xFFF7FFFFu) | ((F & 1) << 19);
        *(u32 *)(r5 + 0x18) = W;
        if (((W >> 18) & 1) == 0) {
            /* L_E058 */
            u32 c2 = 2 * i;
            u32 t1 = (*(u32 *)(param_2 + 0x1c) & 0xffffffu) >> c2;
            u32 t2;

            r7 = (t1 & 3) & 0xff;
            ov96_021EB01C(r4, v3c[0], v38[0], 1);
            ov96_021EAC0C(r4, r7 + 1);
            t2 = (((*(u32 *)(param_2 + 0x20)) << 1) >> 20) >> i;
            if (t2 & 1) {
                u32 q = i / 3;
                u32 rm = i % 3;
                u8 *T;
                u32 f2;

                T = ov96_0220F378(param_3, (u8)q, (u8)rm);
                r7 = (u32)T;
                f2 = ov96_021E5F24(param_3);
                if (q == f2 && ((W >> 16) & 1) == 0 && ((W >> 17) & 1) == 0) {
                    if (T[2] == 0) {
                        PlaySE(0x5F3);
                    } else {
                        PlaySE(0x8C5);
                    }
                }
                if (T[2] == 0) {
                    ov96_0220D52C(r5 + 4, r4);
                    W = *(u32 *)(r5 + 0x18);
                    W = W | (2u << 16);
                    *(u32 *)(r5 + 0x18) = W;
                } else {
                    W = *(u32 *)(r5 + 0x18);
                    W = W | (1u << 16);
                    *(u32 *)(r5 + 0x18) = W;
                }
            } else {
                W = *(u32 *)(r5 + 0x18) & 0xFFFDFFFFu;
                *(u32 *)(r5 + 0x18) = W;
            }
            /* L_E114 */
            if (((*(u32 *)(r5 + 0x18) >> 16) & 1) != 0) {
                u32 q2 = i / 3;
                u32 rm2 = i % 3;
                u8 *T2 = ov96_0220F378(param_3, (u8)q2, (u8)rm2);
                u32 e8 = ov96_0220E8C0(T2, *(u32 *)(r5 + 0x18) & 0xff, v2c);
                u32 w2;
                u32 x3;

                ov96_021EB01C(r4, v3c[0], v38[0] + e8, 0);
                ov96_021EB10C(r4, *(float *)&v2c[0], *(float *)&v2c[0]);
                x3 = ov96_0220F3B4(T2);
                W = (*(u32 *)(r5 + 0x18) & ~v24) | (((*(u32 *)(r5 + 0x18) & 0xff) + 1) & 0xff);
                *(u32 *)(r5 + 0x18) = W;
                w2 = W & 0xff;
                if (w2 > x3) {
                    W = (*(u32 *)(r5 + 0x18) & 0xFFFEFFFFu) & ~v28;
                    *(u32 *)(r5 + 0x18) = W;
                    ov96_021EB01C(r4, v3c[0], v38[0], 0);
                    ov96_021EB10C(r4, 1.0f, 1.0f);
                }
            }
        } else {
            /* bit18 set */
            W = *(u32 *)(r5 + 0x18);
            W = (W & 0xFFFF00FFu) | ((((W >> 8) & 0xff) - 1) & 0xff) << 8;
            *(u32 *)(r5 + 0x18) = W;
            if (((W >> 8) & 0xff) == 0) {
                ov96_021EAB38(r4, 0);
            } else {
                float f2;

                *(u32 *)(r5 + 0x14) = *(u32 *)(r5 + 0x14) - 0x19A;
                f2 = (float)(s32)*(u32 *)(r5 + 0x14) / 4096.0f;
                ov96_021EB10C(r4, f2, f2);
                ov96_021EB06C(r4, pi[4], pi[0x10], v34, v30);
                if ((s32)v30[0] >= 0xb4) {
                    u32 b1 = (*(u32 *)(r5 + 0x18) >> 8) & 0xff;
                    u32 idx4 = (6 - b1) << 2;
                    ov96_021EB01C(r4, v3c[0], r7 + idx4, 1);
                }
            }
        }
        r5 += 0x1c;
    }

    {
        u32 zero = 0;
        (void)zero;
    }
    MATH_QSort(E, 12, 8, ov96_0220DE90, (void *)0);
    for (i = 0; i < 12; i++) {
        u8 *ent = (u8 *)E + 8 * i;

        if (*(u32 *)(ent + 4) == 0) {
            GF_AssertFail();
        }
        ov96_021EABA8(*(void **)(ent + 4), i + 7);
    }
}
