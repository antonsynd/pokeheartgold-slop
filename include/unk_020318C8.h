#ifndef POKEHEARTGOLD_UNK_020318C8_H
#define POKEHEARTGOLD_UNK_020318C8_H

#include "save.h"

typedef struct UnkStruct_020318C8 {
    u32 unk0;
    u32 unk4;
} UnkStruct_020318C8;

u32 sub_020318C8(void);
void sub_020318CC(void *ptr);
UnkStruct_020318C8 *sub_020318E8(SaveData *saveData);
u32 sub_020318F4(UnkStruct_020318C8 *a);
u32 sub_020318F8(UnkStruct_020318C8 *a);
void sub_020318FC(UnkStruct_020318C8 *a, u32 val);
void sub_02031900(UnkStruct_020318C8 *a, u32 val);

#endif // POKEHEARTGOLD_UNK_020318C8_H
