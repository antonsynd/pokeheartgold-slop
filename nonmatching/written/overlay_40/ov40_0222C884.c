#include "global.h"
#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov40_0222C884_Sprite {
    ManagedSprite *sprites[2];
    SysTask *task;
    u8 filler_0C[4];
    f32 unk_10;
    u8 filler_14[2];
    s16 unk_16;
    s8 unk_18;
    u8 unk_19;
    u8 filler_1A[6];
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} UnkStruct_ov40_0222C884_Sprite;

typedef struct UnkStruct_ov40_0222C884 {
    u8 filler_000[0x18];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_020[0x6D8 - 0x20];
    int unk_6D8;
    u8 filler_6DC[0x6F8 - 0x6DC];
    UnkStruct_ov40_0222C884_Sprite unk_6F8[6];
} UnkStruct_ov40_0222C884;

void ov40_0222D288(ManagedSprite *sprite, s16 x, s16 y);
void ov40_0222D048(SysTask *task, void *work);

void ov40_0222C884(UnkStruct_ov40_0222C884 *work) {
    ManagedSpriteTemplate tmpl;
    SpriteSystem *spriteSystem = work->spriteSystem;
    SpriteManager *spriteManager = work->spriteManager;
    int i, j;
    BOOL again;

    static const s16 positions[6] = { 82, 178, 118, 42, 150, 210 };
    static const f32 scales[6] = { 1.4f, 1.8f, 2.0f, 1.6f, 1.4f, 1.6f };
    static const s8 offsets[6] = { -1, -3, 2, -1, -3, 2 };

    tmpl.x = 0;
    tmpl.y = 0;
    tmpl.z = 0;
    tmpl.animation = 0;
    tmpl.drawPriority = 0;
    tmpl.vram = 1;
    tmpl.bgPriority = 2;
    tmpl.vramTransfer = 0;
    tmpl.pal = 0;
    tmpl.resIdList[0] = 9999;
    tmpl.resIdList[1] = 9999;
    tmpl.resIdList[2] = 9999;
    tmpl.resIdList[3] = 9999;
    tmpl.resIdList[4] = -1;
    tmpl.resIdList[5] = -1;

    for (i = 0; i < 6; i++) {
        u8 mod = i % 3;
        for (j = 0; j < 2; j++) {
            if (j == 0) {
                tmpl.vram = 1;
                tmpl.resIdList[0] = 9999;
                tmpl.resIdList[1] = 9999;
                tmpl.resIdList[2] = 9999;
                tmpl.resIdList[3] = 9999;
            } else {
                tmpl.vram = 2;
                tmpl.resIdList[0] = 10000;
                tmpl.resIdList[1] = 10000;
                tmpl.resIdList[2] = 10000;
                tmpl.resIdList[3] = 10000;
            }
            work->unk_6F8[i].sprites[j] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &tmpl);
            ov40_0222D288(work->unk_6F8[i].sprites[j], positions[i], 0x60);
            ManagedSprite_TickFrame(work->unk_6F8[i].sprites[j]);
            ManagedSprite_SetAffineOverwriteMode(work->unk_6F8[i].sprites[j], 2);
            ManagedSprite_SetAffineScale(work->unk_6F8[i].sprites[j], scales[i], 1.0f);
            work->unk_6F8[i].unk_28 = 0;
            work->unk_6F8[i].unk_19 = mod;
            work->unk_6F8[i].unk_2C = 0;
            work->unk_6F8[i].unk_10 = scales[i];
            work->unk_6F8[i].unk_24 = offsets[i] * 2 + 10;
            if (i < 3) {
                work->unk_6F8[i].unk_20 = 0;
                work->unk_6F8[i].unk_16 = offsets[i] + 8;
                work->unk_6F8[i].unk_18 = -1;
            } else {
                work->unk_6F8[i].unk_20 = 0;
                work->unk_6F8[i].unk_16 = 0xFF - (offsets[i] + 8);
                work->unk_6F8[i].unk_18 = 1;
            }
        }
        work->unk_6F8[i].task = SysTask_CreateOnVBlankQueue((SysTaskFunc)ov40_0222D048, &work->unk_6F8[i], 5);
    }

    if (work->unk_6D8 != 0) {
        do {
            again = FALSE;
            for (i = 0; i < 6; i++) {
                if (work->unk_6F8[i].unk_2C == 3) {
                    continue;
                }
                ov40_0222D048(work->unk_6F8[i].task, &work->unk_6F8[i]);
                again = TRUE;
            }
        } while (again);
    }
}
