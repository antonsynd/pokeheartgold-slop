#ifndef POKEHEARTGOLD_UNK_0202E41C_INTERNAL_H
#define POKEHEARTGOLD_UNK_0202E41C_INTERNAL_H

#include "global.h"

// Self-sufficient struct definition for the defining TU only. The shared
// include/unk_0202E41C.h is frozen at a struct-only, prototype-free state that
// save_arrays.c is byte-matched against; it is deliberately NOT included here
// to avoid any IPA coupling. Keep this struct identical to that one.
typedef struct UnkStruct_0202E474 {
    u8 filler_000[12];
    u8 unk_00C[192];
    u8 unk_0CC[192];
    u8 unk_18C[192];
    u8 filler_24C[0x97C];
} UnkStruct_0202E474;

#endif // POKEHEARTGOLD_UNK_0202E41C_INTERNAL_H
