#include "global.h"

#include "sprite_system.h"

typedef struct UnkStruct_ov57_02239EB4 {
    u8 padding_000[0xDC];
    SpriteSystem *unk_DC;
    SpriteManager *unk_E0;
    u8 padding_E4[0x1F0 - 0xE4];
    u32 unk_1F0[13];
    u8 padding_224[0x414 - 0x224];
    ManagedSprite *unk_414[13];
} UnkStruct_ov57_02239EB4;

extern const s16 ov57_0223BE48[13][2];
extern const s16 ov57_0223BE7C[13][2];

void ov57_022385A4(u32 *param0, ManagedSprite *param1, int param2, int param3);

void ov57_02239EB4(UnkStruct_ov57_02239EB4 *param0) {
    int i;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSpriteTemplate template;
    s16 xyPos[13][2];
    s16 xyOffset[13][2];

    spriteSystem = param0->unk_DC;
    spriteManager = param0->unk_E0;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 60;
    template.vram = 2;
    template.vramTransfer = 0;
    template.bgPriority = 1;
    template.pal = 1;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;
    template.resIdList[0] = 0x61C2;
    template.resIdList[1] = 0x6594;
    template.resIdList[2] = 0x6994;
    template.resIdList[3] = 0x6D7B;
    param0->unk_414[8] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);

    template.resIdList[0] = 0x61C5;
    template.resIdList[1] = 0x6594;
    template.resIdList[2] = 0x6997;
    template.resIdList[3] = 0x6D7E;
    param0->unk_414[9] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);

    template.bgPriority = 1;
    template.pal = 1;
    template.resIdList[0] = 0x88CF;
    template.resIdList[1] = 0x6594;
    template.resIdList[2] = 0x6991;
    template.resIdList[3] = 0x6D78;
    param0->unk_414[10] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);

    template.bgPriority = 1;
    template.pal = 0;
    template.resIdList[0] = 0x61BC;
    template.resIdList[1] = 0x6594;
    template.resIdList[2] = 0x698E;
    template.resIdList[3] = 0x6D75;
    param0->unk_414[11] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);
    param0->unk_414[12] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);

    for (i = 0; i < 26; i++) {
        ((s16 *)xyPos)[i] = ((const s16 *)ov57_0223BE48)[i];
    }
    for (i = 0; i < 26; i++) {
        ((s16 *)xyOffset)[i] = ((const s16 *)ov57_0223BE7C)[i];
    }

    for (i = 8; i < 13; i++) {
        ManagedSprite_SetPositionXY(param0->unk_414[i], xyPos[i][0], xyPos[i][1]);
        ManagedSprite_TickFrame(param0->unk_414[i]);
        ManagedSprite_SetAnimationFrame(param0->unk_414[i], 0);
        ov57_022385A4(&param0->unk_1F0[i], param0->unk_414[i], xyOffset[i][0], xyOffset[i][1]);
    }
}
