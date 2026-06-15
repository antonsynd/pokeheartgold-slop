#ifndef POKEHEARTGOLD_UNK_02078DD8_H
#define POKEHEARTGOLD_UNK_02078DD8_H

#include "heap.h"
#include "player_data.h"

typedef struct UnkStruct_02078DD8 {
    u8 filler_00[0x18];
    u8 unk18;
    u8 unk19;
    u8 filler_1A;
    u8 unk1B;
    u8 filler_1C;
    u8 unk1D;
    u8 unk1E;
    u8 filler_1F[5];
} UnkStruct_02078DD8;

UnkStruct_02078DD8 *sub_02078DD8(PlayerProfile *profile, enum HeapID heapId);
void sub_02078E28(void *ptr);

#endif // POKEHEARTGOLD_UNK_02078DD8_H
