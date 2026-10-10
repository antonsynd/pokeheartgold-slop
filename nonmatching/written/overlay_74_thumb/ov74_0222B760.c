#include "global.h"
#include "sprite.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov74_0222B760_Particle {
    u8 filler_00[4];
    u32 unk_04;
    u8 filler_08[4];
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
    u32 unk_3C;
    int horizontalSpeed;
    int verticalSpeed;
    SysTask *task;
} UnkStruct_ov74_0222B760_Particle;

extern void ov74_0222BA48(SysTask *task, void *data);
/* the game returns a u16; the asm divides it with the signed _s32_div_f */
extern int LCRandom(void);

void ov74_0222B760(u8 *animMan) {
    UnkStruct_ov74_0222B760_Particle *particles = (UnkStruct_ov74_0222B760_Particle *)(animMan + 0x1848);
    int i;

    for (i = 0; i < 80; i++) {
        UnkStruct_ov74_0222B760_Particle *particle = &particles[i];
        VecFx32 pos;

        particle->centerX = 0x80000;
        particle->centerY = 0x180000;
        particle->speedToCenter = 0x4000;
        particle->centerZoneRadius = 0x5000;
        particle->animationType = i % 2 + 4;
        particle->unk_34 = 0;
        particle->unk_04 = 0;
        particle->unk_3C = 2 + LCRandom() % 4;
        particle->speedToCenter = FX32_CONST(i / 30 + 4);

        if (i > 60) {
            particle->speed = 5;
            particle->apparitionDelay = 70 + LCRandom() % 10;
        } else if (i > 50) {
            particle->speed = 5;
            particle->apparitionDelay = 60 + LCRandom() % 10;
        } else if (i > 40) {
            particle->speed = 5;
            particle->apparitionDelay = 50 + LCRandom() % 5;
        } else if (i > 30) {
            particle->speed = 5;
            particle->apparitionDelay = 40 + LCRandom() % 10;
        } else if (i > 20) {
            particle->speed = 5;
            particle->apparitionDelay = 30 + LCRandom() % 10;
        } else if (i > 10) {
            particle->speed = 5;
            particle->apparitionDelay = 20 + LCRandom() % 5;
        } else {
            particle->speed = 5;
            particle->apparitionDelay = 10 + LCRandom() % 5;
        }

        particle->horizontalSpeed = particle->speed;
        particle->verticalSpeed = particle->speed;

        pos = *Sprite_GetMatrixPtr(particle->sprite);
        pos.x = 0x80000;
        pos.y = 0x180000;
        Sprite_SetMatrix(particle->sprite, &pos);
        Sprite_SetDrawFlag(particle->sprite, TRUE);

        particle->task = SysTask_CreateOnMainQueue((SysTaskFunc)ov74_0222BA48, particle, 6);
    }
}
