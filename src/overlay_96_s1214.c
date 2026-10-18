#include "global.h"

typedef struct Ov96Ball {
    void *unk00;
    u8 filler_04[0x2C];
    VecFx32 pos;
    u8 filler_3C[0xC];
    int unk48;
    u8 filler_4C[0x2C];
    int unk78;
} Ov96Ball;

typedef struct Ov96Runner {
    u8 filler_00[8];
    VecFx32 pos;
    u8 filler_14[0x24];
    u8 type;
    u8 stunned;
    u8 filler_3A[0x12];
} Ov96Runner;

int ov96_02215614(int centerX, int centerY, int x, int y);
BOOL ov96_0221567C(int x, int y, int ballX, int ballY, int ballZone, int zone);
BOOL ov96_02215058(Ov96Ball *ball, Ov96Runner *runner, u8 result, u8 zone);
void ov96_021E8228(void *a0, u8 a1, u8 a2, int a3, int a4);

BOOL ov96_02214EB4(void *a0, u8 a1, u8 a2, Ov96Ball *ball, Ov96Runner *runners) {
    u8 results[2];
    VecFx32 diff;
    fx32 dist;
    int ballZone;
    u8 i;
    BOOL ret;

    if (ball->unk78 != 0) {
        return FALSE;
    }
    if (ball->unk48 != 0) {
        return FALSE;
    }

    ballZone = ov96_02215614(128, 96, ball->pos.x / FX32_ONE, ball->pos.y / FX32_ONE);

    for (i = 0; i < 2; i++) {
        Ov96Runner *runner = &runners[i];
        int zone;

        if (runner->stunned == 0 && runner->type != 0) {
            zone = ov96_02215614(128, 96, runner->pos.x / FX32_ONE, runner->pos.y / FX32_ONE);
        } else {
            zone = 4;
        }

        if (zone != 4) {
            if (a1 == zone) {
                if (ov96_0221567C(runner->pos.x / FX32_ONE, runner->pos.y / FX32_ONE, ball->pos.x / FX32_ONE, ball->pos.y / FX32_ONE, ballZone, a1)) {
                    results[i] = 7;
                } else {
                    results[i] = 6;
                }
            } else {
                results[i] = 6;
            }
        } else {
            results[i] = 5;
        }
    }

    if ((results[0] == 7) == (results[1] == 7)) {
        VEC_Subtract(&ball->pos, &runners[0].pos, &diff);
        dist = VEC_Mag(&diff);
        VEC_Subtract(&ball->pos, &runners[1].pos, &diff);
        if (dist >= VEC_Mag(&diff)) {
            ret = ov96_02215058(ball, runners, results[0], a1);
        } else {
            runners++;
            ret = ov96_02215058(ball, runners, results[1], a1);
        }
    } else if (results[0] >= results[1]) {
        ret = ov96_02215058(ball, runners, results[0], a1);
    } else {
        runners++;
        ret = ov96_02215058(ball, runners, results[1], a1);
    }

    if (ball->unk78 == 1) {
        ov96_021E8228(a0, a1, a2, 6, 1);
    }
    return ret;
}
