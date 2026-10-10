#include "global.h"

typedef struct UnkStruct_Field3dModel_Unload {
    void *buffer;
    u8 unk4[8];
    NNSG3dResTex *tex;
} UnkStruct_Field3dModel_Unload;

typedef u32 (*UnkFreeFunc_Field3dModel_Unload)(u32 key, void *self);

extern UnkFreeFunc_Field3dModel_Unload sFreeTexVram_Field3dModel_Unload __asm__("NNS_GfdDefaultFuncFreeTexVram");
extern UnkFreeFunc_Field3dModel_Unload sFreePlttVram_Field3dModel_Unload __asm__("NNS_GfdDefaultFuncFreePlttVram");

extern void Heap_Free(void *ptr);

void Field3dModel_Unload(UnkStruct_Field3dModel_Unload *model) {
    NNSG3dTexKey texKey;
    NNSG3dTexKey tex4x4Key;
    UnkFreeFunc_Field3dModel_Unload fn;
    u8 *p;
    int i;

    if (model->tex != NULL) {
        NNS_G3dTexReleaseTexKey(model->tex, &texKey, &tex4x4Key);
        fn = sFreeTexVram_Field3dModel_Unload;
        fn(texKey, fn);
        fn = sFreeTexVram_Field3dModel_Unload;
        fn(tex4x4Key, fn);
        u32 plttKey = NNS_G3dPlttReleasePlttKey(model->tex);
        fn = sFreePlttVram_Field3dModel_Unload;
        fn(plttKey, fn);
    }
    if (model->buffer != NULL) {
        Heap_Free(model->buffer);
    }
    p = (u8 *)model;
    for (i = 0x10; i != 0; i--) {
        *p++ = 0;
    }
}
