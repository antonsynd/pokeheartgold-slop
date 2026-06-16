#include "unk_02018000.h"

#include "gf_3d_render.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "sys_task_api.h"

static void sub_0201804C(SysTask *task, void *data);
static void sub_020182F8(UnkStruct_020180BC *a0, UnkStruct_02018030 *a1, void *anmRes, NNSFndAllocator *allocator);
static void sub_02018324(UnkStruct_02018030 *a0);

void sub_02018030(UnkStruct_02018030 *a0, NARC *narc, s32 fileId, enum HeapID heapId) {
    a0->resFile = GfGfxLoader_LoadFromOpenNarc(narc, fileId, FALSE, heapId, FALSE);
    sub_02018324(a0);
}

static void sub_0201804C(SysTask *task, void *data) {
    UnkStruct_02018030 *self = data;
    GF3dRender_AllocAndLoadTexResources(self->tex);
    GF3dRender_BindModelSet(self->resFile, self->tex);
    SysTask_Destroy(task);
}

void sub_02018068(UnkStruct_02018030 *a0) {
    if (a0->tex != NULL) {
        NNSG3dTexKey texKey;
        NNSG3dTexKey tex4x4Key;
        NNS_G3dTexReleaseTexKey(a0->tex, &texKey, &tex4x4Key);
        NNS_GfdFreeTexVram(texKey);
        NNS_GfdFreeTexVram(tex4x4Key);
        NNS_GfdFreePlttVram(NNS_G3dPlttReleasePlttKey(a0->tex));
    }
    if (a0->resFile != NULL) {
        Heap_Free(a0->resFile);
    }
    {
        u8 *p = (u8 *)a0;
        u32 i = sizeof(UnkStruct_02018030);
        do {
            *p++ = 0;
        } while (--i);
    }
}

void sub_020180BC(UnkStruct_020180BC *a0, UnkStruct_02018030 *a1, NARC *narc, s32 fileId, enum HeapID heapId, NNSFndAllocator *allocator) {
    void *anmRes = GfGfxLoader_LoadFromOpenNarc(narc, fileId, FALSE, heapId, FALSE);
    sub_020182F8(a0, a1, anmRes, allocator);
    a0->unk10 = 0;
}

void sub_020180E8(UnkStruct_020180BC *a0, UnkStruct_02018030 *a1, void *anmRes, NNSFndAllocator *allocator) {
    sub_020182F8(a0, a1, anmRes, allocator);
    a0->unk10 = 1;
}

void sub_020180F8(UnkStruct_020180BC *a0, NNSFndAllocator *allocator) {
    if (a0->anmRes != NULL) {
        NNS_G3dFreeAnmObj(allocator, a0->anmObj);
        if (a0->unk10 == 0) {
            Heap_Free(a0->anmRes);
        }
    }
    {
        u8 *p = (u8 *)a0;
        u32 i = sizeof(UnkStruct_020180BC);
        do {
            *p++ = 0;
        } while (--i);
    }
}

void sub_02018124(UnkStruct_020180BC *a0, fx32 speed) {
    fx32 max = ((NNSG3dResAnmCommon *)a0->anmObj->resAnm)->numFrame << FX32_SHIFT;
    if (speed > 0) {
        a0->frame = (a0->frame + speed) % max;
    } else {
        a0->frame += speed;
        if (a0->frame < 0) {
            a0->frame += max;
        }
    }
    a0->anmObj->frame = a0->frame;
}

BOOL sub_0201815C(UnkStruct_020180BC *a0, fx32 speed) {
    fx32 max = ((NNSG3dResAnmCommon *)a0->anmObj->resAnm)->numFrame << FX32_SHIFT;
    BOOL ret = FALSE;
    if (speed > 0) {
        if (a0->frame + speed < max) {
            a0->frame += speed;
        } else {
            a0->frame = max;
            ret = TRUE;
        }
    } else {
        if (a0->frame + speed >= 0) {
            a0->frame += speed;
        } else {
            a0->frame = 0;
            ret = TRUE;
        }
    }
    a0->anmObj->frame = a0->frame;
    return ret;
}

void sub_02018198(UnkStruct_020180BC *a0, fx32 frame) {
    a0->frame = frame;
    a0->anmObj->frame = frame;
}

fx32 sub_020181A0(UnkStruct_020180BC *a0) {
    return a0->frame;
}

