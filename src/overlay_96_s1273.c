#include "global.h"

#include "sprite_system.h"

typedef struct Ov96Player {
    u8 filler_00[4];
    ManagedSprite *sprites[5];
    u8 filler_18[0xD0];
} Ov96Player;

typedef struct Ov96_02217820 {
    u8 filler_00[0xC];
    ManagedSprite *unk0C;
    Ov96Player players[4];
} Ov96_02217820;

void ov96_02217820(Ov96_02217820 *a0) {
    int i, j;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 5; j++) {
            ManagedSprite_SetAnimateFlag(a0->players[i].sprites[j], FALSE);
        }
    }
    ManagedSprite_SetAnimateFlag(a0->unk0C, FALSE);
}
