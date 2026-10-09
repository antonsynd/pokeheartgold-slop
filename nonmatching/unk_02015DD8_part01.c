#include "global.h"

#include "heap.h"

typedef struct UnkStruct_02015DD8_Entry {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    int unkC;
    int unk10;
    int unk14;
    int unk18;
    int unk1C;
    int unk20;
    void *unk24;
    u32 unk28;
    u32 unk2C;
    u32 unk30;
    int unk34;
    int unk38;
    u16 unk3C;
    u8 unk3E;
    u8 unk3F;
} UnkStruct_02015DD8_Entry;

typedef struct UnkStruct_02015DD8_Image {
    u32 unk0;
    NNSG2dImageProxy unk4;
} UnkStruct_02015DD8_Image;

typedef struct UnkStruct_02015DD8_Palette {
    u32 unk0;
    NNSG2dImagePaletteProxy unk4;
} UnkStruct_02015DD8_Palette;

typedef struct UnkStruct_02015DD8 {
    UnkStruct_02015DD8_Entry *unk0;
    int unk4;
    UnkStruct_02015DD8_Image *unk8;
    int unkC;
    UnkStruct_02015DD8_Palette *unk10;
    int unk14;
} UnkStruct_02015DD8;

typedef struct UnkStruct_02015DDC {
    int unk0;
    int unk4;
    int unk8;
    enum HeapID heapId;
} UnkStruct_02015DDC;

typedef struct UnkStruct_02015EA0 {
    UnkStruct_02015DD8 *unk0;
    NNSG2dCharacterData *unk4;
} UnkStruct_02015EA0;

typedef struct UnkStruct_02015F1C {
    UnkStruct_02015DD8 *unk0;
    NNSG2dPaletteData *unk4;
    int unk8;
} UnkStruct_02015F1C;

typedef struct UnkStruct_02015F8C {
    UnkStruct_02015DD8 *unk0;
    UnkStruct_02015DD8_Image *unk4;
    UnkStruct_02015DD8_Palette *unk8;
    s16 unkC;
    s16 unkE;
    u16 unk10;
    int unk14;
    int unk18;
    u16 unk1C;
} UnkStruct_02015F8C;

extern void sub_020161CC(UnkStruct_02015DD8_Entry *entry);
extern UnkStruct_02015DD8_Image *sub_02016118(UnkStruct_02015DD8 *a0);
extern u32 sub_02016170(NNSG2dCharacterData *charData);
extern void sub_02016198(NNSG2dCharacterData *charData, u32 texKey, NNSG2dImageProxy *proxy);
extern UnkStruct_02015DD8_Palette *sub_02016144(UnkStruct_02015DD8 *a0);
extern u32 sub_02016184(int count);
extern void sub_020161A8(NNSG2dPaletteData *palData, u32 plttKey, NNSG2dImagePaletteProxy *proxy);
extern UnkStruct_02015DD8_Entry *sub_020160EC(UnkStruct_02015DD8 *a0);
extern void sub_0201630C(UnkStruct_02015DD8_Entry *entry, UnkStruct_02015F8C *a1);
extern UnkStruct_02015DD8_Palette *sub_020160BC(int count, enum HeapID heapId);

void sub_02015EDC(UnkStruct_02015DD8_Image *a0);
void sub_02015F4C(UnkStruct_02015DD8_Palette *a0);
void sub_02016024(UnkStruct_02015DD8_Entry *a0);
void sub_02016044(UnkStruct_02015DD8_Image *a0);
void sub_02016050(UnkStruct_02015DD8_Palette *a0);
UnkStruct_02015DD8_Entry *sub_0201605C(int count, enum HeapID heapId);
UnkStruct_02015DD8_Image *sub_0201608C(int count, enum HeapID heapId);

UnkStruct_02015DD8 *sub_02015DDC(UnkStruct_02015DDC *a0) {
    UnkStruct_02015DD8 *r4 = Heap_Alloc(a0->heapId, sizeof(UnkStruct_02015DD8));
    GF_ASSERT(r4 != NULL);
    r4->unk0 = sub_0201605C(a0->unk0, a0->heapId);
    r4->unk4 = a0->unk0;
    r4->unk8 = sub_0201608C(a0->unk4, a0->heapId);
    r4->unkC = a0->unk4;
    r4->unk10 = sub_020160BC(a0->unk8, a0->heapId);
    r4->unk14 = a0->unk8;
    return r4;
}

void sub_02015E20(UnkStruct_02015DD8 *a0) {
    GF_ASSERT(a0 != NULL);
    GF_ASSERT(a0->unk0 != NULL);
    GF_ASSERT(a0->unk8 != NULL);
    GF_ASSERT(a0->unk10 != NULL);
    Heap_Free(a0->unk0);
    Heap_Free(a0->unk8);
    Heap_Free(a0->unk10);
    Heap_Free(a0);
}

void sub_02015E64(UnkStruct_02015DD8 *a0) {
    int i;
    G3_PushMtx();
    for (i = 0; i < a0->unk4; i++) {
        if (a0->unk0[i].unk20 != 0) {
            sub_020161CC(&a0->unk0[i]);
        }
    }
    G3_PopMtx(1);
}

UnkStruct_02015DD8_Image *sub_02015EA0(UnkStruct_02015EA0 *a0) {
    UnkStruct_02015DD8_Image *image = sub_02016118(a0->unk0);
    NNSG2dImageProxy *proxy;
    GF_ASSERT(image != NULL);
    GF_ASSERT(a0->unk4->mapingType == 0);
    image->unk0 = sub_02016170(a0->unk4);
    GF_ASSERT(image->unk0 != 0);
    proxy = &image->unk4;
    sub_02016198(a0->unk4, image->unk0, proxy);
    return image;
}

