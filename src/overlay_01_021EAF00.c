#include "global.h"

#include "application/view_photo.h"

#include "poke_overlay.h"

FS_EXTERN_OVERLAY(OVY_19);

typedef BOOL (*UnkFuncOv01_022066DC)(FieldSystem *fieldSystem);

typedef struct {
    UnkFuncOv01_022066DC unk00;
    UnkFuncOv01_022066DC unk04;
    UnkFuncOv01_022066DC unk08;
    UnkFuncOv01_022066DC unk0C;
} UnkStruct_Ov01_022066DC;

static int ov01_021EAF00(FieldSystem *fieldSystem);
BOOL FieldSystem_InitBottomScreen(FieldSystem *fieldSystem);
BOOL FieldSystem_IsBottomScreenRunningDummy(FieldSystem *fieldSystem);
BOOL FieldSystem_EndBottomScreen(FieldSystem *fieldSystem);
BOOL FieldSystem_IsBottomScreenDone(FieldSystem *fieldSystem);
static BOOL ov01_021EAF8C(FieldSystem *fieldSystem);
static BOOL ov01_021EAF90(FieldSystem *fieldSystem);
static BOOL ov01_021EAF94(FieldSystem *fieldSystem);
static BOOL ov01_021EAF98(FieldSystem *fieldSystem);
static BOOL ov01_021EAFB4(FieldSystem *fieldSystem);
static BOOL ov01_021EAFD0(FieldSystem *fieldSystem);

extern BOOL ov01_021F6840(FieldSystem *fieldSystem);
extern BOOL ov01_021F6864(FieldSystem *fieldSystem);
extern BOOL ov01_021F6874(FieldSystem *fieldSystem);
extern BOOL ov01_021F6894(FieldSystem *fieldSystem);
extern BOOL ov01_021F68B8(FieldSystem *fieldSystem);
extern BOOL ov01_021F68C0(FieldSystem *fieldSystem);
extern BOOL sub_0203DB6C(FieldSystem *fieldSystem);
extern BOOL sub_0203DB70(FieldSystem *fieldSystem);
extern BOOL sub_0203DB74(FieldSystem *fieldSystem);

static const UnkStruct_Ov01_022066DC ov01_022066DC[6];

static int ov01_021EAF00(FieldSystem *fieldSystem) {
    int idx = fieldSystem->bottomScreenType;
    GF_ASSERT(idx != 0);
    GF_ASSERT(idx < 7);
    return idx - 1;
}

BOOL FieldSystem_InitBottomScreen(FieldSystem *fieldSystem) {
    return ov01_022066DC[ov01_021EAF00(fieldSystem)].unk00(fieldSystem);
}

BOOL FieldSystem_IsBottomScreenRunningDummy(FieldSystem *fieldSystem) {
    UnkFuncOv01_022066DC func = ov01_022066DC[ov01_021EAF00(fieldSystem)].unk04;
    if (func == NULL) {
        return TRUE;
    }
    return func(fieldSystem);
}

BOOL FieldSystem_EndBottomScreen(FieldSystem *fieldSystem) {
    return ov01_022066DC[ov01_021EAF00(fieldSystem)].unk08(fieldSystem);
}

BOOL FieldSystem_IsBottomScreenDone(FieldSystem *fieldSystem) {
    return ov01_022066DC[ov01_021EAF00(fieldSystem)].unk0C(fieldSystem);
}

static BOOL ov01_021EAF8C(FieldSystem *fieldSystem) {
}

static BOOL ov01_021EAF90(FieldSystem *fieldSystem) {
}

static BOOL ov01_021EAF94(FieldSystem *fieldSystem) {
    return TRUE;
}

static BOOL ov01_021EAF98(FieldSystem *fieldSystem) {
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_19), OVY_LOAD_ASYNC);
    fieldSystem->unk_D8 = FieldSystem_CreateViewPhotoTask(fieldSystem);
}

static BOOL ov01_021EAFB4(FieldSystem *fieldSystem) {
    FieldSystem_DestroyViewPhotoTask(fieldSystem);
    fieldSystem->unk_D8 = NULL;
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_19));
}

static BOOL ov01_021EAFD0(FieldSystem *fieldSystem) {
    return TRUE;
}

static const UnkStruct_Ov01_022066DC ov01_022066DC[6] = {
    { ov01_021F6894, NULL, ov01_021F68B8, ov01_021F68C0 },
    { ov01_021EAF8C, NULL, ov01_021EAF90, ov01_021EAF94 },
    { ov01_021F6894, NULL, ov01_021F68B8, ov01_021F68C0 },
    { ov01_021F6840, NULL, ov01_021F6864, ov01_021F6874 },
    { sub_0203DB6C,  NULL, sub_0203DB70,  sub_0203DB74  },
    { ov01_021EAF98, NULL, ov01_021EAFB4, ov01_021EAFD0 },
};
