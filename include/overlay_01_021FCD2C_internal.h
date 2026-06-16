#ifndef POKEHEARTGOLD_OVERLAY_01_021FCD2C_INTERNAL_H
#define POKEHEARTGOLD_OVERLAY_01_021FCD2C_INTERNAL_H

#include "global.h"

#include "camera.h"
#include "overlay_01_021FCD2C.h"

typedef struct UnkStruct_Ov01_021FCD2C {
    enum HeapID heapId;    // 0x00
    int unk4;              // 0x04
    BOOL unk8;             // 0x08
    int unkC;              // 0x0c
    fx32 unk10;            // 0x10
    fx32 unk14;            // 0x14
    fx32 unk18;            // 0x18
    int unk1C;             // 0x1c
    fx32 unk20;            // 0x20
    u32 unk24;             // 0x24
    fx32 unk28;            // 0x28
    FieldSystem *unk2C;    // 0x2c
    Camera *unk30;         // 0x30
} UnkStruct_Ov01_021FCD2C; // 0x34

#endif // POKEHEARTGOLD_OVERLAY_01_021FCD2C_INTERNAL_H
