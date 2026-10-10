#include "global.h"

/* The original forwards its r1 to UseItemOnPokemon without narrowing it. */
extern void UseItemOnPokemon(void *mon, u32 itemId, u32 a, u32 b, u32 heapId);

void ov83_0224152C(void *mon, u32 itemId) {
    UseItemOnPokemon(mon, itemId, 0, 0, 0x6b);
}
