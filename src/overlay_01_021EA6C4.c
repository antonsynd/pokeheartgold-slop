#include "overlay_01_021EA6C4.h"

#include "global.h"

#include "heap.h"

UnkStruct_Ov01_021EA6C4 *ov01_021EA724(void) {
    UnkStruct_Ov01_021EA6C4 *p = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_Ov01_021EA6C4));
    GF_ASSERT(p != NULL);
    return p;
}

void ov01_021EA73C(const char *path, UnkStruct_Ov01_021EA6C4 *foo) {
    FSFile file;
    struct {
        u16 b;
        u16 a;
    } header;
    u32 sizeA;
    u32 sizeB;

    FS_InitFile(&file);
    if (FS_OpenFile(&file, path)) {
        GF_ASSERT(FS_ReadFile(&file, &header.a, sizeof(u16)) >= 0);
        GF_ASSERT(FS_ReadFile(&file, &header.b, sizeof(u16)) >= 0);
        sizeA = header.a * 4;
        sizeB = header.b * 4;
        foo->arrayA = Heap_Alloc(HEAP_ID_FIELD1, sizeA);
        GF_ASSERT(foo->arrayA != NULL);
        foo->arrayB = Heap_Alloc(HEAP_ID_FIELD1, sizeB);
        GF_ASSERT(foo->arrayB != NULL);
        GF_ASSERT(FS_ReadFile(&file, foo->arrayA, sizeA) >= 0);
        GF_ASSERT(FS_ReadFile(&file, foo->arrayB, sizeB) >= 0);
        FS_CloseFile(&file);
    } else {
        GF_AssertFail();
    }
}

void ov01_021EA7E0(UnkStruct_Ov01_021EA6C4 *foo) {
    Heap_Free(foo->arrayB);
    Heap_Free(foo->arrayA);
    Heap_Free(foo);
}

void ov01_021EA7F8(int index, UnkStruct_Ov01_021EA6C4 *foo, u16 *out) {
    *out = foo->arrayA[index].unk0;
}

void ov01_021EA804(int index, UnkStruct_Ov01_021EA6C4 *foo, u16 *out0, u16 *out2) {
    *out0 = foo->arrayA[index].unk0;
    *out2 = foo->arrayA[index].unk2;
}

UnkStruct_Ov01_021EA6C4_sub *ov01_021EA81C(int index, UnkStruct_Ov01_021EA6C4 *foo) {
    return &foo->arrayB[index];
}
