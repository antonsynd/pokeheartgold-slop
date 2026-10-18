#include "global.h"

typedef struct UnkStruct_020698E8_Anim {
    u8 filler_0[4];
    u16 frameCount;
} UnkStruct_020698E8_Anim;

typedef struct UnkStruct_020698E8_Sub {
    fx32 frame;
    u8 filler_4[4];
    UnkStruct_020698E8_Anim *anim;
} UnkStruct_020698E8_Sub;

typedef struct UnkStruct_020698E8 {
    u32 flags;
    fx32 frame;
    u8 filler_08[8];
    UnkStruct_020698E8_Sub *sub;
} UnkStruct_020698E8;

BOOL sub_020698E8(UnkStruct_020698E8 *a0, fx32 delta, BOOL loop) {
    BOOL finished = FALSE;
    fx32 end = a0->sub->anim->frameCount << FX32_SHIFT;

    a0->frame += delta;
    if (delta > 0) {
        if (a0->frame >= end) {
            finished = TRUE;
            if (loop == TRUE) {
                a0->frame -= end;
            } else {
                a0->frame = end;
            }
        }
    } else if (a0->frame <= 0) {
        finished = TRUE;
        if (loop == TRUE) {
            a0->frame += end;
        } else {
            a0->frame = 0;
        }
    }
    a0->sub->frame = a0->frame;
    if (finished == TRUE) {
        a0->flags |= 2;
    } else {
        a0->flags &= ~2;
    }
    return finished;
}
