#include "global.h"

#include "sprite_system.h"

typedef struct Ov40Digit {
    int value;
    u8 filler_04[4];
    int unk8;
    ManagedSprite *sprite;
    u8 filler_10[0xC];
} Ov40Digit;

typedef struct Ov40_02243C54 {
    Ov40Digit digits[12];
    Ov40Digit separators[3];
    u8 filler_1A4[0x60];
    int digitCount;
    u8 filler_208[0x1C];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
} Ov40_02243C54;

int ov40_02244054(int value, int a1);

void ov40_02243C54(Ov40_02243C54 *a0) {
    int i;
    int digit = 0;
    int separator = 0;
    ManagedSpriteTemplate template;
    SpriteSystem *spriteSystem = a0->spriteSystem;
    SpriteManager *spriteManager = a0->spriteManager;

    template.x = 304;
    template.y = 224;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 10;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.bgPriority = 0;
    template.vramTransfer = FALSE;
    template.pal = 0;
    template.resIdList[0] = 1000;
    template.resIdList[1] = 1000;
    template.resIdList[2] = 1000;
    template.resIdList[3] = 1000;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;
    for (i = 0; i < a0->digitCount + 3 - 1; i++) {
        if (i == (a0->separators[separator].value + separator + 1)) {
            a0->separators[separator].sprite = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);
            ManagedSprite_SetDrawFlag(a0->separators[separator].sprite, FALSE);
            ManagedSprite_SetPositionXY(a0->separators[separator].sprite, 72 + (i * 8) + 4, 24);
            ManagedSprite_SetAnim(a0->separators[separator].sprite, 22);
            ManagedSprite_TickFrame(a0->separators[separator].sprite);
            separator++;
        } else {
            a0->digits[digit].sprite = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);
            ManagedSprite_SetDrawFlag(a0->digits[digit].sprite, FALSE);
            ManagedSprite_SetPositionXY(a0->digits[digit].sprite, 72 + (i * 8) + 4, 24);
            ManagedSprite_SetAnim(a0->digits[digit].sprite, ov40_02244054(a0->digits[digit].value, a0->digits[digit].unk8));
            ManagedSprite_SetAffineOverwriteMode(a0->digits[digit].sprite, 0);
            ManagedSprite_TickFrame(a0->digits[digit].sprite);
            digit++;
        }
    }
}
