#include "global.h"
#include "sprite.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov74_0222BA48 {
    u8 filler_00[4];
    int timeSinceCenterReached;
    int animationDone;
    Sprite *sprite;
    fx32 centerX;
    fx32 centerY;
    u8 filler_18[4];
    fx32 speedToCenter;
    fx32 centerZoneRadius;
    int inFinalAnimationPhase;
    int angleAroundCenter;
    int animationType;
    int apparitionDelay;
    int movementAngle;
    int speed;
    int spiralOutAcceleration;
    int horizontalSpeed;
    int verticalSpeed;
} UnkStruct_ov74_0222BA48;

extern BOOL ov74_0222B950(s16 centerX, s16 centerY, f32 particleX, f32 particleY, f32 *outX, f32 *outY, f32 length, s16 minDistance);
extern u16 FX_Atan2Idx(fx32 y, fx32 x);
extern fx32 GF_SinDeg(u16 deg);
extern fx32 GF_CosDeg(u16 deg);

void ov74_0222BA48(SysTask *task, UnkStruct_ov74_0222BA48 *particle) {
    VecFx32 pos;
    f32 towardsX;
    f32 towardsY;
    BOOL moving;

    if (particle->apparitionDelay != 0) {
        Sprite_SetAnimationFrame(particle->sprite, 0);
        particle->apparitionDelay--;
        return;
    }
    Sprite_SetDrawFlag(particle->sprite, TRUE);

    pos = *Sprite_GetMatrixPtr(particle->sprite);

    moving = ov74_0222B950(particle->centerX >> FX32_SHIFT, particle->centerY >> FX32_SHIFT, FX_FX32_TO_F32(pos.x), FX_FX32_TO_F32(pos.y), &towardsX, &towardsY, FX_FX32_TO_F32(particle->speedToCenter), FX_FX32_TO_F32(particle->centerZoneRadius));
    if (moving && particle->inFinalAnimationPhase == 0) {
        pos.x += FX_F32_TO_FX32(towardsX);
        pos.y += FX_F32_TO_FX32(towardsY);
        Sprite_SetMatrix(particle->sprite, &pos);
        return;
    }

    if (particle->inFinalAnimationPhase == 0) {
        int dx = particle->centerX - pos.x;
        int dy = particle->centerY - pos.y;
        fx32 fx = FX_F32_TO_FX32(dx);
        fx32 fy = FX_F32_TO_FX32(dy);

        particle->angleAroundCenter = FX_Atan2Idx(fy, fx);
        particle->inFinalAnimationPhase++;
        return;
    }
    if (particle->inFinalAnimationPhase != 1) {
        return;
    }

    if (particle->timeSinceCenterReached < 20) {
        particle->timeSinceCenterReached++;
    } else {
        particle->animationDone = TRUE;
    }
    particle->angleAroundCenter += 8;

    if (particle->animationType == 0) {
        particle->movementAngle += 8;
        particle->movementAngle %= 360;
        particle->horizontalSpeed = (particle->speed * GF_CosDeg(particle->movementAngle)) >> FX32_SHIFT;
        pos.x = particle->centerX + GF_SinDeg(particle->angleAroundCenter) * particle->horizontalSpeed;
        pos.y = particle->centerY + GF_CosDeg(particle->angleAroundCenter) * particle->verticalSpeed;
    } else if (particle->animationType == 1) {
        particle->movementAngle += 8;
        particle->movementAngle %= 360;
        particle->verticalSpeed = (particle->speed * GF_SinDeg(particle->movementAngle)) >> FX32_SHIFT;
        pos.x = particle->centerX + GF_SinDeg(particle->angleAroundCenter) * particle->horizontalSpeed;
        pos.y = particle->centerY + GF_CosDeg(particle->angleAroundCenter) * particle->verticalSpeed;
    } else if (particle->animationType == 2) {
        particle->movementAngle += 8;
        particle->movementAngle %= 360;
        particle->verticalSpeed = (particle->speed * GF_SinDeg(particle->movementAngle)) >> FX32_SHIFT;
        pos.x = particle->centerX - GF_SinDeg(particle->angleAroundCenter) * particle->horizontalSpeed;
        pos.y = particle->centerY - GF_CosDeg(particle->angleAroundCenter) * particle->verticalSpeed;
    } else if (particle->animationType == 3) {
        particle->movementAngle += 8;
        particle->movementAngle %= 360;
        particle->horizontalSpeed = (particle->speed * GF_CosDeg(particle->movementAngle)) >> FX32_SHIFT;
        pos.x = particle->centerX - GF_SinDeg(particle->angleAroundCenter) * particle->horizontalSpeed;
        pos.y = particle->centerY - GF_CosDeg(particle->angleAroundCenter) * particle->verticalSpeed;
    } else if (particle->animationType == 4) {
        if (particle->speed < 96) {
            particle->speed += particle->spiralOutAcceleration;
        }
        particle->horizontalSpeed = particle->speed;
        particle->verticalSpeed = particle->speed;
        pos.x = particle->centerX + GF_SinDeg(particle->angleAroundCenter) * particle->horizontalSpeed;
        pos.y = particle->centerY + GF_CosDeg(particle->angleAroundCenter) * particle->verticalSpeed;
    } else if (particle->animationType == 5) {
        if (particle->speed < 96) {
            particle->speed += particle->spiralOutAcceleration;
        }
        particle->horizontalSpeed = particle->speed;
        particle->verticalSpeed = particle->speed;
        pos.x = particle->centerX - GF_SinDeg(particle->angleAroundCenter) * particle->horizontalSpeed;
        pos.y = particle->centerY - GF_CosDeg(particle->angleAroundCenter) * particle->verticalSpeed;
    } else {
        particle->timeSinceCenterReached = 10;
        particle->speedToCenter += 0x800;

        moving = ov74_0222B950(particle->centerX >> FX32_SHIFT, particle->centerY >> FX32_SHIFT, FX_FX32_TO_F32(pos.x), FX_FX32_TO_F32(pos.y), &towardsX, &towardsY, FX_FX32_TO_F32(particle->speedToCenter), 0);
        if (moving) {
            pos.x += FX_F32_TO_FX32(towardsX);
            pos.y += FX_F32_TO_FX32(towardsY);
            Sprite_SetMatrix(particle->sprite, &pos);
        } else {
            particle->animationDone = TRUE;
        }
    }

    particle->angleAroundCenter %= 360;
    Sprite_SetMatrix(particle->sprite, &pos);
}
