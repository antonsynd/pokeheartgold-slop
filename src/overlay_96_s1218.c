#include "global.h"

#include "math_util.h"

typedef struct Ov96Ball {
    void *unk00;
    u8 filler_04[0x20];
    fx32 targetX;
    fx32 targetY;
} Ov96Ball;

typedef struct Ov96Athlete {
    u8 filler_00[0x30];
    VecFx32 pos;
} Ov96Athlete;

typedef struct Ov96Member {
    u32 unk0;
    Ov96Athlete *athlete;
} Ov96Member;

typedef struct Ov96Team {
    Ov96Member members[3];
    u8 filler_18[0xC];
} Ov96Team;

int ov96_02215614(int centerX, int centerY, int x, int y);

int ov96_02215478(Ov96Ball *ball, Ov96Team *teams, u8 team) {
    u8 counts[4] = { 0, 0, 0, 0 };
    u8 i;
    u8 j;
    u8 best;
    int x;
    int y;

    for (i = 0; i < 4; i++) {
        Ov96Team *cur = &teams[i];

        for (j = 0; j < 3; j++) {
            Ov96Athlete *athlete = cur->members[j].athlete;
            int zone = ov96_02215614(128, 96, athlete->pos.x / FX32_ONE, athlete->pos.y / FX32_ONE);

            if (zone != 4) {
                counts[zone]++;
            }
        }
    }

    best = 0;
    for (i = 1; i < 4; i++) {
        if (counts[i - 1] > counts[i] && i != team) {
            best = i;
        }
    }

    x = (int)LCRandom() % 64;
    y = (int)LCRandom() % 32;
    switch (best) {
    case 0:
        ball->targetX = (128 - x) << FX32_SHIFT;
        ball->targetY = (96 - y) << FX32_SHIFT;
        break;
    case 1:
        ball->targetX = (128 + x) << FX32_SHIFT;
        ball->targetY = (96 - y) << FX32_SHIFT;
        break;
    case 2:
        ball->targetX = (128 - x) << FX32_SHIFT;
        ball->targetY = (96 + y) << FX32_SHIFT;
        break;
    case 3:
        ball->targetX = (128 + x) << FX32_SHIFT;
        ball->targetY = (96 + y) << FX32_SHIFT;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
    return 10;
}
