#ifndef POKEHEARTGOLD_UNK_020379A0_H
#define POKEHEARTGOLD_UNK_020379A0_H

#include "heap.h"

void sub_020379A0(enum HeapID heapID);
BOOL sub_02037A10(void);
void sub_02037AC0(u8 a0);
BOOL sub_02037B38(u8 a0);
// The defining TU declares these in-file with its matched-time shapes.
#ifndef UNK_020379A0_OWN_DECLS
void sub_02037B8C(u32 arg0, u8 arg1);
s32 sub_02037BA0(s32 arg0, s32 arg1);
#endif
void sub_02037BC8(void);
void sub_02037BEC(void);
// The defining TU was matched with a u16 * second param; upstream callers
// were matched against s16 *.
#ifdef UNK_020379A0_OWN_DECLS
u32 sub_02037C0C(u32 a0, u16 *a1);
#else
u32 sub_02037C0C(u32 a0, s16 *a1);
#endif
u16 *sub_02037C44(s32 a0);

#endif // POKEHEARTGOLD_UNK_020379A0_H