fx32 sub_020181A4(UnkStruct_020180BC *a0) {
    return ((NNSG3dResAnmCommon *)a0->anmObj->resAnm)->numFrame << FX32_SHIFT;
}

void sub_020181B0(UnkStruct_020181B0 *a0, UnkStruct_02018030 *a1) {
    memset(a0, 0, sizeof(UnkStruct_020181B0));
    NNS_G3dRenderObjInit(&a0->renderObj, a1->model);
    a0->visible = TRUE;
    a0->scale.x = FX32_ONE;
    a0->scale.y = FX32_ONE;
    a0->scale.z = FX32_ONE;
}

void sub_020181D4(UnkStruct_020181B0 *a0, UnkStruct_020180BC *a1) {
    NNS_G3dRenderObjAddAnmObj(&a0->renderObj, a1->anmObj);
}

void sub_020181E0(UnkStruct_020181B0 *a0, UnkStruct_020180BC *a1) {
    NNS_G3dRenderObjRemoveAnmObj(&a0->renderObj, a1->anmObj);
}

void sub_020181EC(UnkStruct_020181B0 *a0) {
    if (a0->visible) {
        MtxFx33 rot;
        MtxFx33 tmp;
        MTX_Identity33_(&rot);
        MTX_RotX33_(&tmp, FX_SinIdx(a0->rotation[0]), FX_CosIdx(a0->rotation[0]));
        MTX_Concat33(&tmp, &rot, &rot);
        MTX_RotZ33_(&tmp, FX_SinIdx(a0->rotation[2]), FX_CosIdx(a0->rotation[2]));
        MTX_Concat33(&tmp, &rot, &rot);
        MTX_RotY33_(&tmp, FX_SinIdx(a0->rotation[1]), FX_CosIdx(a0->rotation[1]));
        MTX_Concat33(&tmp, &rot, &rot);
        GF3dRender_DrawModel(&a0->renderObj, &a0->translation, &rot, &a0->scale);
    }
}

void sub_02018288(UnkStruct_020181B0 *a0, const MtxFx33 *rotation) {
    if (a0->visible) {
        GF3dRender_DrawModel(&a0->renderObj, &a0->translation, rotation, &a0->scale);
    }
}

void sub_020182A0(UnkStruct_020181B0 *a0, int visible) {
    a0->visible = visible;
}

int sub_020182A4(UnkStruct_020181B0 *a0) {
    return a0->visible;
}

void sub_020182A8(UnkStruct_020181B0 *a0, fx32 x, fx32 y, fx32 z) {
    a0->translation.x = x;
    a0->translation.y = y;
    a0->translation.z = z;
}

void sub_020182B0(UnkStruct_020181B0 *a0, fx32 *x, fx32 *y, fx32 *z) {
    *x = a0->translation.x;
    *y = a0->translation.y;
    *z = a0->translation.z;
}

void sub_020182C4(UnkStruct_020181B0 *a0, fx32 x, fx32 y, fx32 z) {
    a0->scale.x = x;
    a0->scale.y = y;
    a0->scale.z = z;
}

void sub_020182CC(UnkStruct_020181B0 *a0, fx32 *x, fx32 *y, fx32 *z) {
    *x = a0->scale.x;
    *y = a0->scale.y;
    *z = a0->scale.z;
}

void sub_020182E0(UnkStruct_020181B0 *a0, u16 value, int idx) {
    a0->rotation[idx] = value;
}

u16 sub_020182EC(UnkStruct_020181B0 *a0, int idx) {
    return a0->rotation[idx];
}

static void sub_020182F8(UnkStruct_020180BC *a0, UnkStruct_02018030 *a1, void *anmRes, NNSFndAllocator *allocator) {
    a0->anmRes = anmRes;
    a0->anm = NNS_G3dGetAnmByIdx(anmRes, 0);
    a0->anmObj = NNS_G3dAllocAnmObj(allocator, a0->anm, a1->model);
    NNS_G3dAnmObjInit(a0->anmObj, a0->anm, a1->model, a1->tex);
}

static void sub_02018324(UnkStruct_02018030 *a0) {
    GF_ASSERT(a0->resFile != NULL);
    a0->mdlSet = NNS_G3dGetMdlSet(a0->resFile);
    a0->model = NNS_G3dGetMdlByIdx(a0->mdlSet, 0);
    a0->tex = NNS_G3dGetTex(a0->resFile);
    if (a0->tex != NULL) {
        SysTask_CreateOnVWaitQueue(sub_0201804C, a0, 0x400);
    }
}
