#ifndef POKEHEARTGOLD_OVERLAY_01_021EA6C4_H
#define POKEHEARTGOLD_OVERLAY_01_021EA6C4_H

#include "global.h"

typedef struct UnkStruct_Ov01_021EA6C4_sub {
    u16 unk0;
    u16 unk2;
} UnkStruct_Ov01_021EA6C4_sub;

typedef struct UnkStruct_Ov01_021EA6C4 {
    UnkStruct_Ov01_021EA6C4_sub *arrayA;
    UnkStruct_Ov01_021EA6C4_sub *arrayB;
} UnkStruct_Ov01_021EA6C4;

UnkStruct_Ov01_021EA6C4 *ov01_021EA724(void);
void ov01_021EA73C(const char *path, UnkStruct_Ov01_021EA6C4 *foo);
void ov01_021EA7E0(UnkStruct_Ov01_021EA6C4 *foo);
void ov01_021EA7F8(int index, UnkStruct_Ov01_021EA6C4 *foo, u16 *out);
void ov01_021EA804(int index, UnkStruct_Ov01_021EA6C4 *foo, u16 *out0, u16 *out2);
UnkStruct_Ov01_021EA6C4_sub *ov01_021EA81C(int index, UnkStruct_Ov01_021EA6C4 *foo);

#endif // POKEHEARTGOLD_OVERLAY_01_021EA6C4_H
