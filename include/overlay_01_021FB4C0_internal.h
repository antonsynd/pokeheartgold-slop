#ifndef POKEHEARTGOLD_OVERLAY_01_021FB4C0_INTERNAL_H
#define POKEHEARTGOLD_OVERLAY_01_021FB4C0_INTERNAL_H

#include "global.h"

#include "constants/heap.h"

typedef void (*UnkFuncPtr_Ov01_021FB4C0)(void *param0, void *param1);

typedef struct UnkStruct_Ov01_021FB4C0_sub {
    u32 used;                          // 0x00
    void *data;                        // 0x04
    UnkFuncPtr_Ov01_021FB4C0 callback; // 0x08
} UnkStruct_Ov01_021FB4C0_sub;

typedef struct UnkStruct_Ov01_021FB4C0 {
    u32 state;                            // 0x00
    UnkStruct_Ov01_021FB4C0_sub slots[2]; // 0x04
} UnkStruct_Ov01_021FB4C0;

UnkStruct_Ov01_021FB4C0 *ov01_021FB4C0(enum HeapID heapId);
void ov01_021FB4D4(UnkStruct_Ov01_021FB4C0 *manager);
void ov01_021FB4F4(UnkStruct_Ov01_021FB4C0 *manager);
void ov01_021FB514(UnkStruct_Ov01_021FB4C0 *manager);
UnkStruct_Ov01_021FB4C0_sub *ov01_021FB530(UnkStruct_Ov01_021FB4C0 *manager, UnkFuncPtr_Ov01_021FB4C0 callback, void *data);
void ov01_021FB554(UnkStruct_Ov01_021FB4C0_sub *slot);

#endif // POKEHEARTGOLD_OVERLAY_01_021FB4C0_INTERNAL_H
