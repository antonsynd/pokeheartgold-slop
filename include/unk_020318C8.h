#ifndef POKEHEARTGOLD_UNK_020318C8_H
#define POKEHEARTGOLD_UNK_020318C8_H

#include "save.h"

typedef struct Unk020318C8 {
    u32 unk0;
    u32 unk4;
} Unk020318C8;

u32 sub_020318C8(void);
void sub_020318CC(Unk020318C8 *a0);
Unk020318C8 *sub_020318E8(SaveData *saveData);
u32 sub_020318F4(Unk020318C8 *a0);
u32 sub_020318F8(Unk020318C8 *a0);
void sub_020318FC(Unk020318C8 *a0, u32 a1);
void sub_02031900(Unk020318C8 *a0, u32 a1);

#endif // POKEHEARTGOLD_UNK_020318C8_H
