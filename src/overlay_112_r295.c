#include "global.h"

#include "message_format.h"
#include "pokemon.h"
#include "pokewalker.h"

typedef struct Ov112_021EE464 {
    u8 filler_00000[0x1D79C];
    u8 unk1D79C[0x10];
    u8 unk1D7AC[0x1E440 - 0x1D7AC];
    POKEWALKER *pokewalker;
    u8 filler_1E444[4];
    MessageFormat *msgFormat;
    u8 filler_1E44C[0x1F2E8 - 0x1E44C];
    BoxPokemon boxMon;
} Ov112_021EE464;

void ov112_021EA5A4(Ov112_021EE464 *a0, int a1);
void ov112_021E9290(void *a0, void *a1, void *a2, int a3);
void ov112_021EC460(Ov112_021EE464 *a0, int a1, int a2, int a3);

int ov112_021EE464(Ov112_021EE464 *a0) {
    BoxPokemon *boxMon = &a0->boxMon;

    Pokewalker_TryGetBoxMon(a0->pokewalker, boxMon);
    ov112_021EA5A4(a0, 0);
    BufferBoxMonNickname(a0->msgFormat, 1, boxMon);
    ov112_021E9290(boxMon, a0->unk1D7AC, a0->unk1D79C, 0);
    ov112_021EC460(a0, 2, 0x1A, 0x35);
    return 0x40;
}
