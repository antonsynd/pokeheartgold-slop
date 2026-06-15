#include "global.h"

#include "gf_3d_render.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "sys_task_api.h"

typedef struct UnkStruct_02069660 {
    int unk00;
    void *unk04;
    NNSG3dResMdlSet *unk08;
    NNSG3dResMdl *unk0C;
    NNSG3dResTex *unk10;
} UnkStruct_02069660;

void sub_020696C4(UnkStruct_02069660 *s, u32 idx, NARC *narc, s32 fileId, enum HeapID heapID, BOOL atEnd);
void sub_02069714(UnkStruct_02069660 *s);
void sub_02069784(UnkStruct_02069660 *a0);

static void sub_02069660(UnkStruct_02069660 *a0);
static void sub_02069670(UnkStruct_02069660 *s, void *data, u32 idx);
static void sub_020696E8(UnkStruct_02069660 *s);
static void sub_02069700(SysTask *task, void *data);
static void sub_02069734(UnkStruct_02069660 *s);
static void sub_02069744(UnkStruct_02069660 *s);

static void sub_02069660(UnkStruct_02069660 *a0) {
    u8 *p = (u8 *)a0;
    u32 size = sizeof(UnkStruct_02069660);
    do {
        *p++ = 0;
    } while (--size);
}

static void sub_02069670(UnkStruct_02069660 *s, void *data, u32 idx) {
    NNSG3dResMdlSet *mdlSet;
    sub_02069660(s);
    s->unk04 = data;
    s->unk00 = 0;
    mdlSet = NNS_G3dGetMdlSet(data);
    s->unk08 = mdlSet;
    s->unk0C = NNS_G3dGetMdlByIdx(mdlSet, idx);
    s->unk10 = NNS_G3dGetTex(data);
}

void sub_020696C4(UnkStruct_02069660 *s, u32 idx, NARC *narc, s32 fileId, enum HeapID heapID, BOOL atEnd) {
    sub_02069670(s, GfGfxLoader_LoadFromOpenNarc(narc, fileId, FALSE, heapID, atEnd), idx);
}

static void sub_020696E8(UnkStruct_02069660 *s) {
    GF3dRender_AllocAndLoadTexResources(s->unk10);
    NNS_G3dBindMdlSet(s->unk08, s->unk10);
    s->unk00 = 1;
}

static void sub_02069700(SysTask *task, void *data) {
    sub_020696E8(data);
    SysTask_Destroy(task);
}

void sub_02069714(UnkStruct_02069660 *s) {
    GF_ASSERT(SysTask_CreateOnVBlankQueue((SysTaskFunc)sub_02069700, s, 0xFFFF) != NULL);
}

static void sub_02069734(UnkStruct_02069660 *s) {
    if (s->unk04 != NULL) {
        Heap_Free(s->unk04);
    }
}

static void sub_02069744(UnkStruct_02069660 *s) {
    if (s->unk10 != NULL) {
        NNSG3dTexKey texKey;
        NNSG3dTexKey tex4x4Key;
        NNS_G3dTexReleaseTexKey(s->unk10, &texKey, &tex4x4Key);
        (*NNS_GfdDefaultFuncFreeTexVram)(texKey);
        (*NNS_GfdDefaultFuncFreeTexVram)(tex4x4Key);
        (*NNS_GfdDefaultFuncFreePlttVram)(NNS_G3dPlttReleasePlttKey(s->unk10));
        s->unk10 = NULL;
    }
}

void sub_02069784(UnkStruct_02069660 *a0) {
    sub_02069744(a0);
    sub_02069734(a0);
    sub_02069660(a0);
}
