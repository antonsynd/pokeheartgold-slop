#include "global.h"

#include "gf_3d_render.h"
#include "heap.h"
#include "unk_0202068C.h"

// This is the same billboard (3D sprite) list system as pokeplatinum's src/billboard.c.

// NitroSystem G3D material structures and accessors not present in lib/include.
typedef struct NNSG3dResMat {
    u16 ofsDictTexToMatList;
    u16 ofsDictPlttToMatList;
    NNSG3dResDict dict;
} NNSG3dResMat;

typedef struct NNSG3dResDictTexToMatIdxData {
    u16 offset;
    u8 numIdx;
    u8 flag;
} NNSG3dResDictTexToMatIdxData;

typedef struct NNSG3dResDictPlttToMatIdxData {
    u16 offset;
    u8 numIdx;
    u8 flag;
} NNSG3dResDictPlttToMatIdxData;

typedef struct NNSG3dResDictTexData {
    u32 texImageParam;
    u32 extraParam;
} NNSG3dResDictTexData;

typedef struct NNSG3dResDictPlttData {
    u16 offset;
    u16 flag;
} NNSG3dResDictPlttData;

typedef struct NNSG3dResMatData {
    u16 itemTag;
    u16 size;
    u32 diffAmb;
    u32 specEmi;
    u32 polyAttr;
    u32 polyAttrMask;
    u32 texImageParam;
    u32 texImageParamMask;
    u16 texPlttBase;
    u16 flag;
} NNSG3dResMatData;

#define NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK 0x0000FFFF
#define REG_G3_TEXPLTT_BASE_PLTT_BASE_MASK   0x1FFF

static inline NNSG3dResMat *NNS_G3dGetMat(const NNSG3dResMdl *mdl) {
    if (mdl != NULL && mdl->ofsMat != 0) {
        return (NNSG3dResMat *)((u8 *)mdl + mdl->ofsMat);
    }
    return NULL;
}

static inline const NNSG3dResDictTexData *NNS_G3dGetTexDataByIdx(const NNSG3dResTex *tex, u32 idx) {
    if (tex != NULL) {
        return (const NNSG3dResDictTexData *)NNS_G3dGetResDataByIdx(&tex->dict, idx);
    }
    return NULL;
}

static inline const NNSG3dResDictPlttData *NNS_G3dGetPlttDataByIdx(const NNSG3dResTex *tex, u32 idx) {
    if (tex != NULL && tex->plttInfo.ofsDict != 0) {
        return (const NNSG3dResDictPlttData *)NNS_G3dGetResDataByIdx((const NNSG3dResDict *)((u8 *)tex + tex->plttInfo.ofsDict), idx);
    }
    return NULL;
}

static inline NNSG3dResMatData *NNS_G3dGetMatDataByIdx(const NNSG3dResMat *mat, u32 idx) {
    if (mat != NULL) {
        const u32 *ofs = (const u32 *)NNS_G3dGetResDataByIdx(&mat->dict, idx);
        if (ofs != NULL) {
            return (NNSG3dResMatData *)((u8 *)mat + *ofs);
        }
    }
    return NULL;
}

void NNS_G3dReleaseMdlSet(NNSG3dResMdlSet *pMdlSet);

enum BillboardAnimType {
    BILLBOARD_ANIM_TYPE_LOOP = 0,
    BILLBOARD_ANIM_TYPE_ONESHOT,
};

enum BillboardState {
    BILLBOARD_STATE_INACTIVE = 0,
    BILLBOARD_STATE_INITIALIZED,
    BILLBOARD_STATE_VRAM_TRANSFER,
    BILLBOARD_STATE_ACTIVE,
};

enum BillboardAnimStatus {
    BILLBOARD_ANIM_STATUS_RUNNING = 0,
    BILLBOARD_ANIM_STATUS_FINISHED,
};

enum BillboardRedraw {
    BILLBOARD_REDRAW_NONE = 0,
    BILLBOARD_REDRAW_NEEDED,
    BILLBOARD_REDRAW_FINISHED,
};

enum BillboardResourceValue {
    BILLBOARD_RESOURCE_MODEL_RES = 0,
    BILLBOARD_RESOURCE_TEXTURE,
};

typedef struct Billboard Billboard;
typedef struct BillboardList BillboardList;
typedef void (*BillboardCallback)(Billboard *, void *);

typedef struct BillboardTexPlttIndex {
    u8 textureIdx;
    u8 plttIdx;
} BillboardTexPlttIndex;

typedef struct BillboardGfxSequence {
    const u16 *startFrame;
    const u8 *textureIdx;
    const u8 *plttIdx;
    u32 seqCount;
} BillboardGfxSequence;

