#include "global.h"

typedef struct Ov01Tween {
    void *arg;
    s16 value;
    s16 timer;
    s16 interval;
    s16 counter;
    s16 target;
    s16 targetInterval;
    s16 intervalStep;
    s16 period;
    int step;
    void (*callback)(void *arg, s16 value);
} Ov01Tween;

u32 ov01_021EC538(Ov01Tween *tween) {
    u32 done = 0;
    BOOL decreasing;

    if (tween->intervalStep == 0) {
        done |= 1;
    } else {
        if (tween->intervalStep > 0) {
            decreasing = FALSE;
        } else {
            decreasing = TRUE;
        }
        if ((tween->interval >= tween->targetInterval && decreasing == FALSE) || (tween->interval <= tween->targetInterval && decreasing == TRUE)) {
            done |= 1;
            tween->interval = tween->targetInterval;
        }
    }

    if (tween->step == 0) {
        done |= 2;
    } else {
        if (tween->step > 0) {
            decreasing = FALSE;
        } else {
            decreasing = TRUE;
        }
        if ((tween->value >= tween->target && decreasing == FALSE) || (tween->value <= tween->target && decreasing == TRUE)) {
            done |= 2;
            tween->value = tween->target;
        }
    }

    tween->timer--;
    if (tween->timer <= 0) {
        tween->callback(tween->arg, tween->value);
        tween->timer = tween->interval;
        if (!(done & 1)) {
            tween->interval += tween->intervalStep;
        }
        if (!(done & 2)) {
            tween->counter++;
            if (tween->counter >= tween->period) {
                tween->counter = 0;
                tween->value += tween->step;
            }
        }
    }
    return done;
}
