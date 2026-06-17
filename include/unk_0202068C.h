#ifndef POKEHEARTGOLD_UNK_0202068C_H
#define POKEHEARTGOLD_UNK_0202068C_H

#include "global.h"

#include "heap.h"

typedef struct UnkStruct_0202068C_entry {
    void *animState;
    void *model;
    u32 charVram;
    u32 palVram;
    u8 lastCell;
    u8 lastPalette;
} UnkStruct_0202068C_entry;

typedef struct UnkStruct_0202068C {
    UnkStruct_0202068C_entry *entries;
    int count;
} UnkStruct_0202068C;

UnkStruct_0202068C *sub_0202068C(int count, enum HeapID heapId);
void sub_020206C8(UnkStruct_0202068C *manager);
UnkStruct_0202068C_entry *sub_020206E0(UnkStruct_0202068C *manager, void *animState, void *model, u32 charVram, u32 palVram, u32 frame);
void sub_02020738(UnkStruct_0202068C_entry *entry);
void sub_02020764(UnkStruct_0202068C_entry *entry, u32 frame);
void *sub_02020838(void *model, u8 index);
void *sub_02020888(void *model, u8 index);
u32 sub_020208DC(void *model, void *name);
u32 sub_02020910(void *model, u8 index);
u32 sub_020209AC(void *model, u8 index);
u32 sub_020209E0(void *model, void *name);

#endif // POKEHEARTGOLD_UNK_0202068C_H