typedef struct BillboardAnim {
    int startFrame;
    int endFrame;
    int animType;
} BillboardAnim;

struct Billboard {
    VecFx32 pos;
    VecFx32 scale;
    const MtxFx33 *rotMatrix;
    void *callbackParam;
    BillboardCallback callback;
    u8 draw;
    BillboardList *list;
    const BillboardAnim *anims;
    NNSG3dRenderObj renderObj;
    NNSG3dResMdlSet *modelSet;
    NNSG3dResMdl *model;
    NNSG3dResTex *texture;
    const NNSG3dResTex *animTexture;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey plttKey;
    BillboardGfxSequence gfxSequence;
    UnkStruct_0202068C_entry *vramTransfer;
    u8 state;
    u16 animNum;
    fx32 frameNum;
    Billboard *next;
    Billboard *prev;
}; // size: 0xC4

struct BillboardList {
    u8 active;
    u8 draw;
    u8 unused;
    u8 redraw;
    Billboard *billboards;
    int capacity;
    Billboard sentinelData;
    Billboard **freeBillboards;
    int freeBillboardHead;
    NNSFndAllocator *allocator;
    UnkStruct_0202068C *vramTransfer;
}; // size: 0xE0

typedef struct BillboardResources {
    void *modelRes;
    const NNSG3dResTex *texture;
    const BillboardAnim *anims;
    BillboardGfxSequence gfxSequence;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey plttKey;
} BillboardResources;

typedef struct BillboardTemplate {
    BillboardList *list;
    const BillboardResources *resources;
    VecFx32 pos;
    VecFx32 scale;
} BillboardTemplate;

typedef struct BillboardListParams {
    int maxElements;
    enum HeapID heapID;
} BillboardListParams;

BillboardTexPlttIndex sub_02026DE0(const BillboardGfxSequence *gfxSequence, const u16 index);

static void sub_02023694(BillboardList *list);
static void sub_020236BC(Billboard *billboard);
void BillboardLists_Create(int count, enum HeapID heapID);
void BillboardLists_Delete(void);
void BillboardLists_Draw(void);
BillboardList *sub_020237EC(const BillboardListParams *params);
BOOL sub_02023874(BillboardList *list);
static BOOL sub_020238BC(BillboardList *list);
BOOL sub_020238F8(BillboardList *list);
void sub_02023910(BillboardList *list);
static BillboardList *sub_0202391C(void);
static void sub_02023950(BillboardList *list);
static void sub_020239D0(Billboard *billboard, const BillboardResources *resources);
static void sub_02023A20(Billboard *billboard, const BillboardResources *resources);
static void sub_02023AA0(const NNSG3dResTex *texture, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *plttKey);
static void sub_02023B38(NNSG3dResTex *texture, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *outPlttKey);
static void sub_02023B4C(NNSG3dResTex *texture, NNSG3dResMdlSet *modelSet, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *plttKey);
static void sub_02023B70(NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *plttKey);
static BOOL sub_02023BA4(const NNSG3dResTex *texture1, const NNSG3dResTex *texture2);
static void sub_02023C04(BillboardList *unused, Billboard *billboard);
static void sub_02023C20(Billboard *billboard, const BillboardResources *resources);
static void sub_02023C9C(const BillboardList *list, Billboard *billboard, const BillboardResources *resources);
static void sub_02023CF0(Billboard *billboard, const BillboardResources *resources);
static void sub_02023D24(Billboard *billboard, const BillboardResources *resources);
Billboard *sub_02023D44(const BillboardTemplate *template);
BOOL sub_02023DA4(Billboard *billboard);
void sub_02023E04(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *anims, const BillboardGfxSequence *gfxSequence, NNSGfdTexKey texKey, NNSGfdTexKey tex4x4Key, NNSGfdPlttKey plttKey);
void sub_02023E2C(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *anims, const BillboardGfxSequence *gfxSequence);
void sub_02023E50(Billboard *billboard, const VecFx32 *pos);
const VecFx32 *sub_02023E68(const Billboard *billboard);
void sub_02023E78(Billboard *billboard, const VecFx32 *scale);
const VecFx32 *sub_02023E94(const Billboard *billboard);
void sub_02023EA4(Billboard *billboard, u8 draw);
u8 sub_02023EB8(const Billboard *billboard);
void sub_02023EC8(Billboard *billboard, const BillboardResources *resources);
void sub_02023EE0(Billboard *billboard, int animNum);
int sub_02023EF4(const Billboard *billboard);
int sub_02023F04(Billboard *billboard, fx32 numFrames);
void sub_02023F1C(Billboard *billboard, fx32 frameNum);
fx32 sub_02023F30(const Billboard *billboard);
void sub_02023F40(Billboard *billboard, fx32 animFrameNum);
fx32 sub_02023F70(const Billboard *billboard);
NNSG3dResMdl *sub_02023F90(const Billboard *billboard);
NNSGfdTexKey sub_02023FA0(Billboard *billboard);
NNSGfdPlttKey sub_02023FB0(Billboard *billboard);
void sub_02023FC0(Billboard *billboard);
NNSG3dResMdl *sub_02023FDC(Billboard *billboard);
void sub_02023FE4(Billboard *billboard, BillboardCallback callback, void *callbackParam);
static void sub_02023FEC(Billboard *billboard);
static void sub_0202403C(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 textureIdx);
static void sub_020240C4(NNSG3dResMat *material, const NNSG3dResDictTexToMatIdxData *texToMatDict, u32 textureAddress);
static void sub_02024140(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 plttIdx);
static void sub_020241CC(NNSG3dResMat *material, const NNSG3dResDictPlttToMatIdxData *plttToMatDict, u32 plttAddress);
static void sub_02024248(BillboardList *list);
static Billboard *sub_02024280(BillboardList *list);
static BOOL sub_020242AC(BillboardList *list, Billboard *billboard);
static void sub_020242E4(Billboard *sentinel, Billboard *newBillboard);
static void sub_02024308(Billboard *billboard);
static NNSG3dResMdlSet *sub_02024328(const BillboardResources *resources, NNSG3dResMdl **outModel, NNSG3dResTex **outTexture);
static NNSG3dResTex *sub_02024374(const BillboardResources *resources);
static void sub_02024380(Billboard *billboard, const BillboardResources *resources);
static fx32 sub_02024394(const Billboard *billboard, int animNum);
static int sub_020243A4(Billboard *billboard, fx32 numFrames);
static int sub_020243C4(const BillboardAnim *anim, fx32 *currentFrame, fx32 numFrames);
static void sub_020243FC(Billboard *billboard);
static void sub_0202441C(Billboard *billboard);
static void *sub_0202443C(const BillboardResources *resources, int value);
static const BillboardAnim *sub_02024454(const BillboardAnim *anims, int index);

