#include "global.h"

#include "filesystem_files_def.h"
#include "pokemon.h"
#include "pokemon_icon_idx.h"
#include "sprite.h"
#include "sprite_system.h"

typedef struct CapsuleAppData {
    int partySize;
    Pokemon *pokemon[6];
} CapsuleAppData;

typedef struct CapsuleAppManager {
    CapsuleAppData *appData;
    u8 filler_004[0xD8];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_0E4[0x240];
    ManagedSprite *pokemonSprites[6];
} CapsuleAppManager;

void ov57_02238E48(CapsuleAppManager *appMan) {
    int isEgg;
    int species;
    u8 paletteIndex;
    int form;
    Pokemon *pokemon;
    ManagedSpriteTemplate spriteTemplate;

    for (int i = 0; i < appMan->appData->partySize; i++) {
        pokemon = appMan->appData->pokemon[i];
        SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(appMan->spriteSystem, appMan->spriteManager, NARC_poketool_icongra_poke_icon, Pokemon_GetIconNaix(pokemon), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, i + 15000);
        spriteTemplate.x = 0;
        spriteTemplate.y = 0;
        spriteTemplate.z = 0;
        spriteTemplate.animation = 0;
        spriteTemplate.drawPriority = 10;
        spriteTemplate.pal = 0;
        spriteTemplate.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
        spriteTemplate.bgPriority = 2;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resIdList[0] = i + 15000;
        spriteTemplate.resIdList[1] = 16000;
        spriteTemplate.resIdList[2] = 17000;
        spriteTemplate.resIdList[3] = 18000;
        spriteTemplate.resIdList[4] = -1;
        spriteTemplate.resIdList[5] = -1;
        appMan->pokemonSprites[i] = SpriteSystem_NewSprite(appMan->spriteSystem, appMan->spriteManager, &spriteTemplate);
        species = GetMonData(pokemon, MON_DATA_SPECIES, NULL);
        isEgg = GetMonData(pokemon, MON_DATA_IS_EGG, NULL);
        form = GetMonData(pokemon, MON_DATA_FORM, NULL);
        paletteIndex = GetMonIconPaletteEx(species, form, isEgg);
        Sprite_SetPalOffsetRespectVramOffset(appMan->pokemonSprites[i]->sprite, paletteIndex);
        ManagedSprite_SetAnim(appMan->pokemonSprites[i], 1);
    }
}
