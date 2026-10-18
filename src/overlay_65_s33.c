#include "global.h"

#include "sprite.h"
#include "unk_02009D48.h"

typedef struct TradeRoom {
    u8 filler_000[0x94];
    int selectedSlot[2];
    u8 filler_09C[0x104];
    SpriteList *spriteList;
    u8 filler_1A4[0x128];
    GF_2DGfxResMan *spriteResourceCollections[4];
    u8 filler_2DC[0x20];
    SpriteResourcesHeader mainSpriteResourcesHeader;
    SpriteResourcesHeader subSpriteResourcesHeader;
    Sprite *cursorSprites[2];
    u8 filler_34C[0x30];
    Sprite *iconSprites[12];
    Sprite *itemIconSprites[12];
    Sprite *capsuleIconSprites[12];
    Sprite *detailCardSprites[6];
    Sprite *convergeIndicatorSprite;
} TradeRoom;

extern const int ov65_0221FF4C[][2];
extern const int ov65_0221FEA4[][3];

void ov65_0221DD34(int slot, Sprite *cursor, int a2);

void ov65_0221D930(TradeRoom *tradeRoom) {
    SpriteTemplate template;
    int i;

    CreateSpriteResourcesHeader(&tradeRoom->mainSpriteResourcesHeader, 0, 0, 0, 0, -1, -1, 0, 2, tradeRoom->spriteResourceCollections[0], tradeRoom->spriteResourceCollections[1], tradeRoom->spriteResourceCollections[2], tradeRoom->spriteResourceCollections[3], NULL, NULL);
    CreateSpriteResourcesHeader(&tradeRoom->subSpriteResourcesHeader, 1, 1, 1, 1, -1, -1, 0, 0, tradeRoom->spriteResourceCollections[0], tradeRoom->spriteResourceCollections[1], tradeRoom->spriteResourceCollections[2], tradeRoom->spriteResourceCollections[3], NULL, NULL);

    template.spriteList = tradeRoom->spriteList;
    template.header = &tradeRoom->mainSpriteResourcesHeader;
    template.position.x = FX32_CONST(32);
    template.position.y = FX32_CONST(96);
    template.position.z = 0;
    template.scale.x = FX32_ONE;
    template.scale.y = FX32_ONE;
    template.scale.z = FX32_ONE;
    template.rotation = 0;
    template.drawPriority = 0;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_26;

    for (i = 0; i < 2; i++) {
        template.position.x = FX32_ONE * ov65_0221FF4C[i][0];
        template.position.y = FX32_ONE * ov65_0221FF4C[i][1];
        tradeRoom->cursorSprites[i] = Sprite_CreateAffine(&template);
        Sprite_SetAnimActiveFlag(tradeRoom->cursorSprites[i], TRUE);
        ov65_0221DD34(tradeRoom->selectedSlot[i], tradeRoom->cursorSprites[i], i);
        Sprite_SetDrawPriority(tradeRoom->cursorSprites[i], 100);
        Sprite_SetDrawFlag(tradeRoom->cursorSprites[i], FALSE);
        Sprite_SetOamMode(tradeRoom->cursorSprites[i], GX_OAM_MODE_XLU);
    }

    for (i = 0; i < 12; i++) {
        template.position.x = FX32_ONE * (ov65_0221FF4C[i][0] + 16);
        template.position.y = FX32_ONE * (ov65_0221FF4C[i][1] - 6);
        tradeRoom->iconSprites[i] = Sprite_CreateAffine(&template);
        Sprite_SetAnimActiveFlag(tradeRoom->iconSprites[i], TRUE);
        Sprite_SetAnimCtrlSeq(tradeRoom->iconSprites[i], 5 + i);
        Sprite_SetDrawPriority(tradeRoom->iconSprites[i], 5);
        Sprite_SetDrawFlag(tradeRoom->iconSprites[i], FALSE);
        Sprite_SetOamMode(tradeRoom->iconSprites[i], GX_OAM_MODE_XLU);
    }

    for (i = 0; i < 12; i++) {
        template.position.x = FX32_ONE * (ov65_0221FF4C[i][0] + 16 + 20);
        template.position.y = FX32_ONE * (ov65_0221FF4C[i][1] + 16);
        template.drawPriority = 0;
        tradeRoom->itemIconSprites[i] = Sprite_CreateAffine(&template);
        Sprite_SetDrawPriority(tradeRoom->itemIconSprites[i], 3);
        Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i], FALSE);
        Sprite_SetOamMode(tradeRoom->itemIconSprites[i], GX_OAM_MODE_XLU);
    }

    for (i = 0; i < 12; i++) {
        template.position.x = FX32_ONE * (ov65_0221FF4C[i][0] + 16 + 20 + 9);
        template.position.y = FX32_ONE * (ov65_0221FF4C[i][1] + 16);
        template.drawPriority = 0;
        tradeRoom->capsuleIconSprites[i] = Sprite_CreateAffine(&template);
        Sprite_SetDrawPriority(tradeRoom->capsuleIconSprites[i], 3);
        Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i], FALSE);
        Sprite_SetOamMode(tradeRoom->capsuleIconSprites[i], GX_OAM_MODE_XLU);
    }

    template.position.x = FX32_ONE * (128 - 4 * 8);
    template.position.y = FX32_ONE * (8 * 8 + 2);
    tradeRoom->convergeIndicatorSprite = Sprite_CreateAffine(&template);
    Sprite_SetAnimActiveFlag(tradeRoom->convergeIndicatorSprite, TRUE);
    Sprite_SetAnimCtrlSeq(tradeRoom->convergeIndicatorSprite, 20);
    Sprite_SetDrawFlag(tradeRoom->convergeIndicatorSprite, FALSE);

    for (i = 0; i < 6; i++) {
        template.header = &tradeRoom->subSpriteResourcesHeader;
        template.position.x = FX32_ONE * ov65_0221FEA4[i][0];
        template.position.y = FX32_ONE * ov65_0221FEA4[i][1] + (192 << FX32_SHIFT);
        template.whichScreen = NNS_G2D_VRAM_TYPE_2DSUB;
        tradeRoom->detailCardSprites[i] = Sprite_CreateAffine(&template);
        Sprite_SetDrawFlag(tradeRoom->detailCardSprites[i], FALSE);
        Sprite_SetAnimActiveFlag(tradeRoom->detailCardSprites[i], FALSE);
        Sprite_SetAnimCtrlSeq(tradeRoom->detailCardSprites[i], ov65_0221FEA4[i][2]);
    }
}