static BillboardList *sBillboardLists = NULL;
static int sBillboardListCount = 0;

static void sub_02023694(BillboardList *list) {
    list->active = FALSE;
    list->draw = FALSE;
    list->billboards = NULL;
    list->capacity = 0;
    list->freeBillboards = NULL;
    list->freeBillboardHead = 0;
    list->allocator = NULL;
    list->vramTransfer = NULL;
    list->redraw = BILLBOARD_REDRAW_NONE;
}

static void sub_020236BC(Billboard *billboard) {
    billboard->list = NULL;
    billboard->anims = NULL;
    billboard->modelSet = NULL;
    billboard->model = NULL;
    billboard->texture = NULL;
    billboard->animTexture = NULL;

    memset(&billboard->gfxSequence, 0, sizeof(BillboardGfxSequence));

    billboard->texKey = NNS_GFD_ALLOC_ERROR_TEXKEY;
    billboard->tex4x4Key = NNS_GFD_ALLOC_ERROR_TEXKEY;
    billboard->plttKey = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    billboard->vramTransfer = NULL;

    billboard->pos.x = 0;
    billboard->pos.y = 0;
    billboard->pos.z = 0;
    billboard->scale.x = FX32_ONE;
    billboard->scale.y = FX32_ONE;
    billboard->scale.z = FX32_ONE;

    billboard->rotMatrix = NULL;
    billboard->animNum = 0;
    billboard->state = BILLBOARD_STATE_INACTIVE;
    billboard->next = NULL;
    billboard->prev = NULL;
    billboard->draw = FALSE;
    billboard->callback = NULL;
}

void BillboardLists_Create(int count, enum HeapID heapID) {
    GF_ASSERT(sBillboardLists == NULL);

    sBillboardLists = Heap_Alloc(heapID, sizeof(BillboardList) * count);
    sBillboardListCount = count;

    for (int i = 0; i < count; i++) {
        sub_02023694(&sBillboardLists[i]);
    }
}

void BillboardLists_Delete(void) {
    for (int i = 0; i < sBillboardListCount; i++) {
        sub_02023874(sBillboardLists + i);
    }

    Heap_Free(sBillboardLists);

    sBillboardLists = NULL;
    sBillboardListCount = 0;
}

