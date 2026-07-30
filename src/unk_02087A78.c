#include "global.h"

#include "constants/heap.h"

#include "overlay_manager.h"
#include "poke_overlay.h"

// External symbols kept out of shared headers to avoid IPA cascade; declared
// locally with the types they were matched against (opaque structs as void *).
void GF_SndHandleSetPlayerVolume(u32 a0, u32 a1);
void Sound_SetScene(int a0);
void Sound_SetSceneAndPlayBGM(u8 scene, u16 seqNo, int unused);
void Sound_SetFieldBGM(u16 seqNo);

void *Save_GameStats_Get(void *saveData);
void *Save_VarsFlags_Get(void *saveData);
int Save_VarsFlags_FlypointFlagAction(void *state, u32 action, u32 flypoint_flag_no);
void *BagCursor_New(enum HeapID heapID);

void *BattleSetup_New(enum HeapID heapID, u32 battleFlags);
void BattleSetup_Delete(void *setup);

u16 FieldBGM_GetEffective(void *fieldSystem, u32 mapId);
u16 FieldBGM_GetForMapHeader(void *fieldSystem, int mapId);
BOOL sub_02055198(void *fieldSystem, u16 seqNo);

void LoadOVY38(void);
void UnloadOVY38(void);

void *sub_02087FF8(void *a0, int a1);
void sub_02005B68(int a0);
BOOL sub_0202FC48(void);
void sub_0202FC24(void);
void *sub_0202FC5C(void);
void sub_0202FC90(void *save, enum HeapID heapId, int *a2, void *setup, u32 a4);
void sub_020304F0(void *setup, void *save);
void ov40_02244920(void *a0, void *setup, enum HeapID heapId);

extern const OverlayManagerTemplate _021028B4;
extern const OverlayManagerTemplate _021028C4;
extern const OverlayManagerTemplate gOverlayTemplate_Battle;

FS_EXTERN_OVERLAY(OVY_39);
FS_EXTERN_OVERLAY(OVY_40);

void *sub_02087A78(OverlayManager *man);
void sub_02087A84(u32 *a0, u32 a1, u32 a2);
const OverlayManagerTemplate *sub_02087E10(int idx);
void sub_02087E1C(void *big);

typedef struct BattleLaunchWork {
    int unk_00;
    u32 unk_04;
    OverlayManager *unk_08;
    void *unk_0c;
    void *unk_10;
    void *unk_14;
    int unk_18;
    u8 filler_1c[0xC];
    void *unk_28;
} BattleLaunchWork; // size 0x2c

// Accessors into the 0x4170-byte work block (work->unk_14).
#define BIG_KIND(b)   (*(u32 *)((u8 *)(b) + 0x000))
#define BIG_6D8(b)    (*(u32 *)((u8 *)(b) + 0x6D8))
#define BIG_SLOT(b)   (*(void **)((u8 *)(b) + (BIG_6D8(b) << 2) + 0x81C))
#define BIG_SAVE(b)   (*(void **)((u8 *)(b) + 0x830))
#define BIG_STATEP(b) (*(int **)((u8 *)(b) + 0x868))
#define BIG_86C(b)    (*(u32 *)((u8 *)(b) + 0x86C))
#define BIG_874(b)    (*(u32 *)((u8 *)(b) + 0x874))
#define BIG_878(b)    (*(u8 **)((u8 *)(b) + 0x878))

// Accessors into the field-system args block (work->unk_28).
#define FS_SAVE(fs)      (*(void **)((u8 *)(fs) + 0x0C))
#define FS_MAPEVENTS(fs) (*(void **)((u8 *)(fs) + 0x14))
#define FS_LOCATION(fs)  (*(u32 **)((u8 *)(fs) + 0x20))

// Accessors into the battle setup block (work->unk_10).
#define BS_BAGCURSOR(s) (*(void **)((u8 *)(s) + 0x10C))
#define BS_GAMESTATS(s) (*(void **)((u8 *)(s) + 0x144))
#define BS_5D(s)        (*((u8 *)(s) + 0x5D))
#define BS_1C4(s)       (*(u32 *)((u8 *)(s) + 0x1C4))

static void sub_02087A8C(OverlayManager *man, int idx);
static BOOL sub_02087B10(OverlayManager *man, int *state);
static BOOL sub_02087B1C(OverlayManager *man, int *state);
static BOOL sub_02087B28(OverlayManager *man, int *state);
static BOOL sub_02087B34(OverlayManager *man, int *state);
static BOOL sub_02087B40(OverlayManager *man, int *state);
static BOOL sub_02087B4C(OverlayManager *man, int *state);
static BOOL sub_02087B58(OverlayManager *man, int *state);
static BOOL sub_02087B64(OverlayManager *man, int *state);
static BOOL sub_02087BAC(OverlayManager *man, int *state);
static BOOL sub_02087BE8(BattleLaunchWork *work, enum HeapID heapId);
static BOOL sub_02087C38(BattleLaunchWork *work, enum HeapID heapId);
static BOOL sub_02087E34(u32 a0);

