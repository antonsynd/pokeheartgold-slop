#include "global.h"

typedef struct Ov96Pos16 {
    s16 x;
    s16 y;
} Ov96Pos16;

typedef struct Ov96_0221A400 {
    void *course;
    s8 cooldown;
    s8 burst;
    s8 interval;
    u8 target;
    u32 player : 2;
    u32 unk8_2 : 2;
    u32 dashing : 1;
    u32 chasing : 1;
    u32 unk8_6 : 26;
} Ov96_0221A400;

BOOL ov96_02215E94(void *course, u8 player);
int ov96_02215DBC(void *course, u8 player);
BOOL ov96_02215EB0(void *course, u8 player);
VecFx32 *ov96_02215DD4(void *course, u8 player);
void ov96_02215F80(void *course, u8 player, Ov96Pos16 *pos);
BOOL ov96_02215ECC(void *course, u8 player);
void ov96_0221A314(Ov96_0221A400 *a0);
void ov96_0221A08C(Ov96_0221A400 *a0);
BOOL ov96_0221A3AC(Ov96_0221A400 *a0);

void ov96_0221A400(Ov96_0221A400 *a0) {
    Ov96Pos16 pos;
    VecFx32 *target;

    if (ov96_02215E94(a0->course, a0->player)) {
        return;
    }

    if (a0->chasing && !a0->dashing) {
        ov96_02215DBC(a0->course, a0->player);
        if (ov96_02215DBC(a0->course, a0->target) == 3 || ov96_02215E94(a0->course, a0->target) || ov96_02215EB0(a0->course, a0->player)) {
            target = ov96_02215DD4(a0->course, a0->player);
            pos.x = target->x >> FX32_SHIFT;
            pos.y = target->y >> FX32_SHIFT;
            ov96_02215F80(a0->course, a0->player, &pos);
            a0->chasing = FALSE;
        } else {
            target = ov96_02215DD4(a0->course, a0->target);
            pos.x = target->x >> FX32_SHIFT;
            pos.y = target->y >> FX32_SHIFT;
            ov96_02215F80(a0->course, a0->player, &pos);
        }
    }

    if (a0->dashing) {
        if (ov96_02215ECC(a0->course, a0->player)) {
            int state = ov96_02215DBC(a0->course, a0->player);

            ov96_0221A314(a0);
            if (state == 3) {
                a0->dashing = FALSE;
            }
        }
        return;
    }

    a0->cooldown--;
    if (a0->cooldown > 0) {
        return;
    }
    if (a0->cooldown < 0) {
        a0->cooldown = 0;
    }

    a0->interval--;
    if (a0->interval > 0) {
        return;
    }
    a0->interval = 3;

    if (!ov96_02215ECC(a0->course, a0->player)) {
        return;
    }
    ov96_0221A08C(a0);

    a0->burst--;
    if (a0->burst > 0) {
        return;
    }
    if (ov96_0221A3AC(a0)) {
        a0->dashing = TRUE;
    }
    a0->burst = 0;
}