void BillboardLists_Draw(void) {
    for (int i = 0; i < sBillboardListCount; i++) {
        if (sBillboardLists[i].draw == TRUE) {
            sub_02023950(&sBillboardLists[i]);
        }

        if (sBillboardLists[i].redraw == BILLBOARD_REDRAW_NEEDED) {
            sBillboardLists[i].redraw = BILLBOARD_REDRAW_FINISHED;
        }
    }
}

BillboardList *sub_020237EC(const BillboardListParams *params) {
    BillboardList *list = sub_0202391C();

    if (list == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    list->active = TRUE;
    list->draw = TRUE;
    list->billboards = Heap_Alloc(params->heapID, sizeof(Billboard) * params->maxElements);
    list->capacity = params->maxElements;

    sub_020236BC(&list->sentinelData);

    list->sentinelData.next = &list->sentinelData;
    list->sentinelData.prev = &list->sentinelData;
    list->freeBillboards = Heap_Alloc(params->heapID, sizeof(Billboard *) * params->maxElements);

    sub_02024248(list);
    list->allocator = Heap_Alloc(params->heapID, sizeof(NNSFndAllocator));

    HeapExp_FndInitAllocator(list->allocator, params->heapID, 4);
    list->vramTransfer = sub_0202068C(params->maxElements, params->heapID);

    return list;
}

BOOL sub_02023874(BillboardList *list) {
    if (list == NULL) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (list->active) {
        sub_020238BC(list);
        Heap_Free(list->billboards);
        Heap_Free(list->freeBillboards);
        Heap_Free(list->allocator);
        sub_020206C8(list->vramTransfer);
        sub_02023694(list);
    }

    return TRUE;
}

static BOOL sub_020238BC(BillboardList *list) {
    Billboard *billboard, *next;

    if (list == NULL) {
        GF_ASSERT(list);
        return FALSE;
    }

    if (list->active) {
        billboard = list->sentinelData.next;

        while (billboard != &list->sentinelData) {
            next = billboard->next;
            sub_02023DA4(billboard);
            billboard = next;
        }
    }

    return TRUE;
}

BOOL sub_020238F8(BillboardList *list) {
    GF_ASSERT(list);

    if (list->redraw == BILLBOARD_REDRAW_NONE) {
        return FALSE;
    }

    return TRUE;
}

void sub_02023910(BillboardList *list) {
    if (list->redraw == BILLBOARD_REDRAW_FINISHED) {
        list->redraw = BILLBOARD_REDRAW_NONE;
    }
}

static BillboardList *sub_0202391C(void) {
    for (int i = 0; i < sBillboardListCount; i++) {
        if (sBillboardLists[i].active == FALSE) {
            return &sBillboardLists[i];
        }
    }

    return NULL;
}

static void sub_02023950(BillboardList *list) {
    MtxFx33 identityMatrix;
    const MtxFx33 *rotMatrix;

    GF_ASSERT(list);
    MTX_Identity33(&identityMatrix);

    Billboard *billboard = list->sentinelData.next;

    while (billboard != &list->sentinelData) {
        if (billboard->draw == TRUE) {
            if (billboard->callback != NULL) {
                billboard->callback(billboard, billboard->callbackParam);
            }

            sub_020243FC(billboard);

            if (billboard->state == BILLBOARD_STATE_ACTIVE) {
                sub_02023FEC(billboard);
            } else if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
                sub_02023FC0(billboard);
            }

            rotMatrix = billboard->rotMatrix;

            if (rotMatrix == NULL) {
                rotMatrix = &identityMatrix;
            }

            GF3dRender_DrawModel(&billboard->renderObj, &billboard->pos, rotMatrix, &billboard->scale);
            sub_0202441C(billboard);
        }

        billboard = billboard->next;
    }
}

static void sub_020239D0(Billboard *billboard, const BillboardResources *resources) {
    BillboardList *list = billboard->list;

    sub_02023C04(list, billboard);
    sub_02023C20(billboard, resources);
    sub_02023C9C(list, billboard, resources);

    if (billboard->state == BILLBOARD_STATE_INITIALIZED) {
        sub_020242E4(&list->sentinelData, billboard);
    }

    billboard->state = BILLBOARD_STATE_VRAM_TRANSFER;
    billboard->anims = resources->anims;
    billboard->animNum = 0;
    billboard->frameNum = 0;
}

static void sub_02023A20(Billboard *billboard, const BillboardResources *resources) {
    BillboardList *list = billboard->list;

    sub_02023C04(list, billboard);

    if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
        sub_02023B70(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }

    billboard->texKey = resources->texKey;
    billboard->tex4x4Key = resources->tex4x4Key;
    billboard->plttKey = resources->plttKey;

    sub_02023CF0(billboard, resources);
    sub_02023D24(billboard, resources);

    if (billboard->state == BILLBOARD_STATE_INITIALIZED) {
        sub_020242E4(&list->sentinelData, billboard);
    }

    billboard->state = BILLBOARD_STATE_ACTIVE;
    billboard->anims = resources->anims;
    billboard->animNum = 0;
    billboard->frameNum = 0;
}

