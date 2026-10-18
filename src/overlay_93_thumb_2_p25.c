#include "global.h"

#include "sound.h"
#include "sprite_system.h"

typedef struct Ov93Mark {
    u8 filler_0[6];
    u8 countdown;
    u8 filler_7[5];
} Ov93Mark;

typedef struct Ov93_02260AD8 {
    u8 filler_0000[0x380C];
    Ov93Mark marks[5];
} Ov93_02260AD8;

typedef struct Ov93Runner {
    ManagedSprite *sprite;
    u8 anim;
    u8 state;
    u8 paused;
    u8 filler_7;
    s16 speed;
} Ov93Runner;

u8 ov93_02260B70(s16 speed);
int ov93_0225FEAC(Ov93_02260AD8 *a0);

void ov93_02260AD8(Ov93_02260AD8 *a0, Ov93Runner *runner) {
    int i;
    int distance;
    Ov93Mark *mark;

    if (runner->paused != 0) {
        return;
    }
    switch (runner->state) {
    case 3:
        if (!ManagedSprite_IsAnimated(runner->sprite)) {
            runner->speed += 5;
            runner->anim = ov93_02260B70(runner->speed);
            runner->state = 1;
            ManagedSprite_SetAnim(runner->sprite, runner->anim);
            ManagedSprite_SetPositionXYWithSubscreenOffset(runner->sprite, -8, 32, FX32_CONST(352));
            mark = a0->marks;
            for (i = 0; i < 5; i++) {
                if (mark->countdown == 0) {
                    mark->countdown = 4;
                } else {
                    mark->countdown--;
                }
                mark++;
            }
        }
        break;
    case 1:
        distance = ov93_0225FEAC(a0);
        if (runner->state == 1 && distance > 75) {
            runner->state = 2;
            ManagedSprite_SetAnim(runner->sprite, runner->anim + 3);
            PlaySE(SEQ_SE_PL_ALERT4);
        }
        break;
    }
}
