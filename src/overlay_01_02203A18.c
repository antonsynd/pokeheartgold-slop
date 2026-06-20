#include "global.h"

#include "constants/sndseq.h"

#include "field_system.h"
#include "heap.h"
#include "map_object.h"
#include "sprite.h"
#include "task.h"
#include "unk_02005D10.h"
#include "vram_transfer_manager.h"

typedef struct UnkOv01_02203A18 {
    void *unk0;
    int unk4;
} UnkOv01_02203A18;

typedef struct {
    FieldSystem *unk0;
    UnkOv01_02203A18 *unk4;
    LocalMapObject *unk8;
} UnkOv01_02203A18_Data;

typedef struct {
    int unk0;
    LocalMapObject *unk4;
} UnkOv01_02203A18_Env;

typedef struct {
    u16 *unk0;
    u8 *unk4;
    void *unk8;
    u32 unkC;
    void *unk10;
    void *unk14;
    void *unk18;
    u32 unk1C;
    u32 unk20;
    u16 unk24;
    u16 unk26;
} UnkOv01_02203A18_Anim;

typedef struct {
    int unk0;
    int unk4;
    u32 unk8;
    u32 unkC;
    int unk10;
    u32 unk14;
    fx32 unk18;
    fx32 unk1C;
    fx32 unk20;
    u32 unk24;
    fx32 unk28;
    u32 unk2C;
    UnkOv01_02203A18_Data unk30;
    Sprite *unk3C;
    UnkOv01_02203A18_Anim anim;
} UnkOv01_02203A18_Work;

typedef struct {
    u32 unk0;
    BOOL (*unk4)(void *, UnkOv01_02203A18_Work *);
    void (*unk8)(void *, UnkOv01_02203A18_Work *);
    void (*unkC)(void *, UnkOv01_02203A18_Work *);
    void (*unk10)(void *, UnkOv01_02203A18_Work *);
} UnkOv01_02203A18_Template;

extern UnkOv01_02203A18 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern UnkOv01_02203A18 *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern void *ov01_021F14B4(FieldSystem *a0, int a1, int a2);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_02203A18_Template *a1, VecFx32 *a2, int a3, UnkOv01_02203A18_Data *a4, int a5);
extern void ov01_021F1640(void *a0);
extern void *ov01_021F1740(FieldSystem *fieldSystem, int a1, VecFx32 *a2);
extern void ov01_021F1758(void *a0, int a1, int a2, int a3, int a4, int a5, const void *a6);
extern void ov01_021F18C8(void *a0, int a1);
extern void ov01_021F18D4(void *a0, int a1, int a2);
extern void ov01_021F18FC(void *a0, int a1);
extern void ov01_021F1908(void *a0, int a1, int a2);
extern void ov01_021F1924(void *a0, int a1);
extern void ov01_021F1930(void *a0, int a1, int a2, int a3);
extern void ov01_021F1970(void *a0, int a1);
extern void *ov01_021F1AD4(FieldSystem *a0, int a1);

extern UnkOv01_02203A18_Data *sub_02068D98(void *a0);
extern u32 sub_02068D90(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);

extern BOOL sub_02023DA4(Sprite *sprite);
extern void sub_02023E50(Sprite *sprite, VecFx32 *a1);
extern void sub_02023EA4(Sprite *sprite, int a1);
extern void *sub_02023F90(void *a0);

extern void *sub_02020838(void *model, u8 index);
extern void *sub_02020888(void *model, u8 index);
extern u32 sub_02020910(void *model, u8 index);
extern u32 sub_020209AC(void *model, u8 index);

extern void sub_02026E18(void *a0, UnkOv01_02203A18_Anim *a1);
extern void NNS_G3dMdlSetMdlFogEnableFlagAll(void *model, int flag);

UnkOv01_02203A18 *ov01_02203A18(void *a0);
void ov01_02203A38(UnkOv01_02203A18 *manager);
void ov01_02203AB4(FieldSystem *fieldSystem, LocalMapObject *a1, int a2);

static void *ov01_02203A48(LocalMapObject *mapObject, int a1);
static BOOL ov01_02203AD8(TaskManager *taskManager);
static void ov01_02203B28(UnkOv01_02203A18 *manager);
static void ov01_02203B70(UnkOv01_02203A18 *manager);
static Sprite *ov01_02203B98(FieldSystem *fieldSystem, VecFx32 *a1);
static BOOL ov01_02203BB4(void *param0, UnkOv01_02203A18_Work *work);
static void ov01_02203CA0(void *param0, UnkOv01_02203A18_Work *work);
static void ov01_02203CB8(void *param0, UnkOv01_02203A18_Work *work);
static void ov01_02203DC0(void *param0, UnkOv01_02203A18_Work *work);
static BOOL ov01_02203DF8(UnkOv01_02203A18_Anim *anim);