static void sub_02023AA0(const NNSG3dResTex *texture, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *plttKey) {
    u32 texSize = NNS_G3dTexGetRequiredSize(texture);
    u32 tex4x4Size = NNS_G3dTex4x4GetRequiredSize(texture);
    u32 plttSize = NNS_G3dPlttGetRequiredSize(texture);

    if (texSize > 0) {
        *texKey = NNS_GfdAllocTexVram(texSize, FALSE, 0);
        GF_ASSERT(*texKey != NNS_GFD_ALLOC_ERROR_TEXKEY);
    } else {
        *texKey = 0;
    }

    if (tex4x4Size > 0) {
        *tex4x4Key = NNS_GfdAllocTexVram(tex4x4Size, TRUE, 0);
        GF_ASSERT(*tex4x4Key != NNS_GFD_ALLOC_ERROR_TEXKEY);
    } else {
        *tex4x4Key = 0;
    }

    if (plttSize > 0) {
        *plttKey = NNS_GfdAllocPlttVram(plttSize, texture->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);
        GF_ASSERT(*plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY);
    } else {
        *plttKey = 0;
    }
}

static void sub_02023B38(NNSG3dResTex *texture, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *outPlttKey) {
    NNS_G3dTexReleaseTexKey(texture, texKey, tex4x4Key);
    *outPlttKey = NNS_G3dPlttReleasePlttKey(texture);
}

static void sub_02023B4C(NNSG3dResTex *texture, NNSG3dResMdlSet *modelSet, NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *plttKey) {
    NNS_G3dTexSetTexKey(texture, *texKey, *tex4x4Key);
    NNS_G3dPlttSetPlttKey(texture, *plttKey);
    NNS_G3dBindMdlSet(modelSet, texture);
}

static void sub_02023B70(NNSGfdTexKey *texKey, NNSGfdTexKey *tex4x4Key, NNSGfdPlttKey *plttKey) {
    if (*texKey != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        NNS_GfdFreeTexVram(*texKey);
    }

    if (*tex4x4Key != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        NNS_GfdFreeTexVram(*tex4x4Key);
    }

    if (*plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        NNS_GfdFreePlttVram(*plttKey);
    }
}

static BOOL sub_02023BA4(const NNSG3dResTex *texture1, const NNSG3dResTex *texture2) {
    if (texture1 == NULL || texture2 == NULL) {
        return FALSE;
    }

    u32 texSize1 = NNS_G3dTexGetRequiredSize(texture1);
    u32 tex4x4Size1 = NNS_G3dTex4x4GetRequiredSize(texture1);
    u32 plttSize1 = NNS_G3dPlttGetRequiredSize(texture1);
    u32 texSize2 = NNS_G3dTexGetRequiredSize(texture2);
    u32 tex4x4Size2 = NNS_G3dTex4x4GetRequiredSize(texture2);
    u32 plttSize2 = NNS_G3dPlttGetRequiredSize(texture2);

    BOOL ret;
    if (texSize1 != texSize2 || tex4x4Size1 != tex4x4Size2 || plttSize1 != plttSize2) {
        ret = FALSE;
    } else {
        ret = TRUE;
    }

    return ret;
}

static void sub_02023C04(BillboardList *unused, Billboard *billboard) {
    if (billboard->vramTransfer) {
        sub_02020738(billboard->vramTransfer);
        billboard->vramTransfer = NULL;
    }
}

