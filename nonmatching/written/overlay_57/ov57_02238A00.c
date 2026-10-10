#include "global.h"

#include "sprite_system.h"

typedef struct UnkStruct_ov57_02238A00 {
    u8 padding_000[0xDC];
    SpriteSystem *unk_DC;
    SpriteManager *unk_E0;
    u8 padding_E4[0x414 - 0xE4];
    ManagedSprite *unk_414[8];
} UnkStruct_ov57_02238A00;

extern const s16 ov57_0223BDD4[8][2];

void ov57_02238A00(UnkStruct_ov57_02238A00 *param0) {
    int i;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSpriteTemplate template;
    s16 positions[8][2];

    spriteSystem = param0->unk_DC;
    spriteManager = param0->unk_E0;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 60;
    template.vram = 2;
    template.bgPriority = 1;
    template.vramTransfer = 0;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;
    template.pal = 0;
    template.resIdList[1] = 0x6597;
    template.resIdList[2] = 0x699D;
    template.resIdList[3] = 0x6D83;

    for (i = 0; i < 8; i++) {
        template.resIdList[0] = i + 25000;
        param0->unk_414[i] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);
    }

    for (i = 0; i < 16; i++) {
        ((s16 *)positions)[i] = ((const s16 *)ov57_0223BDD4)[i];
    }

    for (i = 0; i < 8; i++) {
        ManagedSprite_SetPositionXY(param0->unk_414[i], positions[i][0], positions[i][1] - 1);
        ManagedSprite_TickFrame(param0->unk_414[i]);
        ManagedSprite_SetAnimationFrame(param0->unk_414[i], 0);
    }
}
