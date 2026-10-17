#include "global.h"

#include "sprite_system.h"

typedef struct Ov99_021E8FEC {
    u8 filler_00[0x70];
    ManagedSprite *sprites[15];
} Ov99_021E8FEC;

void ov99_021E8FEC(Ov99_021E8FEC *a0, BOOL draw) {
    int i;
    int j;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 3; j++) {
            ManagedSprite_SetDrawFlag(a0->sprites[i * 3 + j], draw);
        }
    }
}