static const UnkOv01_02203A18_Template ov01_02209518 = {
    sizeof(UnkOv01_02203A18_Work), ov01_02203BB4, ov01_02203CA0, ov01_02203CB8, ov01_02203DC0
};

static const u32 ov01_0220952C[] = { 0, 1, 0, 0, 0, 2 };

static const u32 ov01_02209544[][2] = {
    { 2,   0x96 },
    { 3,   0x97 },
    { 4,   0x98 },
    { 5,   0x99 },
    { 6,   0x9A },
    { 7,   0x9B },
    { 8,   0x9C },
    { 9,   0x9D },
    { 0xA, 0x9E },
    { 0xB, 0x9F },
    { 0xC, 0xA0 },
    { 0xD, 0xA1 },
    { 0xE, 0xA2 },
    { 0xF, 0xA3 },
};

UnkOv01_02203A18 *ov01_02203A18(void *a0) {
    UnkOv01_02203A18 *manager = ov01_021F1430(a0, sizeof(UnkOv01_02203A18), 0, 0);
    manager->unk0 = a0;
    manager->unk4 = 0;
    ov01_02203B28(manager);
    return manager;
}

void ov01_02203A38(UnkOv01_02203A18 *manager) {
    ov01_02203B70(manager);
    ov01_021F1448(manager);
}

static void *ov01_02203A48(LocalMapObject *mapObject, int a1) {
    UnkOv01_02203A18_Data data;
    VecFx32 pos;
    VecFx32 facing;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    UnkOv01_02203A18 *manager;
    int priority;
    data.unk0 = fieldSystem;
    manager = ov01_021F1450(fieldSystem, 0x12);
    data.unk4 = manager;
    data.unk8 = mapObject;
    if (manager->unk4 != 0) {
        return NULL;
    }
    manager->unk4 = 1;
    MapObject_CopyPositionVector(mapObject, &pos);
    MapObject_CopyFacingVector(mapObject, &facing);
    facing.y = 0;
    VEC_Add(&pos, &facing, &pos);
    priority = MapObject_GetPriority(mapObject) + 1;
    return ov01_021F1620(fieldSystem, &ov01_02209518, &pos, a1, &data, priority);
}

void ov01_02203AB4(FieldSystem *fieldSystem, LocalMapObject *a1, int a2) {
    UnkOv01_02203A18_Env *env = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(UnkOv01_02203A18_Env));
    env->unk0 = a2;
    env->unk4 = a1;
    TaskManager_Call(fieldSystem->taskman, ov01_02203AD8, env);
}

