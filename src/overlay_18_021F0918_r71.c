#include "global.h"

#include "pokedex.h"
#include "sprite_system.h"

typedef struct Ov18Args {
    Pokedex *pokedex;
} Ov18Args;

typedef struct Ov18_021F2A2C {
    Ov18Args *args;
    u8 filler_004[0x66C];
    ManagedSprite *sprites[1];
    ManagedSprite *spritesNext[15];
} Ov18_021F2A2C;

void ov18_021F2A2C(Ov18_021F2A2C *a0, int index, int a2) {
    if (a2 == 1 && Pokedex_GetInternationalViewFlag(a0->args->pokedex) == TRUE) {
        ManagedSprite_SetDrawFlag(a0->sprites[index], TRUE);
        ManagedSprite_SetDrawFlag(a0->spritesNext[index], TRUE);
    } else {
        ManagedSprite_SetDrawFlag(a0->sprites[index], FALSE);
        ManagedSprite_SetDrawFlag(a0->spritesNext[index], FALSE);
    }
}