// MWCC -ipa file emits the first file-scope const struct at offset 0 and the
// remaining ones in REVERSE definition order after it (anonymous local-array
// templates stay last). Define _02102830 first, then the rest in reverse, so
// they emit in address order _02102830.._02102890 ahead of sub_02087E34's
// local search-table template.
const OverlayManagerTemplate _02102830 = { sub_02087B10, sub_02087B64, sub_02087BAC, FS_OVERLAY_ID_NONE };
static const OverlayManagerTemplate _02102890 = { sub_02087B1C, sub_02087B64, sub_02087BAC, FS_OVERLAY_ID_NONE };
static const OverlayManagerTemplate _02102880 = { sub_02087B28, sub_02087B64, sub_02087BAC, FS_OVERLAY_ID_NONE };
static const OverlayManagerTemplate _02102870 = { sub_02087B34, sub_02087B64, sub_02087BAC, FS_OVERLAY_ID_NONE };
static const OverlayManagerTemplate _02102860 = { sub_02087B40, sub_02087B64, sub_02087BAC, FS_OVERLAY_ID_NONE };
static const OverlayManagerTemplate _02102850 = { sub_02087B4C, sub_02087B64, sub_02087BAC, FS_OVERLAY_ID_NONE };
static const OverlayManagerTemplate _02102840 = { sub_02087B58, sub_02087B64, sub_02087BAC, FS_OVERLAY_ID_NONE };

static const OverlayManagerTemplate *_02110594[] = {
    &_02102830,
    &_02102890,
    &_02102880,
    &_02102870,
    &_02102860,
    &_02102850,
    &_02102840,
};

void *sub_02087A78(OverlayManager *man) {
    return FS_MAPEVENTS(OverlayManager_GetArgs(man));
}

void sub_02087A84(u32 *a0, u32 a1, u32 a2) {
    a0[0] = a1;
    a0[1] = a2;
}

static void sub_02087A8C(OverlayManager *man, int idx) {
    BattleLaunchWork *work;
    void *args;
    void *big;

    Heap_Create(HEAP_ID_3, HEAP_ID_126, 0x10000);
    work = OverlayManager_CreateAndGetData(man, sizeof(BattleLaunchWork), HEAP_ID_126);
    MI_CpuFill8(work, 0, sizeof(BattleLaunchWork));
    args = OverlayManager_GetArgs(man);
    work->unk_28 = args;
    work->unk_0c = FS_SAVE(args);
    big = Heap_Alloc(HEAP_ID_126, 0x4170);
    work->unk_14 = big;
    MI_CpuFill8(big, 0, 0x4170);
    BIG_STATEP(work->unk_14) = &work->unk_18;
    BIG_SAVE(work->unk_14) = work->unk_0c;
    BIG_KIND(work->unk_14) = idx;
    big = work->unk_14;
    BIG_SLOT(big) = sub_02087FF8(big, BIG_KIND(big));
}

static BOOL sub_02087B10(OverlayManager *man, int *state) {
    sub_02087A8C(man, 0);
    return TRUE;
}

static BOOL sub_02087B1C(OverlayManager *man, int *state) {
    sub_02087A8C(man, 1);
    return TRUE;
}

static BOOL sub_02087B28(OverlayManager *man, int *state) {
    sub_02087A8C(man, 2);
    return TRUE;
}

static BOOL sub_02087B34(OverlayManager *man, int *state) {
    sub_02087A8C(man, 3);
    return TRUE;
}

static BOOL sub_02087B40(OverlayManager *man, int *state) {
    sub_02087A8C(man, 4);
    return TRUE;
}

static BOOL sub_02087B4C(OverlayManager *man, int *state) {
    sub_02087A8C(man, 5);
    return TRUE;
}

static BOOL sub_02087B58(OverlayManager *man, int *state) {
    sub_02087A8C(man, 6);
    return TRUE;
}

static BOOL sub_02087B64(OverlayManager *man, int *state) {
    BattleLaunchWork *work = OverlayManager_GetData(man);
    switch (*state) {
    case 0:
        if (sub_02087BE8(work, HEAP_ID_126)) {
            if (work->unk_18 == 1) {
                *state = 1;
                work->unk_00 = 0;
            } else {
                return TRUE;
            }
        }
        break;
    case 1:
        if (sub_02087C38(work, HEAP_ID_126)) {
            *state = 0;
            work->unk_00 = 0;
        }
        break;
    }
    return FALSE;
}

