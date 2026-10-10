#include "global.h"

typedef struct UnkStruct_ov01_021FBDFC {
    void *buffer;
    u8 unk4[8];
    NNSG3dResTex *tex;
} UnkStruct_ov01_021FBDFC;

typedef u32 (*UnkFreeFunc_ov01_021FBDFC)(u32 key, void *self);

extern UnkFreeFunc_ov01_021FBDFC sFreeTexVram_ov01_021FBDFC __asm__("NNS_GfdDefaultFuncFreeTexVram");
extern UnkFreeFunc_ov01_021FBDFC sFreePlttVram_ov01_021FBDFC __asm__("NNS_GfdDefaultFuncFreePlttVram");

extern void Heap_Free(void *ptr);

void ov01_021FBDFC(UnkStruct_ov01_021FBDFC *model) {
    NNSG3dTexKey texKey;
    NNSG3dTexKey tex4x4Key;
    UnkFreeFunc_ov01_021FBDFC fn;
    u8 *p;
    int i;

    if (model->tex != NULL) {
        NNS_G3dTexReleaseTexKey(model->tex, &texKey, &tex4x4Key);
        fn = sFreeTexVram_ov01_021FBDFC;
        fn(texKey, fn);
        fn = sFreeTexVram_ov01_021FBDFC;
        fn(tex4x4Key, fn);
        u32 plttKey = NNS_G3dPlttReleasePlttKey(model->tex);
        fn = sFreePlttVram_ov01_021FBDFC;
        fn(plttKey, fn);
    }

    p = (u8 *)model;
    for (i = 0x10; i != 0; i--) {
        *p++ = 0;
    }
}
