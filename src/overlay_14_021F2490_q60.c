#include "global.h"

#include "party.h"
#include "pokemon.h"

typedef struct Ov14_021F2F3C_Sub {
    u8 filler_0000[0x40B2];
    u8 unk40B2[6];
} Ov14_021F2F3C_Sub;

typedef struct Ov14_021F2F3C {
    u8 filler_00[8];
    Party *party;
    u8 filler_0C[0x28];
    Ov14_021F2F3C_Sub *unk34;
} Ov14_021F2F3C;

void ov14_021F2EA0(Ov14_021F2F3C *a0, BoxPokemon *boxMon, u8 a2);
void ov14_021F2A18(Ov14_021F2F3C_Sub *a0, u8 a1, int a2);

void ov14_021F2F3C(Ov14_021F2F3C *a0) {
    u32 count = Party_GetCount(a0->party);
    u32 i;

    for (i = 0; i < count; i++) {
        ov14_021F2EA0(a0, Mon_GetBoxMon(Party_GetMonByIndex(a0->party, i)), a0->unk34->unk40B2[i]);
        ov14_021F2A18(a0->unk34, a0->unk34->unk40B2[i], 0);
    }
}
