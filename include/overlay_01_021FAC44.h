#ifndef POKEHEARTGOLD_OVERLAY_01_021FAC44_H
#define POKEHEARTGOLD_OVERLAY_01_021FAC44_H

#include "global.h"

typedef struct UnkStruct_Ov01_021FAC44 {
    u8 *slices[4];
    u8 *buffers[4];
} UnkStruct_Ov01_021FAC44;

UnkStruct_Ov01_021FAC44 *ov01_021FAC44(int arg);
void ov01_021FACB4(UnkStruct_Ov01_021FAC44 *s);
void ov01_021FACE4(int i, UnkStruct_Ov01_021FAC44 *s, void **out);
void ov01_021FACEC(int i, UnkStruct_Ov01_021FAC44 *s, void **out);

#endif // POKEHEARTGOLD_OVERLAY_01_021FAC44_H
