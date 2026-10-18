#include "global.h"

#include "filesystem_files_def.h"
#include "gf_gfx_loader.h"
#include "party.h"
#include "pokemon_icon_idx.h"
#include "sprite.h"

typedef struct TradeMonDisplayData {
    u16 species;
    u16 heldItemType;
    u8 filler_4;
    u8 isEgg;
    u8 form;
    u8 filler_7[5];
    int ballCapsuleId;
} TradeMonDisplayData;

typedef struct TradeRoom {
    u8 filler_0000[0x37C];
    Sprite *iconSprites[12];
    Sprite *itemIconSprites[12];
    Sprite *capsuleIconSprites[12];
    u8 filler_040C[0x290];
    TradeMonDisplayData monDisplayData[12];
    u8 filler_075C[0x40];
    void *iconGraphicsBuffers[12];
    NNSG2dCharacterData *iconCharacterData[12];
} TradeRoom;

void ov65_0221BFBC(NNSG2dCharacterData *charData, u16 species, u8 form, u8 isEgg, int slot, Sprite *sprite);

void ov65_0221C46C(Party *party, int templateSlotBase, TradeRoom *tradeRoom) {
    int i;

    for (i = 0; i < Party_GetCount(party); i++) {
        int slot = i + templateSlotBase;

        tradeRoom->iconGraphicsBuffers[slot] = GfGfxLoader_GetCharData(NARC_poketool_icongra_poke_icon, GetMonIconNaixEx(tradeRoom->monDisplayData[slot].species, tradeRoom->monDisplayData[slot].isEgg, tradeRoom->monDisplayData[slot].form), FALSE, &tradeRoom->iconCharacterData[slot], HEAP_ID_26);
        DC_FlushRange(tradeRoom->iconCharacterData[slot]->pRawData, 0x20 * 4 * 4);
        ov65_0221BFBC(tradeRoom->iconCharacterData[slot], tradeRoom->monDisplayData[slot].species, tradeRoom->monDisplayData[slot].form, tradeRoom->monDisplayData[slot].isEgg, slot, tradeRoom->iconSprites[slot]);
        Sprite_SetDrawFlag(tradeRoom->iconSprites[slot], TRUE);
        if (tradeRoom->monDisplayData[slot].heldItemType == 0) {
            Sprite_SetDrawFlag(tradeRoom->itemIconSprites[slot], FALSE);
        } else {
            Sprite_SetDrawFlag(tradeRoom->itemIconSprites[slot], TRUE);
            Sprite_SetAnimCtrlSeq(tradeRoom->itemIconSprites[slot], 3 + tradeRoom->monDisplayData[slot].heldItemType - 1);
        }
        if (tradeRoom->monDisplayData[slot].ballCapsuleId == 0) {
            Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[slot], FALSE);
        } else {
            Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[slot], TRUE);
            Sprite_SetAnimCtrlSeq(tradeRoom->capsuleIconSprites[slot], 21);
        }
    }
    for (; i < 6; i++) {
        Sprite_SetDrawFlag(tradeRoom->iconSprites[i + templateSlotBase], FALSE);
        Sprite_SetDrawFlag(tradeRoom->itemIconSprites[i + templateSlotBase], FALSE);
        Sprite_SetDrawFlag(tradeRoom->capsuleIconSprites[i + templateSlotBase], FALSE);
    }
}
