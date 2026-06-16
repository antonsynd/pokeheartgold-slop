#ifndef POKEHEARTGOLD_UNK_02018000_H
#define POKEHEARTGOLD_UNK_02018000_H

#include "global.h"

#include "filesystem.h"
#include "heap.h"

typedef struct UnkStruct_02018030 {
    NNSG3dResFileHeader *resFile;
    NNSG3dResMdlSet *mdlSet;
    NNSG3dResMdl *model;
    NNSG3dResTex *tex;
} UnkStruct_02018030;

typedef struct UnkStruct_020180BC {
    void *anmRes;
    void *anm;
    NNSG3dAnmObj *anmObj;
    fx32 frame;
    int unk10;
} UnkStruct_020180BC;

typedef struct UnkStruct_020181B0 {
    NNSG3dRenderObj renderObj;
    VecFx32 translation;
    VecFx32 scale;
    int visible;
    u16 rotation[3];
} UnkStruct_020181B0;

void sub_02018030(UnkStruct_02018030 *a0, NARC *narc, s32 fileId, enum HeapID heapId);
void sub_02018068(UnkStruct_02018030 *a0);
void sub_020180BC(UnkStruct_020180BC *a0, UnkStruct_02018030 *a1, NARC *narc, s32 fileId, enum HeapID heapId, NNSFndAllocator *allocator);
void sub_020180E8(UnkStruct_020180BC *a0, UnkStruct_02018030 *a1, void *anmRes, NNSFndAllocator *allocator);
void sub_020180F8(UnkStruct_020180BC *a0, NNSFndAllocator *allocator);
void sub_02018124(UnkStruct_020180BC *a0, fx32 speed);
BOOL sub_0201815C(UnkStruct_020180BC *a0, fx32 speed);
void sub_02018198(UnkStruct_020180BC *a0, fx32 frame);
fx32 sub_020181A0(UnkStruct_020180BC *a0);
fx32 sub_020181A4(UnkStruct_020180BC *a0);
void sub_020181B0(UnkStruct_020181B0 *a0, UnkStruct_02018030 *a1);
void sub_020181D4(UnkStruct_020181B0 *a0, UnkStruct_020180BC *a1);
void sub_020181E0(UnkStruct_020181B0 *a0, UnkStruct_020180BC *a1);
void sub_020181EC(UnkStruct_020181B0 *a0);
void sub_02018288(UnkStruct_020181B0 *a0, const MtxFx33 *rotation);
void sub_020182A0(UnkStruct_020181B0 *a0, int visible);
int sub_020182A4(UnkStruct_020181B0 *a0);
void sub_020182A8(UnkStruct_020181B0 *a0, fx32 x, fx32 y, fx32 z);
void sub_020182B0(UnkStruct_020181B0 *a0, fx32 *x, fx32 *y, fx32 *z);
void sub_020182C4(UnkStruct_020181B0 *a0, fx32 x, fx32 y, fx32 z);
void sub_020182CC(UnkStruct_020181B0 *a0, fx32 *x, fx32 *y, fx32 *z);
void sub_020182E0(UnkStruct_020181B0 *a0, u16 value, int idx);
u16 sub_020182EC(UnkStruct_020181B0 *a0, int idx);

#endif // POKEHEARTGOLD_UNK_02018000_H
