#include "global.h"
#include "sprite.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov74_0222B3A4_Particle {
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
    u8 filler_3C[4];
    int horizontalSpeed;
    int verticalSpeed;
    SysTask *task;
} UnkStruct_ov74_0222B3A4_Particle;

extern void ov74_0222BA48(SysTask *task, void *data);
/* the game returns a u16; the asm divides it with the signed _s32_div_f */
extern int LCRandom(void);

void ov74_0222B3A4(u8 *animMan) {
    UnkStruct_ov74_0222B3A4_Particle *particles = (UnkStruct_ov74_0222B3A4_Particle *)(animMan + 0x88);
    int i;
    double scale = 0.7;

    for (i = 0; i < 80; i++) {
        UnkStruct_ov74_0222B3A4_Particle *particle = &particles[i];
        VecFx32 pos;

        particle->centerX = 0x80000;
        particle->centerY = 0x60000;
        particle->speedToCenter = 0x4000;
        particle->centerZoneRadius = 0x5000;
        particle->animationType = i % 4;
        particle->unk_34 = 0;
        particle->unk_04 = 0;

        particle->speedToCenter = FX32_CONST(i / 10 + 4);

        if (i > 50) {
            particle->apparitionDelay = 260 + i + LCRandom() % 5;
        } else if (i > 40) {
            particle->apparitionDelay = 250 + i + LCRandom() % 5;
        } else if (i > 30) {
            particle->apparitionDelay = 240 + i + LCRandom() % 5;
        } else if (i > 25) {
            particle->apparitionDelay = 230 + i + LCRandom() % 5;
        } else if (i > 20) {
            particle->apparitionDelay = 220 + i + LCRandom() % 5;
        } else {
            int presetDelays[21] = { 1, 30, 60, 90, 90, 120, 120, 120, 150, 150, 150, 150, 180, 180, 180, 180, 210, 210, 210, 210, 210 };
            particle->apparitionDelay = presetDelays[i];
        }

        /* the ROM's _dmul is called with 0.7 as the first operand */
        particle->apparitionDelay = (int)(scale * ((particle->apparitionDelay + 1) / 2));
        particle->apparitionDelay += 1;

        particle->speed = 15;
        particle->horizontalSpeed = particle->speed;
        particle->verticalSpeed = particle->speed;

        pos = *Sprite_GetMatrixPtr(particle->sprite);
        pos.x = FX32_CONST(16 + LCRandom() % 224);
        pos.y = 0;
        Sprite_SetMatrix(particle->sprite, &pos);
        Sprite_SetDrawFlag(particle->sprite, FALSE);

        particle->task = SysTask_CreateOnMainQueue((SysTaskFunc)ov74_0222BA48, particle, 6);
    }
}