static void sub_02023C20(Billboard *billboard, const BillboardResources *resources) {
    BOOL sameTexSize;
    NNSG3dResTex *originalTexture = billboard->texture;

    billboard->modelSet = sub_02024328(resources, &billboard->model, &billboard->texture);

    NNS_G3dRenderObjInit(&billboard->renderObj, billboard->model);

    if (billboard->state != BILLBOARD_STATE_ACTIVE) {
        sameTexSize = sub_02023BA4(originalTexture, billboard->texture);
    } else {
        sameTexSize = FALSE;
    }

    if (sameTexSize == FALSE) {
        if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
            sub_02023B70(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
        }

        sub_02023AA0(billboard->texture, &billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }
}

static void sub_02023C9C(const BillboardList *list, Billboard *billboard, const BillboardResources *resources) {
    billboard->animTexture = sub_02024374(resources);
    billboard->gfxSequence = resources->gfxSequence;
    billboard->vramTransfer = sub_020206E0(list->vramTransfer, &billboard->gfxSequence, (void *)billboard->animTexture, billboard->texKey, billboard->plttKey, billboard->frameNum);
}

static void sub_02023CF0(Billboard *billboard, const BillboardResources *resources) {
    billboard->modelSet = sub_02024328(resources, &billboard->model, &billboard->texture);
    NNS_G3dRenderObjInit(&billboard->renderObj, billboard->model);
    billboard->animTexture = sub_02024374(resources);
}

static void sub_02023D24(Billboard *billboard, const BillboardResources *resources) {
    billboard->gfxSequence = resources->gfxSequence;
    billboard->vramTransfer = NULL;
}

Billboard *sub_02023D44(const BillboardTemplate *template) {
    if (template->list == NULL) {
        return NULL;
    }

    BillboardList *list = template->list;
    Billboard *billboard = sub_02024280(list);

    if (billboard == NULL) {
        return NULL;
    }

    billboard->list = list;
    billboard->pos = template->pos;
    billboard->scale = template->scale;
    billboard->animNum = 0;
    billboard->draw = TRUE;
    billboard->state = BILLBOARD_STATE_INITIALIZED;

    sub_02024380(billboard, template->resources);

    return billboard;
}

BOOL sub_02023DA4(Billboard *billboard) {
    GF_ASSERT(billboard);
    GF_ASSERT(billboard->state != BILLBOARD_STATE_INITIALIZED);

    BillboardList *list = billboard->list;

    if (billboard->state == BILLBOARD_STATE_INACTIVE) {
        return FALSE;
    }

    sub_02024308(billboard);

    if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
        sub_02023B70(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }

    sub_02023C04(list, billboard);
    sub_020242AC(list, billboard);

    list->redraw = BILLBOARD_REDRAW_NEEDED;

    return TRUE;
}

void sub_02023E04(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *anims, const BillboardGfxSequence *gfxSequence, NNSGfdTexKey texKey, NNSGfdTexKey tex4x4Key, NNSGfdPlttKey plttKey) {
    resources->modelRes = modelRes;
    resources->texture = texture;
    resources->anims = anims;
    resources->gfxSequence = *gfxSequence;
    resources->texKey = texKey;
    resources->tex4x4Key = tex4x4Key;
    resources->plttKey = plttKey;
}

void sub_02023E2C(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *anims, const BillboardGfxSequence *gfxSequence) {
    resources->modelRes = modelRes;
    resources->texture = texture;
    resources->anims = anims;
    resources->gfxSequence = *gfxSequence;
    resources->texKey = NNS_GFD_ALLOC_ERROR_TEXKEY;
    resources->tex4x4Key = NNS_GFD_ALLOC_ERROR_TEXKEY;
    resources->plttKey = NNS_GFD_ALLOC_ERROR_PLTTKEY;
}

void sub_02023E50(Billboard *billboard, const VecFx32 *pos) {
    GF_ASSERT(billboard);
    billboard->pos = *pos;
}

const VecFx32 *sub_02023E68(const Billboard *billboard) {
    GF_ASSERT(billboard);
    return &billboard->pos;
}

void sub_02023E78(Billboard *billboard, const VecFx32 *scale) {
    GF_ASSERT(billboard);
    billboard->scale = *scale;
}

const VecFx32 *sub_02023E94(const Billboard *billboard) {
    GF_ASSERT(billboard);
    return &billboard->scale;
}

void sub_02023EA4(Billboard *billboard, u8 draw) {
    GF_ASSERT(billboard);
    billboard->draw = draw;
}

u8 sub_02023EB8(const Billboard *billboard) {
    GF_ASSERT(billboard);
    return billboard->draw;
}

void sub_02023EC8(Billboard *billboard, const BillboardResources *resources) {
    GF_ASSERT(billboard);
    sub_02024380(billboard, resources);
}

void sub_02023EE0(Billboard *billboard, int animNum) {
    GF_ASSERT(billboard);
    billboard->animNum = animNum;
}

int sub_02023EF4(const Billboard *billboard) {
    GF_ASSERT(billboard);
    return billboard->animNum;
}

int sub_02023F04(Billboard *billboard, fx32 numFrames) {
    GF_ASSERT(billboard);

    return sub_020243A4(billboard, numFrames);
}

void sub_02023F1C(Billboard *billboard, fx32 frameNum) {
    GF_ASSERT(billboard);
    billboard->frameNum = frameNum;
}

fx32 sub_02023F30(const Billboard *billboard) {
    GF_ASSERT(billboard);
    return billboard->frameNum;
}

void sub_02023F40(Billboard *billboard, fx32 animFrameNum) {
    GF_ASSERT(billboard);

    billboard->frameNum = sub_02024394(billboard, billboard->animNum);
    billboard->frameNum += animFrameNum;
}

fx32 sub_02023F70(const Billboard *billboard) {
    GF_ASSERT(billboard);
    return billboard->frameNum - sub_02024394(billboard, billboard->animNum);
}

NNSG3dResMdl *sub_02023F90(const Billboard *billboard) {
    GF_ASSERT(billboard);
    return billboard->model;
}

NNSGfdTexKey sub_02023FA0(Billboard *billboard) {
    GF_ASSERT(billboard);
    return billboard->texKey;
}

NNSGfdPlttKey sub_02023FB0(Billboard *billboard) {
    GF_ASSERT(billboard);
    return billboard->plttKey;
}

void sub_02023FC0(Billboard *billboard) {
    if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
        sub_02020764(billboard->vramTransfer, billboard->frameNum);
    }
}

