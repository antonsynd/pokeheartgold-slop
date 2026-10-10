#include "global.h"

typedef struct UnkStruct_ov108_021E90C4_Entry {
    u8 unk0[0x14];
} UnkStruct_ov108_021E90C4_Entry;

typedef struct UnkStruct_ov108_021E90C4 {
    void *buffer;
    u8 unk4[8];
    NNSG3dResTex *tex;
    u8 unk10[0x54];
    UnkStruct_ov108_021E90C4_Entry entries[7];
} UnkStruct_ov108_021E90C4;

typedef u32 (*UnkFreeFunc_ov108_021E90C4)(u32 key, void *self);

extern UnkFreeFunc_ov108_021E90C4 sFreeTexVram_ov108_021E90C4 __asm__("NNS_GfdDefaultFuncFreeTexVram");
extern UnkFreeFunc_ov108_021E90C4 sFreePlttVram_ov108_021E90C4 __asm__("NNS_GfdDefaultFuncFreePlttVram");

extern void ov108_021E9204(UnkStruct_ov108_021E90C4 *data, UnkStruct_ov108_021E90C4_Entry *entry);
extern void ov108_021E91D4(void *owner, UnkStruct_ov108_021E90C4_Entry *entry);
extern void Heap_Free(void *ptr);
extern void MI_CpuFill8(void *dest, u8 value, u32 size);

void ov108_021E90C4(void *owner, UnkStruct_ov108_021E90C4 *data) {
    int i;
    UnkStruct_ov108_021E90C4_Entry *entry;
    NNSG3dTexKey texKey;
    NNSG3dTexKey tex4x4Key;
    UnkFreeFunc_ov108_021E90C4 fn;

    if (*(u16 *)((u8 *)data + 0xB6) > 0) {
        entry = (UnkStruct_ov108_021E90C4_Entry *)((u8 *)data + 0x64);
        i = 0;
        do {
            ov108_021E9204(data, entry);
            ov108_021E91D4(owner, entry);
            i++;
            entry++;
        } while (i < *(u16 *)((u8 *)data + 0xB6));
    }
    if (data->tex != NULL) {
        NNS_G3dTexReleaseTexKey(data->tex, &texKey, &tex4x4Key);
        fn = sFreeTexVram_ov108_021E90C4;
        fn(texKey, fn);
        fn = sFreeTexVram_ov108_021E90C4;
        fn(tex4x4Key, fn);
        u32 plttKey = NNS_G3dPlttReleasePlttKey(data->tex);
        fn = sFreePlttVram_ov108_021E90C4;
        fn(plttKey, fn);
    }
    if (data->buffer != NULL) {
        Heap_Free(data->buffer);
    }
    MI_CpuFill8(data, 0, 0xB8);
}
