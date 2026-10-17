#include "global.h"

typedef struct AnmResHeader {
    u8 header[4];
    u16 numFrame;
} AnmResHeader;

typedef struct Field3DModelAnimation {
    void *fileDataRaw;
    void *animRaw;
    NNSG3dAnmObj *animObj;
    fx32 frame;
    BOOL shouldRetainData;
} Field3DModelAnimation;

void Field3dModelAnimation_FrameAdvanceAndLoop(Field3DModelAnimation *anim, fx32 framesBy) {
    fx32 numFrames = ((AnmResHeader *)anim->animObj->resAnm)->numFrame * FX32_ONE;

    if (framesBy > 0) {
        anim->frame = (anim->frame + framesBy) % numFrames;
    } else {
        anim->frame += framesBy;
        if (anim->frame < 0) {
            anim->frame += numFrames;
        }
    }
    anim->animObj->frame = anim->frame;
}
