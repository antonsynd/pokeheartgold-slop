#include "global.h"

#include "constants/sndseq.h"

#include "field/overlay_01_021FB878.h"

#include "field_system.h"
#include "heap.h"
#include "unk_02005D10.h"

typedef struct {
    void *unk0;
    NNSFndAllocator unk4;
    Field3dModel model;
    Field3DModelAnimation anim[2];
    Field3dObject obj;
} UnkOv01_022051EC;

typedef struct {
    void *unk0;
    UnkOv01_022051EC *unk4;
} UnkOv01_022051EC_Data;

typedef struct {
    int unk0;
    UnkOv01_022051EC *unk4;
} UnkOv01_022051EC_Work;

typedef struct {
    u32 unk0;
    BOOL (*unk4)(void *, UnkOv01_022051EC_Work *);
    void (*unk8)(void *, UnkOv01_022051EC_Work *);
    void (*unkC)(void *, UnkOv01_022051EC_Work *);
    void (*unk10)(void *, UnkOv01_022051EC_Work *);
} UnkOv01_022051EC_Template;

extern UnkOv01_022051EC *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern UnkOv01_022051EC *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_022051EC_Template *a1, VecFx32 *a2, int a3, UnkOv01_022051EC_Data *a4, int a5);

extern UnkOv01_022051EC_Data *sub_02068D74(void *a0);
extern UnkOv01_022051EC_Data *sub_02068D98(void *a0);
extern void sub_02068DB8(void *a0, VecFx32 *a1);

UnkOv01_022051EC *ov01_022051EC(void *a0);
void ov01_02205208(UnkOv01_022051EC *manager);
void *ov01_022052C4(FieldSystem *fieldSystem, VecFx32 *a1);
void *ov01_022052F4(void *a0);

static void ov01_02205218(UnkOv01_022051EC *manager);
static void ov01_022052A4(UnkOv01_022051EC *manager);
static BOOL ov01_02205300(void *param0, UnkOv01_022051EC_Work *work);
static void ov01_02205350(void *param0, UnkOv01_022051EC_Work *work);
static void ov01_02205354(void *param0, UnkOv01_022051EC_Work *work);
static void ov01_02205364(void *param0, UnkOv01_022051EC_Work *work);
static BOOL ov01_02205388(Field3DModelAnimation *anims, u32 count);
static void ov01_022053C4(Field3DModelAnimation *anims, u32 count, fx32 frame);

static const UnkOv01_022051EC_Template ov01_022096CC = {
    sizeof(UnkOv01_022051EC_Work), ov01_02205300, ov01_02205354, ov01_02205350, ov01_02205364
};

UnkOv01_022051EC *ov01_022051EC(void *a0) {
    UnkOv01_022051EC *manager = ov01_021F1430(a0, sizeof(UnkOv01_022051EC), 0, 0);
    manager->unk0 = a0;
    ov01_02205218(manager);
    return manager;
}

void ov01_02205208(UnkOv01_022051EC *manager) {
    ov01_022052A4(manager);
    ov01_021F1448(manager);
}

static void ov01_02205218(UnkOv01_022051EC *manager) {
    HeapExp_FndInitAllocator(&manager->unk4, HEAP_ID_FIELD1, 0x20);
    Field3dModel_LoadFromFilesystem(&manager->model, NARC_a_1_0_3, 0x84, HEAP_ID_FIELD1);
    Field3dModelAnimation_LoadFromFilesystem(&manager->anim[0], &manager->model, NARC_a_1_0_3, 0xa8, HEAP_ID_FIELD1, &manager->unk4);
    Field3dModelAnimation_LoadFromFilesystem(&manager->anim[1], &manager->model, NARC_a_1_0_3, 0xa6, HEAP_ID_FIELD1, &manager->unk4);
    Field3dObject_InitFromModel(&manager->obj, &manager->model);
    Field3dObject_AddAnimation(&manager->obj, &manager->anim[0]);
    Field3dObject_AddAnimation(&manager->obj, &manager->anim[1]);
    ov01_022053C4(&manager->anim[0], 2, 0);
    Field3dObject_SetActiveFlag(&manager->obj, FALSE);
}

static void ov01_022052A4(UnkOv01_022051EC *manager) {
    Field3dModelAnimation_Unload(&manager->anim[1], &manager->unk4);
    Field3dModelAnimation_Unload(&manager->anim[0], &manager->unk4);
    Field3dModel_Unload(&manager->model);
}

void *ov01_022052C4(FieldSystem *fieldSystem, VecFx32 *a1) {
    UnkOv01_022051EC_Data data;
    data.unk0 = fieldSystem;
    data.unk4 = ov01_021F1450(fieldSystem, 0x16);
    return ov01_021F1620(fieldSystem, &ov01_022096CC, a1, 0, &data, 0xff);
}

void *ov01_022052F4(void *a0) {
    return sub_02068D74(a0)->unk0;
}

static BOOL ov01_02205300(void *param0, UnkOv01_022051EC_Work *work) {
    VecFx32 vec;
    UnkOv01_022051EC_Data *data = sub_02068D98(param0);
    UnkOv01_022051EC *manager;
    work->unk4 = data->unk4;
    work->unk0 = 0;
    manager = data->unk4;
    ov01_022053C4(&manager->anim[0], 2, 0);
    Field3dObject_SetActiveFlag(&manager->obj, TRUE);
    sub_02068DB8(param0, &vec);
    Field3dObject_SetPosEx(&manager->obj, vec.x, vec.y, vec.z);
    PlaySE(SEQ_SE_GS_TUREARUKI);
    return TRUE;
}

static void ov01_02205350(void *param0, UnkOv01_022051EC_Work *work) {
}

static void ov01_02205354(void *param0, UnkOv01_022051EC_Work *work) {
    Field3dObject_SetActiveFlag(&work->unk4->obj, FALSE);
}

static void ov01_02205364(void *param0, UnkOv01_022051EC_Work *work) {
    UnkOv01_022051EC *manager = work->unk4;
    if (ov01_02205388(&manager->anim[0], 2) != 0) {
        work->unk0 = 1;
    }
    Field3dObject_Draw(&manager->obj);
}

static BOOL ov01_02205388(Field3DModelAnimation *anims, u32 count) {
    u8 i;
    u8 done = 0;
    for (i = 0; i < count; i++) {
        if (Field3dModelAnimation_FrameAdvanceAndCheck(&anims[i], 1 << 0xc) != 0) {
            done++;
        }
    }
    return done == count;
}

static void ov01_022053C4(Field3DModelAnimation *anims, u32 count, fx32 frame) {
    u8 i;
    for (i = 0; i < count; i++) {
        Field3dModelAnimation_FrameSet(&anims[i], frame);
    }
}
