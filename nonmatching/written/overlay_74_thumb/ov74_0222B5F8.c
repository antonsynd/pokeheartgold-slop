#include "global.h"
#include "sprite.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov74_0222B5F8_Particle {
    u8 filler_00[4];
    u32 unk_04;
    u32 unk_08;
    Sprite *sprite;
    fx32 centerX;
    fx32 centerY;
    u8 filler_18[4];
    fx32 speedToCenter;
    fx32 centerZoneRadius;
    u8 filler_24[8];
    u32 animationType;
    int apparitionDelay;
    u32 unk_34;
    int speed;
    u8 filler_3C[4];
    int horizontalSpeed;
    int verticalSpeed;
    SysTask *task;
} UnkStruct_ov74_0222B5F8_Particle;

extern void ov74_0222BA48(SysTask *task, void *data);
/* the game returns a u16; the asm divides it with the signed _s32_div_f */
extern int LCRandom(void);
extern fx32 GF_SinDeg(u16 deg);
extern fx32 GF_CosDeg(u16 deg);

void ov74_0222B5F8(u8 *animMan) {
    UnkStruct_ov74_0222B5F8_Particle *particles = (UnkStruct_ov74_0222B5F8_Particle *)(animMan + 0x88);
    int i;

    for (i = 0; i < 80; i++) {
        UnkStruct_ov74_0222B5F8_Particle *particle = &particles[i];
        VecFx32 pos;
        int angle;
        int distance;

        if (particle->sprite == NULL) {
            continue;
        }

        particle->centerX = 0x80000;
        particle->centerY = 0x60000;
        particle->speedToCenter = 0xc000;
        particle->centerZoneRadius = 0x1000;
        particle->animationType = 0xff;
        particle->unk_34 = 0;
        particle->unk_04 = 0;
        particle->unk_08 = 0;

        if (i > 30) {
            particle->apparitionDelay = 15 + LCRandom() % 10;
        } else if (i > 20) {
            particle->apparitionDelay = 10 + LCRandom() % 10;
        } else if (i > 10) {
            particle->apparitionDelay = 10 + LCRandom() % 5;
        } else {
            particle->apparitionDelay = 5 + LCRandom() % 5;
        }

        particle->apparitionDelay = 0;
        particle->horizontalSpeed = particle->speed;
        particle->verticalSpeed = particle->speed;

        angle = LCRandom() % 360;
        distance = 64 + LCRandom() % 32;

        pos.x = particle->centerX + GF_SinDeg(angle) * distance;
        pos.y = particle->centerY + GF_CosDeg(angle) * distance;

        Sprite_SetMatrix(particle->sprite, &pos);
        Sprite_TryChangeAnimSeq(particle->sprite, 1);
        Sprite_SetDrawFlag(particle->sprite, FALSE);

        particle->task = SysTask_CreateOnMainQueue((SysTaskFunc)ov74_0222BA48, particle, 6);
    }
}