NNSG3dResMdl *sub_02023FDC(Billboard *billboard) {
    return billboard->model;
}

void sub_02023FE4(Billboard *billboard, BillboardCallback callback, void *callbackParam) {
    billboard->callbackParam = callbackParam;
    billboard->callback = callback;
}

static void sub_02023FEC(Billboard *billboard) {
    BillboardTexPlttIndex indexes = sub_02026DE0(&billboard->gfxSequence, billboard->frameNum >> FX32_SHIFT);

    sub_0202403C(billboard->model, billboard->animTexture, indexes.textureIdx);
    sub_02024140(billboard->model, billboard->animTexture, indexes.plttIdx);
}

static void sub_0202403C(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 textureIdx) {
    NNSG3dResMat *material = NNS_G3dGetMat(model);
    const NNSG3dResDict *textureDict = (NNSG3dResDict *)((u8 *)material + material->ofsDictTexToMatList);
    const NNSG3dResDictTexData *textureData = NNS_G3dGetTexDataByIdx(texture, textureIdx);
    u32 textureAddress = textureData->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK;

    for (int i = 0; i < textureDict->numEntry; ++i) {
        const NNSG3dResDictTexToMatIdxData *texToMatDict = (NNSG3dResDictTexToMatIdxData *)NNS_G3dGetResDataByIdx(textureDict, i);

        if (texToMatDict->flag & 1) {
            sub_020240C4(material, texToMatDict, textureAddress);
        }
    }
}

static void sub_020240C4(NNSG3dResMat *material, const NNSG3dResDictTexToMatIdxData *texToMatDict, u32 textureAddress) {
    u8 *texMaterials = (u8 *)material + texToMatDict->offset;

    for (int i = 0; i < texToMatDict->numIdx; i++) {
        NNSG3dResMatData *materialData = NNS_G3dGetMatDataByIdx(material, *(texMaterials + i));
        GF_ASSERT((materialData->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK) + textureAddress <= NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK);
        materialData->texImageParam += textureAddress;
    }
}

static void sub_02024140(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 plttIdx) {
    NNSG3dResMat *material = NNS_G3dGetMat(model);
    const NNSG3dResDict *plttDict = (NNSG3dResDict *)((u8 *)material + material->ofsDictPlttToMatList);
    const NNSG3dResDictPlttData *plttData = NNS_G3dGetPlttDataByIdx(texture, plttIdx);
    u32 plttAddress = plttData->offset;

    if (!(plttData->flag & 1)) {
        plttAddress >>= 1;
    }

    for (u32 i = 0; i < plttDict->numEntry; ++i) {
        const NNSG3dResDictPlttToMatIdxData *plttToMatDict = (NNSG3dResDictPlttToMatIdxData *)NNS_G3dGetResDataByIdx(plttDict, i);

        if (plttToMatDict->flag & 1) {
            sub_020241CC(material, plttToMatDict, plttAddress);
        }
    }
}

static void sub_020241CC(NNSG3dResMat *material, const NNSG3dResDictPlttToMatIdxData *plttToMatDict, u32 plttAddress) {
    u8 *plttMaterials = (u8 *)material + plttToMatDict->offset;

    for (u32 i = 0; i < plttToMatDict->numIdx; i++) {
        NNSG3dResMatData *materialData = NNS_G3dGetMatDataByIdx(material, *(plttMaterials + i));
        GF_ASSERT(((materialData->texPlttBase & REG_G3_TEXPLTT_BASE_PLTT_BASE_MASK) + plttAddress) <= REG_G3_TEXPLTT_BASE_PLTT_BASE_MASK);
        materialData->texPlttBase += plttAddress;
    }
}