void sub_02015EDC(UnkStruct_02015DD8_Image *a0) {
    NNS_GfdFreeTexVram(a0->unk0);
    sub_02016044(a0);
}

void sub_02015EF4(UnkStruct_02015DD8 *a0) {
    int i;
    for (i = 0; i < a0->unkC; i++) {
        if (a0->unk8[i].unk0 != 0) {
            sub_02015EDC(&a0->unk8[i]);
        }
    }
}

UnkStruct_02015DD8_Palette *sub_02015F1C(UnkStruct_02015F1C *a0) {
    UnkStruct_02015DD8_Palette *palette = sub_02016144(a0->unk0);
    NNSG2dImagePaletteProxy *proxy;
    GF_ASSERT(palette != NULL);
    palette->unk0 = sub_02016184(a0->unk8);
    GF_ASSERT(palette->unk0 != 0);
    proxy = &palette->unk4;
    sub_020161A8(a0->unk4, palette->unk0, proxy);
    return palette;
}

void sub_02015F4C(UnkStruct_02015DD8_Palette *a0) {
    NNS_GfdFreePlttVram(a0->unk0);
    sub_02016050(a0);
}

void sub_02015F64(UnkStruct_02015DD8 *a0) {
    int i;
    for (i = 0; i < a0->unk14; i++) {
        if (a0->unk10[i].unk0 != 0) {
            sub_02015F4C(&a0->unk10[i]);
        }
    }
}

UnkStruct_02015DD8_Entry *sub_02015F8C(UnkStruct_02015F8C *a0) {
    UnkStruct_02015DD8_Entry *entry = sub_020160EC(a0->unk0);
    GF_ASSERT(entry != NULL);
    sub_0201630C(entry, a0);
    entry->unk1C = 1;
    entry->unk20 = 1;
    return entry;
}

void sub_02015FB0(UnkStruct_02015DD8_Entry *a0, int a1) {
    GF_ASSERT(a0 != NULL);
    a0->unk20 = a1;
}

void sub_02015FC4(UnkStruct_02015DD8_Entry *a0, u16 a1, u16 a2) {
    a0->unk0 = a1;
    a0->unk2 = a2;
}

u32 sub_02015FCC(UnkStruct_02015DD8_Entry *a0) {
    return a0->unk0 | ((u32)a0->unk2 << 16);
}

void sub_02015FD8(UnkStruct_02015DD8_Entry *a0, u16 a1, u16 a2) {
    a0->unk4 = a1;
    a0->unk6 = a2;
}

void sub_02015FE0(UnkStruct_02015DD8_Entry *a0, u16 a1, u16 a2) {
    a0->unk8 = a1;
    a0->unkA = a2;
}

u32 sub_02015FE8(UnkStruct_02015DD8_Entry *a0) {
    return a0->unk8 | ((u32)a0->unkA << 16);
}

void sub_02015FF4(UnkStruct_02015DD8_Entry *a0, int a1) {
    a0->unk14 = a1;
}

int sub_02015FF8(UnkStruct_02015DD8_Entry *a0) {
    return a0->unk14;
}

void sub_02015FFC(UnkStruct_02015DD8_Entry *a0, u8 a1) {
    a0->unk3E = a1;
}

void sub_02016004(UnkStruct_02015DD8_Entry *a0, void *a1) {
    a0->unk24 = a1;
}

void sub_02016008(UnkStruct_02015DD8_Entry *a0, u32 a1) {
    a0->unk28 = a1;
}

void sub_0201600C(UnkStruct_02015DD8_Entry *a0, u32 a1) {
    a0->unk2C = a1;
}

void sub_02016010(UnkStruct_02015DD8_Entry *a0, u32 a1) {
    a0->unk30 = a1;
}

void sub_02016014(UnkStruct_02015DD8_Entry *a0, int a1, int a2) {
    if (a1 == 0) {
        a0->unk34 = a2;
    } else {
        a0->unk38 = a2;
    }
}

void sub_02016020(UnkStruct_02015DD8_Entry *a0, int a1) {
    a0->unk18 = a1;
}

void sub_02016024(UnkStruct_02015DD8_Entry *a0) {
    memset(a0, 0, sizeof(UnkStruct_02015DD8_Entry));
    a0->unk3E = 0x1F;
    a0->unk3C = 0x7FFF;
}

void sub_02016044(UnkStruct_02015DD8_Image *a0) {
    a0->unk0 = 0;
    NNS_G2dInitImageProxy(&a0->unk4);
}

void sub_02016050(UnkStruct_02015DD8_Palette *a0) {
    a0->unk0 = 0;
    NNS_G2dInitImagePaletteProxy(&a0->unk4);
}

UnkStruct_02015DD8_Entry *sub_0201605C(int count, enum HeapID heapId) {
    int i;
    UnkStruct_02015DD8_Entry *entries = Heap_Alloc(heapId, count * sizeof(UnkStruct_02015DD8_Entry));
    GF_ASSERT(entries != NULL);
    for (i = 0; i < count; i++) {
        sub_02016024(&entries[i]);
    }
    return entries;
}

UnkStruct_02015DD8_Image *sub_0201608C(int count, enum HeapID heapId) {
    int i;
    UnkStruct_02015DD8_Image *images = Heap_Alloc(heapId, sizeof(UnkStruct_02015DD8_Image) * count);
    GF_ASSERT(images != NULL);
    for (i = 0; i < count; i++) {
        sub_02016044(&images[i]);
    }
    return images;
}
