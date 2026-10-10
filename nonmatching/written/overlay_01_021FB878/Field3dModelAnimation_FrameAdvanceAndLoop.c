#include "global.h"

typedef struct {
    u8 unk0[4];
    u16 numFrames;
} UnkStruct_FrameAdvance_Res;

typedef struct {
    fx32 frame;
    u8 unk4[4];
    UnkStruct_FrameAdvance_Res *res;
} UnkStruct_FrameAdvance_Obj;

typedef struct {
    u8 unk0[8];
    UnkStruct_FrameAdvance_Obj *obj;
    fx32 frame;
} UnkStruct_FrameAdvance_Anim;

s32 Field3dModelAnimation_FrameAdvanceAndLoop(UnkStruct_FrameAdvance_Anim *anim, s32 frames) {
    fx32 end = anim->obj->res->numFrames * FX32_ONE;
    if (frames > 0) {
        anim->frame = (anim->frame + frames) % end;
    } else {
        anim->frame += frames;
        if (anim->frame < 0) {
            anim->frame += end;
        }
    }
    anim->obj->frame = anim->frame;
    return (s32)anim->obj;
}