static BOOL ov01_02203AD8(TaskManager *taskManager) {
    u32 *state = TaskManager_GetStatePtr(taskManager);
    UnkOv01_02203A18_Env *env = TaskManager_GetEnvironment(taskManager);
    switch (*state) {
    case 0:
        ov01_02203A48(env->unk4, env->unk0);
        (*state)++;
        break;
    case 1:
        if (ov01_021F1450(ov01_021F146C(env->unk4), 0x12)->unk4 == 0) {
            Heap_Free(env);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

static void ov01_02203B28(UnkOv01_02203A18 *manager) {
    ov01_021F18D4(manager->unk0, 0xc, 0x82);
    ov01_021F1908(manager->unk0, 0xc, 0x8c);
    ov01_021F1930(manager->unk0, 0xd, 0x1c, 1);
    ov01_021F1758(manager->unk0, 0xe, 0xc, 0xc, 0xd, 0, ov01_0220952C);
}

static void ov01_02203B70(UnkOv01_02203A18 *manager) {
    ov01_021F18FC(manager->unk0, 0xc);
    ov01_021F1924(manager->unk0, 0xc);
    ov01_021F1970(manager->unk0, 0xd);
    ov01_021F18C8(manager->unk0, 0xe);
}

static Sprite *ov01_02203B98(FieldSystem *fieldSystem, VecFx32 *a1) {
    Sprite *effect = ov01_021F1740(fieldSystem, 0xe, a1);
    NNS_G3dMdlSetMdlFogEnableFlagAll(sub_02023F90(effect), 0);
    return effect;
}

static BOOL ov01_02203BB4(void *param0, UnkOv01_02203A18_Work *work) {
    VecFx32 vec;
    void *node;
    u32 idx;
    u32 vramAddr;
    work->unk30 = *sub_02068D98(param0);
    work->unk8 = MapObject_GetID(work->unk30.unk8);
    work->unkC = MapObject_GetMapID(work->unk30.unk8);
    work->unk28 = 6 << 0xc;
    idx = sub_02068D90(param0);
    work->anim.unk18 = ov01_021F14B4(work->unk30.unk0, ov01_02209544[idx][0], 1);
    work->anim.unk14 = ov01_021F14B4(work->unk30.unk0, ov01_02209544[idx][1], 1);
    sub_02026E18(work->anim.unk14, &work->anim);
    work->anim.unk10 = NNS_G3dGetTex(work->anim.unk18);
    work->anim.unk24 = 0;
    work->anim.unk26 = 0;
    node = ov01_021F1AD4(work->unk30.unk0, 0xd);
    work->anim.unk20 = sub_020209AC(node, 0);
    work->anim.unk1C = sub_02020910(node, 0);
    GF_CreateNewVramTransferTask(NNS_GFD_DST_3D_TEX_VRAM, work->anim.unk1C, sub_02020838(work->anim.unk10, 0), work->anim.unk20);
    vramAddr = (*(u32 *)((u8 *)node + 0x2c) << 0x10) >> 0xd;
    GF_CreateNewVramTransferTask(NNS_GFD_DST_3D_TEX_PLTT, vramAddr, sub_02020888(work->anim.unk10, 0), 0x20);
    sub_02068DB8(param0, &vec);
    work->unk3C = ov01_02203B98(work->unk30.unk0, &vec);
    sub_02023EA4(work->unk3C, 0);
    PlaySE(SEQ_SE_DP_DECIDE);
    return TRUE;
}

static void ov01_02203CA0(void *param0, UnkOv01_02203A18_Work *work) {
    sub_02023DA4(work->unk3C);
    Heap_Free(work->anim.unk14);
    Heap_Free(work->anim.unk18);
}

static void ov01_02203CB8(void *param0, UnkOv01_02203A18_Work *work) {
    VecFx32 result;
    VecFx32 pos;
    VecFx32 facing;
    VecFx32 c;
    VecFx32 d;
    LocalMapObject *mapObject = work->unk30.unk8;
    GF_ASSERT(sub_0205F0A8(mapObject, work->unk8, work->unkC));
    MapObject_CopyPositionVector(mapObject, &pos);
    MapObject_CopyFacingVector(mapObject, &facing);
    sub_0205F990(mapObject, &c);
    sub_0205F9B0(mapObject, &d);
    result.x = pos.x + facing.x + c.x + d.x;
    result.y = pos.y + c.y + d.y;
    result.z = pos.z + facing.z + c.z + d.z;
    result.y += 2 << 0x10;
    result.z += 2 << 0xb;
    switch (work->unk0) {
    case 0:
        sub_02023EA4(work->unk3C, 1);
        work->unk1C += work->unk28;
        if (work->unk1C > 0) {
            work->unk28 -= 2 << 0xc;
        } else {
            work->unk1C = 0;
            work->unk28 = 0;
            work->unk0++;
        }
        break;
    case 1:
        if (ov01_02203DF8(&work->anim) != 0) {
            work->unk0++;
        }
        break;
    case 2:
        work->unk4++;
        if (work->unk4 >= 2) {
            work->unk0++;
            work->unk4 = 0;
            work->unk14 = 1;
        }
        break;
    case 3:
        work->unk30.unk4->unk4 = 0;
        ov01_021F1640(param0);
        return;
    }
    sub_02068DA8(param0, &result);
}

static void ov01_02203DC0(void *param0, UnkOv01_02203A18_Work *work) {
    VecFx32 vec;
    if (work->unk10 != 1) {
        sub_02068DB8(param0, &vec);
        vec.x += work->unk18;
        vec.y += work->unk1C;
        vec.z += work->unk20;
        sub_02023E50(work->unk3C, &vec);
    }
}

static BOOL ov01_02203DF8(UnkOv01_02203A18_Anim *anim) {
    anim->unk24++;
    if (anim->unk24 >= anim->unk0[anim->unk26]) {
        anim->unk26++;
        anim->unk24 = 0;
        if (anim->unk26 >= anim->unkC) {
            return TRUE;
        }
        GF_CreateNewVramTransferTask(NNS_GFD_DST_3D_TEX_VRAM, anim->unk1C, sub_02020838(anim->unk10, anim->unk4[anim->unk26]), anim->unk20);
    }
    return FALSE;
}
