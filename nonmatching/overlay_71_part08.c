#include "global.h"

#include "constants/sndseq.h"

#include "overlay_71.h"
#include "task.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov71_0224BABC {
    u32 unk_00;
    int subState;
    void *phase;
    int timer;
    u32 unk_10;
    void *model;
    int currentAlpha;
    int alphaStep;
    int alphaFrames;
    VecFx32 position;
    int velocityY;
} UnkStruct_ov71_0224BABC;

void ov71_0224BA48(SysTask *task);
void ov71_0224BA64(UnkStruct_ov71_0224BABC *ballOpen);
void ov71_0224BAA0(UnkStruct_ov71_0224BABC *ballOpen, int speed, int frames);
void ov71_0224B910(void *phase, int arg1, int arg2, int arg3);
BOOL ov71_0224B960(void *phase);
void ov71_022476C4(void *model, VecFx32 *position);
void ov71_02247708(void *model, int alpha);

void ov71_0224BABC(SysTask *task, void *param);

void ov71_0224BABC(SysTask *task, void *param) {
    UnkStruct_ov71_0224BABC *ballOpen = param;

    ov71_0224BA64(ballOpen);

    switch (ballOpen->subState) {
    case 0:
        if (ballOpen->alphaFrames) {
            ballOpen->currentAlpha += ballOpen->alphaStep;
            ballOpen->alphaFrames--;
            ov71_02247708(ballOpen->model, ballOpen->currentAlpha >> 12);
        } else {
            ov71_02247708(ballOpen->model, 31);
            ballOpen->subState++;
        }
        break;
    case 1:
        ov71_0224BAA0(ballOpen, 6 << 6, 30);
        ballOpen->timer = 0;
        ballOpen->subState++;
        break;
    case 2:
        if (++ballOpen->timer > 10) {
            ballOpen->velocityY = 0;
            ballOpen->subState++;
        }
        break;
    case 3:
        ballOpen->position.y += ballOpen->velocityY;
        ballOpen->velocityY -= 30 << 6;

        ov71_022476C4(ballOpen->model, &ballOpen->position);

        if (ballOpen->position.y < -0xB000) {
            PlaySE(SEQ_SE_DP_KON);
            ballOpen->velocityY *= -1;

            ov71_0224B910(ballOpen->phase, 0, 16, 8);
            ballOpen->subState++;
        }
        break;
    case 4:
        ballOpen->position.y += ballOpen->velocityY;

        if (ballOpen->position.y >= 19 * FX32_ONE) {
            ballOpen->position.y = 19 * FX32_ONE;
        }

        ov71_022476C4(ballOpen->model, &ballOpen->position);

        if (ballOpen->position.y == 19 * FX32_ONE) {
            ballOpen->subState++;
        }
        break;
    case 5:
        if (ov71_0224B960(ballOpen->phase)) {
            ov71_0224BA48(task);
        }
        break;
    }
}
