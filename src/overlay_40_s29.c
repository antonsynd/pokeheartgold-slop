#include "global.h"

#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct Ov40Wave {
    ManagedSprite *sprites[2];
    SysTask *task;
    u8 filler_0C[4];
    f32 scale;
    u8 filler_14[2];
    s16 x;
    s8 direction;
    u8 row;
    u8 filler_1A[6];
    int counter;
    int speed;
    int unk28;
    int state;
} Ov40Wave;

typedef struct Ov40App {
    u8 filler_000[0x18];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_020[0x6B8];
    int skipAnimation;
    u8 filler_6DC[0x1C];
    Ov40Wave waves[6];
} Ov40App;

typedef struct Ov40WaveXs {
    s16 x[6];
} Ov40WaveXs;

typedef struct Ov40WaveScales {
    f32 scale[6];
} Ov40WaveScales;

typedef struct Ov40WaveSpeeds {
    s8 speed[6];
} Ov40WaveSpeeds;

extern const u8 ov40_02244DA8[];
extern const Ov40WaveScales ov40_02244DF0;

void ov40_0222D288(ManagedSprite *sprite, s16 x, s16 y);
void ov40_0222D048(SysTask *task, void *data);

void ov40_0222C884(Ov40App *app) {
    ManagedSpriteTemplate template;
    SpriteSystem *spriteSystem = app->spriteSystem;
    SpriteManager *spriteManager = app->spriteManager;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 0;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.bgPriority = 2;
    template.vramTransfer = FALSE;
    template.pal = 0;
    template.resIdList[0] = 9999;
    template.resIdList[1] = 9999;
    template.resIdList[2] = 9999;
    template.resIdList[3] = 9999;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;

    {
        int j, i;
        Ov40WaveXs xs = *(const Ov40WaveXs *)(ov40_02244DA8 + 0x22);
        Ov40WaveScales scales = ov40_02244DF0;
        Ov40WaveSpeeds speeds = *(const Ov40WaveSpeeds *)ov40_02244DA8;

        for (i = 0; i < 6; i++) {
            for (j = 0; j < 2; j++) {
                if (j == 0) {
                    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
                    template.resIdList[0] = 9999;
                    template.resIdList[1] = 9999;
                    template.resIdList[2] = 9999;
                    template.resIdList[3] = 9999;
                } else {
                    template.vram = NNS_G2D_VRAM_TYPE_2DSUB;
                    template.resIdList[0] = 10000;
                    template.resIdList[1] = 10000;
                    template.resIdList[2] = 10000;
                    template.resIdList[3] = 10000;
                }

                app->waves[i].sprites[j] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);
                ov40_0222D288(app->waves[i].sprites[j], xs.x[i], 192 / 2);
                ManagedSprite_TickFrame(app->waves[i].sprites[j]);
                ManagedSprite_SetAffineOverwriteMode(app->waves[i].sprites[j], NNS_G2D_RND_AFFINE_OVERWRITE_DOUBLE);
                ManagedSprite_SetAffineScale(app->waves[i].sprites[j], scales.scale[i], 1.0f);

                app->waves[i].unk28 = 0;
                app->waves[i].row = i % 3;
                app->waves[i].state = 0;
                app->waves[i].scale = scales.scale[i];
                app->waves[i].speed = 10 + (speeds.speed[i] * 2);

                if (i < 3) {
                    app->waves[i].counter = 0;
                    app->waves[i].x = 0 + (8 + speeds.speed[i]);
                    app->waves[i].direction = -1;
                } else {
                    app->waves[i].counter = 0;
                    app->waves[i].x = 255 - (8 + speeds.speed[i]);
                    app->waves[i].direction = +1;
                }
            }

            app->waves[i].task = SysTask_CreateOnVBlankQueue(ov40_0222D048, &app->waves[i], 5);
        }

        if (app->skipAnimation != 0) {
            BOOL busy;

            do {
                busy = FALSE;

                for (i = 0; i < 6; i++) {
                    if (app->waves[i].state == 3) {
                        continue;
                    }

                    ov40_0222D048(app->waves[i].task, &app->waves[i]);
                    busy = TRUE;
                }
            } while (busy);
        }
    }
}
