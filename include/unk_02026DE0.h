#ifndef POKEHEARTGOLD_UNK_02026DE0_H
#define POKEHEARTGOLD_UNK_02026DE0_H

#include "global.h"

typedef struct UnkStruct_02026DE0 {
    u16 *unk00;
    u8 *unk04;
    u8 *unk08;
    u32 unk0C;
} UnkStruct_02026DE0;

u16 sub_02026DE0(UnkStruct_02026DE0 *a, u32 val);
void sub_02026E18(u32 *src, UnkStruct_02026DE0 *dst);

#endif // POKEHEARTGOLD_UNK_02026DE0_H
