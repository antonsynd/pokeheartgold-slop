#include "global.h"

typedef struct Ov96_0220D9A4 {
    void *unk00;
    u8 filler_04[8];
    int state;
    u8 filler_10[0xC];
    fx32 x;
    fx32 y;
    u8 filler_24[0x1C];
    u32 timer : 8;
    u32 unk40_8 : 21;
    u32 bonus : 1;
    u32 unk40_30 : 2;
    u8 delay;
    u8 slot;
    u8 current;
} Ov96_0220D9A4;

typedef struct Ov96Runner {
    u8 filler_00[4];
    void *unk04;
    u8 filler_08[0x14];
    fx32 x;
    fx32 y;
    u8 filler_24[0x24];
} Ov96Runner;

typedef struct Ov96Distances {
    fx32 dist[3];
} Ov96Distances;

extern const Ov96Distances ov96_0221CEF4;

void ov96_0220D910(Ov96_0220D9A4 *a0);
void ov96_0220D744(Ov96_0220D9A4 *a0, void *a1);
BOOL ov96_0220D8C4(Ov96_0220D9A4 *a0, fx32 x, fx32 y);
void ov96_021E8228(void *a0, u8 slot, u8 current, int a3, int a4);
BOOL ov96_021EB0CC(void *a0, fx32 x, fx32 y, int targetX, int targetY);

void ov96_0220D9A4(Ov96_0220D9A4 *a0, void *a1) {
    switch (a0->state) {
    case 4:
        a0->state = 2;
        break;
    case 3:
        a0->delay--;
        if (a0->delay == 0) {
            ov96_0220D910(a0);
            a0->state = 4;
        }
        break;
    case 2:
        ov96_0220D744(a0, a1);
        if (ov96_0220D8C4(a0, a0->x, a0->y)) {
            ov96_021E8228(a0->unk00, a0->slot, a0->current, 1, 1);
            ov96_021E8228(a0->unk00, a0->slot, a0->current, 5, 1);
            if (a0->bonus) {
                ov96_021E8228(a0->unk00, a0->slot, a0->current, 8, 1);
            }
            a0->bonus = FALSE;
            a0->delay = 90;
            a0->state = 3;
        }
        break;
    case 1:
        a0->timer--;
        if (a0->timer == 0) {
            a0->state = 2;
        }
        ov96_0220D744(a0, a1);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

s8 ov96_0220DAA0(Ov96Runner *runners, s16 targetX, s16 targetY) {
    int i;
    int nearest = 12;
    Ov96Distances distances = ov96_0221CEF4;
    fx32 best = FX32_CONST(256);

    for (i = 0; i < 3; i++) {
        if (ov96_021EB0CC(runners[i].unk04, runners[i].x, runners[i].y, targetX, targetY)) {
            VecFx32 delta = { 0, 0, 0 };

            delta.x = MATH_ABS((targetX << FX32_SHIFT) - runners[i].x);
            delta.y = MATH_ABS((targetY << FX32_SHIFT) - runners[i].y);
            distances.dist[i] = VEC_Mag(&delta);
        }
    }
    for (i = 0; i < 3; i++) {
        if (distances.dist[i] < best) {
            best = distances.dist[i];
            nearest = i;
        }
    }
    return nearest;
}
