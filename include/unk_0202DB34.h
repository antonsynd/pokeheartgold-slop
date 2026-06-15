#ifndef POKEHEARTGOLD_UNK_0202DB34_H
#define POKEHEARTGOLD_UNK_0202DB34_H

#include "save.h"

typedef struct UnkStruct_0202DB34 {
    u8 unk00[0xEC];
    u16 unkEC;
    u16 unkEE;
    u32 unkF0;
    u32 unkF4;
} UnkStruct_0202DB34;

int sub_0202DB34(SaveData *saveData);
u32 sub_0202DB40(void);
void sub_0202DB44(void *ptr);
u16 sub_0202DB54(UnkStruct_0202DB34 *a);
void sub_0202DB5C(UnkStruct_0202DB34 *a, u16 val);
void sub_0202DB64(const void *src, void *dst);
void sub_0202DB70(void *dst, const void *src);
u32 sub_0202DB80(UnkStruct_0202DB34 *a);
void sub_0202DB88(UnkStruct_0202DB34 *a, u32 val);
u32 sub_0202DB90(UnkStruct_0202DB34 *a);
void sub_0202DB98(UnkStruct_0202DB34 *a, u32 val);
u16 sub_0202DBA0(UnkStruct_0202DB34 *a);

#endif // POKEHEARTGOLD_UNK_0202DB34_H
