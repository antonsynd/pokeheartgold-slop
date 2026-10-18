#include "global.h"

#include "constants/sndseq.h"

#include "camera.h"
#include "sound.h"

typedef struct Ov89CameraAnim {
    CameraAngle angle;
    int target;
    s16 timer;
    u8 state;
} Ov89CameraAnim;

typedef struct Ov89_0225C648 {
    u8 filler_00[0xA0];
    Ov89CameraAnim cameraAnim;
} Ov89_0225C648;

#pragma optimization_level 2
#pragma opt_common_subs off

BOOL ov89_0225C648(void *a0, Ov89_0225C648 *a1, Camera *camera) {
    Ov89CameraAnim *anim = &a1->cameraAnim;
    CameraAngle delta = { 0, 0, 0, 0 };
    CameraAngle angle;

    switch (anim->state) {
    case 0:
        angle = Camera_GetAngle(camera);
        anim->angle = angle;
        anim->target = anim->angle.x;
        anim->state++;
        PlaySE(SEQ_SE_PL_TIMER03);
    case 1:
        delta.x -= 0xAAA;
        anim->target -= 0xAAA;
        Camera_AdjustAnglePos(&delta, camera);
        if (anim->target <= anim->angle.x - 0x2000) {
            anim->state++;
        }
        break;
    case 2:
        anim->timer++;
        if (anim->timer >= 16) {
            anim->state++;
        }
        break;
    case 3:
        delta.x += 0x200;
        anim->target += 0x200;
        Camera_AdjustAnglePos(&delta, camera);
        if (anim->target >= anim->angle.x) {
            Camera_SetAnglePos(&anim->angle, camera);
            return TRUE;
        }
        break;
    }
    return FALSE;
}
