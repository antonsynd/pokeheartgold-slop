#include "global.h"
#include "touchscreen.h"
#include "sprite_system.h"
#include "unk_02005D10.h"

extern u8 ov96_0221CC04[];
u32 ov96_0220B730(u32 a);
u32 ov96_0220B744(u32 a);
void ov96_0220B6EC(u32 a);
u32 ov96_0220B788(u32 a);

void ov96_0220A298(u8 *param_1, u32 param_2)
{
    u32 nx = 0;
    u32 ny = 0;
    u32 hx = 0;
    u32 hy = 0;
    u32 f1 = 0;
    u32 f2 = 0;
    u32 f3 = 0;
    u32 r4;
    u32 w;
    s32 diff;
    s32 hit;

    ov96_0220B730(*(u32 *)(param_1 + 0x4c));
    r4 = 0x264;

    if (System_GetTouchNew() != 0) {
        System_GetTouchNewCoords(&nx, &ny);
        if (nx >= 0x60 && nx <= 0xb0) {
            f3 = 1;
        }
        if (f3 != 0 && ny >= 0x48) {
            f2 = 1;
        }
        if (f2 != 0 && ny <= 0x98) {
            f1 = 1;
        }
        if (param_2 != 0 || f1 != 0) {
            w = (*(u32 *)(param_1 + r4) & 0xFFFF00FFu) | ((ny << 24) >> 16);
            *(u32 *)(param_1 + r4) = w;
            w = (*(u32 *)(param_1 + r4) & 0xFF00FFFFu) | ((ny << 24) >> 8);
            *(u32 *)(param_1 + r4) = w;
            w = (*(u32 *)(param_1 + r4) & ~0xffu) | 1u;
            *(u32 *)(param_1 + r4) = w;
            w = *(u32 *)(param_1 + r4) | (1u << 24);
            *(u32 *)(param_1 + r4) = w;
            goto L_3A2;
        }
        goto L_3A2;
    }

    if ((*(u32 *)(param_1 + r4) >> 24) & 1) {
        if (System_GetTouchHeld() == 0) {
            w = *(u32 *)(param_1 + r4);
            diff = (s32)(((w << 16) >> 24) - ((w << 8) >> 24));
            if (diff >= 0x20) {
                if (ov96_0220B744(*(u32 *)(param_1 + 0x4c)) != 0) {
                    ov96_0220B6EC(*(u32 *)(param_1 + 0x4c));
                }
            }
            *(u32 *)(param_1 + r4) = *(u32 *)(param_1 + r4) & 0xFEFFFFFFu;
            goto L_3A2;
        }
    }

    if ((*(u32 *)(param_1 + r4) >> 24) & 1) {
        System_GetTouchHeldCoords(&hx, &hy);
        w = (*(u32 *)(param_1 + r4) & 0xFF00FFFFu) | ((hy << 24) >> 8);
        *(u32 *)(param_1 + r4) = w;
        w = *(u32 *)(param_1 + r4);
        w = (w & ~0xffu) | (((w & 0xff) + 1) & 0xff);
        *(u32 *)(param_1 + r4) = w;
        if ((w & 0xff) >= 0xa) {
            *(u32 *)(param_1 + r4) = w & 0xFEFFFFFFu;
        }
    }

L_3A2:
    if (System_GetTouchNew() == 0) {
        if (System_GetTouchHeld() > 0) {
            return;
        }
    }

    hit = TouchscreenHitbox_FindRectAtTouchNew(ov96_0221CC04);
    if (hit != -1) {
        if (ov96_0220B744(*(u32 *)(param_1 + 0x4c)) != 0) {
            PlaySE(0x89B);
            r4 = 0x14;
            ov96_0220B6EC(*(u32 *)(param_1 + 0x4c));
        } else {
            PlaySE(0x89C);
            r4 = 0x16;
        }
    } else {
        if (ov96_0220B744(*(u32 *)(param_1 + 0x4c)) == 0) {
            r4 = 0x15;
        } else if (ov96_0220B788(*(u32 *)(param_1 + 0x4c)) != 0) {
            r4 = 0x17;
        } else {
            r4 = 0x13;
        }
    }
    ManagedSprite_SetAnimNoRestart(*(void **)(param_1 + 0x28), r4);
}
