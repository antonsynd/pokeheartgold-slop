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
BOOL ov96_022156E8(VecFx32 *ballPos, fx32 ballRadius, VecFx32 *runnerPos, fx32 runnerRadius);
BOOL ov96_02215650(int x, int y, int ballX, int ballY, int zone, int a5);
int ov96_021EAF8C(void *a0);
BOOL ov96_02214DBC(Ov96Ball *ball, Ov96Runner *runner, u8 result, int zone);
void ov96_021E8228(void *a0, u8 a1, u8 a2, int a3, int a4);

BOOL ov96_02214C3C(void *a0, u8 a1, u8 a2, Ov96Ball *ball, Ov96Runner *runners) {
    u8 results[2];
    VecFx32 *ballPos;
    int range;
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
    i = 0;
    ballPos = &ball->pos;

    for (; i < 2; i++) {
        Ov96Runner *runner = &runners[i];
        int zone;

        if (runner->stunned == 0 && runner->type != 0) {
            zone = ov96_02215614(128, 96, runner->pos.x / FX32_ONE, runner->pos.y / FX32_ONE);
        } else {
            zone = 4;
        }

        if (zone != 4) {
            range = 0;
            if (runner->type == 1) {
                range = 8;
            } else if (runner->type == 2) {
                range = 12;
            } else {
                GF_ASSERT(FALSE);
            }

            if (ov96_022156E8(ballPos, ov96_021EAF8C(ball->unk00) << FX32_SHIFT, &runner->pos, range << FX32_SHIFT)) {
                results[i] = 1;
            } else if (ballZone == zone) {
                if (ov96_02215650(runner->pos.x / FX32_ONE, runner->pos.y / FX32_ONE, ball->pos.x / FX32_ONE, ball->pos.y / FX32_ONE, ballZone, a1)) {
                    results[i] = 4;
                } else {
                    results[i] = 3;
                }
            } else {
                results[i] = 2;
            }
        } else {
            results[i] = 0;
        }
    }

    if (results[0] >= results[1]) {
        ret = ov96_02214DBC(ball, runners, results[0], ballZone);
    } else {
        runners++;
        ret = ov96_02214DBC(ball, runners, results[1], ballZone);
    }

    if (ball->unk78 == 1) {
        ov96_021E8228(a0, a1, a2, 6, 1);
    }
    return ret;
}