static void sub_02024248(BillboardList *list) {
    for (int i = 0; i < list->capacity; i++) {
        sub_020236BC(&list->billboards[i]);
        list->freeBillboards[i] = list->billboards + i;
    }

    list->freeBillboardHead = 0;
}

static Billboard *sub_02024280(BillboardList *list) {
    if (list->freeBillboardHead >= list->capacity) {
        return NULL;
    }

    Billboard *billboard = list->freeBillboards[list->freeBillboardHead];
    list->freeBillboardHead++;

    return billboard;
}

static BOOL sub_020242AC(BillboardList *list, Billboard *billboard) {
    if (list->freeBillboardHead <= 0) {
        return FALSE;
    }

    sub_020236BC(billboard);

    list->freeBillboardHead--;
    list->freeBillboards[list->freeBillboardHead] = billboard;

    return TRUE;
}

static void sub_020242E4(Billboard *sentinel, Billboard *newBillboard) {
    newBillboard->prev = sentinel->prev;
    sentinel->prev->next = newBillboard;
    newBillboard->next = sentinel;
    sentinel->prev = newBillboard;
}

static void sub_02024308(Billboard *billboard) {
    billboard->prev->next = billboard->next;
    billboard->next->prev = billboard->prev;
}

static NNSG3dResMdlSet *sub_02024328(const BillboardResources *resources, NNSG3dResMdl **outModel, NNSG3dResTex **outTexture) {
    void *modelRes = sub_0202443C(resources, BILLBOARD_RESOURCE_MODEL_RES);
    NNSG3dResMdlSet *outModelSet = NNS_G3dGetMdlSet(modelRes);

    *outModel = NNS_G3dGetMdlByIdx(outModelSet, 0);

    if (outTexture) {
        *outTexture = NNS_G3dGetTex(modelRes);
    }

    return outModelSet;
}

static NNSG3dResTex *sub_02024374(const BillboardResources *resources) {
    NNSG3dResTex *texture = (NNSG3dResTex *)sub_0202443C(resources, BILLBOARD_RESOURCE_TEXTURE);
    return texture;
}

static void sub_02024380(Billboard *billboard, const BillboardResources *resources) {
    if (resources->texKey == NNS_GFD_ALLOC_ERROR_TEXKEY) {
        sub_020239D0(billboard, resources);
    } else {
        sub_02023A20(billboard, resources);
    }
}

static fx32 sub_02024394(const Billboard *billboard, int animNum) {
    const BillboardAnim *anim = sub_02024454(billboard->anims, animNum);
    return anim->startFrame << FX32_SHIFT;
}

static int sub_020243A4(Billboard *billboard, fx32 numFrames) {
    const BillboardAnim *anim = sub_02024454(billboard->anims, billboard->animNum);
    return sub_020243C4(anim, &billboard->frameNum, numFrames);
}

static int sub_020243C4(const BillboardAnim *anim, fx32 *currentFrame, fx32 numFrames) {
    int status = BILLBOARD_ANIM_STATUS_RUNNING;

    if (anim->startFrame * FX32_ONE > *currentFrame || anim->endFrame * FX32_ONE < *currentFrame) {
        *currentFrame = anim->startFrame * FX32_ONE;
    } else if (anim->endFrame * FX32_ONE < *currentFrame + numFrames) {
        if (anim->animType == BILLBOARD_ANIM_TYPE_LOOP) {
            *currentFrame = anim->startFrame * FX32_ONE;
        } else {
            status = BILLBOARD_ANIM_STATUS_FINISHED;
            *currentFrame = anim->endFrame * FX32_ONE;
        }
    } else {
        *currentFrame += numFrames;
    }

    return status;
}

static void sub_020243FC(Billboard *billboard) {
    sub_02023B4C(billboard->texture, billboard->modelSet, &billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
}

static void sub_0202441C(Billboard *billboard) {
    NNSGfdTexKey tex4x4Key, texKey;
    NNSGfdPlttKey dummyPlttKey;

    NNS_G3dReleaseMdlSet(billboard->modelSet);
    sub_02023B38(billboard->texture, &texKey, &tex4x4Key, &dummyPlttKey);
}

static void *sub_0202443C(const BillboardResources *resources, int value) {
    void *ret;

    switch (value) {
    case BILLBOARD_RESOURCE_MODEL_RES:
        ret = resources->modelRes;
        break;
    case BILLBOARD_RESOURCE_TEXTURE:
        ret = (void *)resources->texture;
        break;
    default:
        ret = NULL;
        break;
    }

    return ret;
}

static const BillboardAnim *sub_02024454(const BillboardAnim *anims, int index) {
    return anims + index;
}
