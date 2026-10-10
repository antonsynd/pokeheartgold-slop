#include "global.h"
#include "math_util.h"
#include "sprite_system.h"
#include "unk_02005D10.h"
#include "pokeathlon/pokeathlon.h"

u32 ov96_0220E6DC(s32 a, u32 b);
void ov96_0220DB3C(u8 *a, u32 b, u32 c);
void ov96_0220DBE8(u8 *a, u32 b, u32 c, s32 d);
void ov96_0220D428(u8 *a, u32 b, u32 c);
void ov96_0220DC38(u32 a);
void ov96_0220DBCC(u8 *a, float b);
void ov96_0220DC7C_SetPos(void *spr, s32 x, s32 y, s32 yoff) __asm__("ManagedSprite_SetPositionXYWithSubscreenOffset");

void ov96_0220DC7C(u8 *param_1, u16 *param_2, PokeathlonCourseData *param_3)
{
    u8 f = (u8)ov96_021E5F24(param_3);
    u8 *heap = PokeathlonCourse_GetHeapAllocPtr4(param_3);
    u8 *r4 = param_1 + 4;
    u16 *r5 = param_2;
    u32 k;

    for (k = 0; k < 2; k++) {
        u32 u = *r5;
        u32 kind = (u >> 11) & 7;
        s32 x;
        s32 xp;
        s32 xpp;
        s32 v4;
        u32 big;
        u32 idx = (u >> 7) & 0xf;
        u32 sub;
        u32 w;

        x = (s32)(((u & 0x7f) << 3) >> 1);
        if (kind == 2) {
            x = (s16)(x + 0x1e0);
        }
        xp = x;
        big = (xp >= 0x120) ? 1 : 0;
        xpp = xp;
        if (big) {
            xpp = (s16)(xp - 0x120);
        }

        v4 = (s32)ov96_0220E6DC(xp, idx);

        if (kind == 0) {
            ov96_0220DB3C(r4, 2, 0);
            ManagedSprite_SetDrawFlag(*(void **)(r4 + 0x10), 0);
            ManagedSprite_SetDrawFlag(*(void **)(r4 + 0x14), 0);
        } else if (kind >= 3 && ((*(u32 *)(r4 + 0x18) >> 16) & 0xff) < 3) {
            ov96_0220DB3C(r4, 2, 0);
            ov96_0220DBE8(r4, kind, (u32)v4, (s16)(xpp - 0x28));
            sub = (*r5 >> 14) & 3;
            if (sub == f) {
                ov96_0220D428(heap + 0x6a8, 4, 4);
                ov96_0220DC38(kind);
            } else {
                ManagedSprite_SetDrawFlag(*(void **)(r4 + 0x10), 0);
            }
            PlaySE(0x8C4);
        } else if (kind == 1) {
            ov96_0220DB3C(r4, big, 1);
            ManagedSprite_SetDrawFlag(*(void **)(r4 + 0x10), 0);
            ManagedSprite_SetDrawFlag(*(void **)(r4 + 0x14), 0);
        }

        w = *(u32 *)(r4 + 0x18);
        if (((w >> 16) & 0xff) == 0 && kind == 1) {
            w = w & 0xFFFF0000u;
            *(u32 *)(r4 + 0x18) = w;
            ov96_0220DBCC(r4, 1.2f);
            PlaySE(0x8C3);
        }

        if (kind == 1 || kind == 2) {
            if (big != 0) {
                if (v4 > 0x10) {
                    ManagedSprite_SetAnimNoRestart(*(void **)(r4 + 0xc), 1);
                }
            }
            {
                u16 w16 = (u16)*(u32 *)(r4 + 0x18);
                s32 q = GF_SinDeg(w16) / 18;
                float fv = 1.2f + (float)q / 4096.0f;

                w = *(u32 *)(r4 + 0x18);
                w = (w & 0xFFFF0000u) | (((w & 0xffff) + 10) & 0xffff);
                *(u32 *)(r4 + 0x18) = w;
                ov96_0220DBCC(r4, fv);
                ov96_0220DC7C_SetPos(*(void **)(r4 + 4 * big), v4, (s16)(xpp - 0x28), 0x1e0000);
                ov96_0220DC7C_SetPos(*(void **)(r4 + 4 * big + 8), v4, xpp, 0x1e0000);
            }
        }

        w = (*(u32 *)(r4 + 0x18) & 0xFF00FFFFu) | ((((u32)*r5 >> 11) & 7) << 16);
        *(u32 *)(r4 + 0x18) = w;
        r5++;
        r4 += 0x1c;
    }
}