static BOOL sub_02087BAC(OverlayManager *man, int *state) {
    BattleLaunchWork *work = OverlayManager_GetData(man);
    if (sub_0202FC48() == 1) {
        sub_0202FC24();
    }
    Heap_Free(work->unk_14);
    OverlayManager_FreeData(man);
    GF_SndHandleSetPlayerVolume(1, 0x7f);
    GF_SndHandleSetPlayerVolume(7, 0x7f);
    Heap_Destroy(HEAP_ID_126);
    return TRUE;
}

static BOOL sub_02087BE8(BattleLaunchWork *work, enum HeapID heapId) {
    if (work->unk_00 == 0) {
        if (BIG_KIND(work->unk_14) == 0) {
            work->unk_08 = OverlayManager_New(&_021028B4, work, heapId);
        } else {
            work->unk_08 = OverlayManager_New(&_021028C4, work, heapId);
        }
        work->unk_00++;
    } else {
        if (OverlayManager_Run(work->unk_08)) {
            OverlayManager_Delete(work->unk_08);
            return TRUE;
        }
    }
    return FALSE;
}

static BOOL sub_02087C38(BattleLaunchWork *work, enum HeapID heapId) {
    switch (work->unk_00) {
    case 0:
        if (BIG_KIND(work->unk_14) != 0) {
            UnloadOverlayByID(FS_OVERLAY_ID(OVY_39));
            UnloadOVY38();
        }
        work->unk_00++;
        break;
    case 1: {
        int flag;
        work->unk_10 = BattleSetup_New(heapId, 0);
        if (sub_0202FC48() == 0) {
            sub_0202FC90(work->unk_0c, heapId, &flag, work->unk_10, BIG_86C(work->unk_14));
        } else {
            sub_020304F0(work->unk_10, work->unk_0c);
            flag = 1;
        }
        BS_BAGCURSOR(work->unk_10) = BagCursor_New(heapId);
        BS_GAMESTATS(work->unk_10) = Save_GameStats_Get(work->unk_0c);
        if (HandleLoadOverlay(FS_OVERLAY_ID(OVY_40), OVY_LOAD_ASYNC) == 1) {
            ov40_02244920(sub_0202FC5C(), work->unk_10, heapId);
            UnloadOverlayByID(FS_OVERLAY_ID(OVY_40));
        }
        BIG_874(work->unk_14) = 1;
        if (flag != 1) {
            Heap_Free(BS_BAGCURSOR(work->unk_10));
            BattleSetup_Delete(work->unk_10);
            work->unk_00 = 0;
            return TRUE;
        }
        work->unk_00++;
        break;
    }
    case 2:
        GF_SndHandleSetPlayerVolume(1, 0x7f);
        GF_SndHandleSetPlayerVolume(7, 0x7f);
        sub_02005B68(1);
        if (sub_02087E34(BS_5D(work->unk_10)) == 1) {
            Sound_SetSceneAndPlayBGM(5, 0x47B, 1);
        } else {
            Sound_SetSceneAndPlayBGM(5, 0x45D, 1);
        }
        work->unk_08 = OverlayManager_New(&gOverlayTemplate_Battle, work->unk_10, heapId);
        work->unk_00++;
        break;
    default:
        if (OverlayManager_Run(work->unk_08)) {
            u16 effective;
            BIG_874(work->unk_14) = BS_1C4(work->unk_10);
            if (BIG_KIND(work->unk_14) != 0 && BIG_874(work->unk_14) == 0) {
                *BIG_878(work->unk_14) = 1;
            }
            Heap_Free(BS_BAGCURSOR(work->unk_10));
            BattleSetup_Delete(work->unk_10);
            OverlayManager_Delete(work->unk_08);
            sub_02005B68(0);
            Sound_SetScene(0);
            effective = FieldBGM_GetEffective(work->unk_28, *FS_LOCATION(work->unk_28));
            Sound_SetFieldBGM(FieldBGM_GetForMapHeader(work->unk_28, *FS_LOCATION(work->unk_28)));
            sub_02055198(NULL, effective);
            work->unk_00 = 0;
            if (BIG_KIND(work->unk_14) != 0) {
                LoadOVY38();
                HandleLoadOverlay(FS_OVERLAY_ID(OVY_39), OVY_LOAD_ASYNC);
            }
            return TRUE;
        }
        break;
    }
    return FALSE;
}

const OverlayManagerTemplate *sub_02087E10(int idx) {
    return _02110594[idx];
}

void sub_02087E1C(void *big) {
    Save_VarsFlags_FlypointFlagAction(Save_VarsFlags_Get(BIG_SAVE(big)), 2, 0x1b);
}

static BOOL sub_02087E34(u32 a0) {
    u32 arr[] = { 0x61, 0x63, 0x64, 0x65, 0x66 };
    u32 i;
    for (i = 0; i < 5; i++) {
        if (a0 == arr[i]) {
            return TRUE;
        }
    }
    return FALSE;
}
