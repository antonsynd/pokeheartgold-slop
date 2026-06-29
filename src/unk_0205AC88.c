// WIP / DEFERRED (18/22 functions byte-match as of this session). Compiles
// cleanly; main.lsf is intentionally still on asm/unk_0205AC88.o so the ROM
// matches. To resume: flip main.lsf to src/unk_0205AC88.o and finish the rest.
//
// Multiplayer "linked-walking" follower-NPC controller. Struct layout fully
// derived (UnkStruct_0205AC88 0x4E8, Follower 0x18 at +0xC[51], MailManager
// 0x350). Matching now includes AD60, B13C, B35C (fixed this session:
// AD60 hoists work->unk00 to a local before the FieldSystem call; B13C passes
// ov01_021FD8E8(obj, 1) for relation==1 reusing the r1=1 from f->state=1;
// B35C inits the counter before the elem pointer via `for (i=0, e=...)`).
//
// Still mismatching — all 4 share ONE root cause (do NOT treat as independent):
//   the retail asm SPILLS `work` (and, in the record path, `record+0x50`) to the
//   stack and reloads it inside the loop, so its frame is LARGER than ours
//   (e.g. AEA8 206B asm vs 192B mine; AD9C 256 vs 244). MWCC-on-our-C keeps those
//   live values in callee-saved registers instead — fewer spills, smaller code.
//   This is a liveness/register-pressure divergence, not a logic bug: tried both
//   the walking-pointer (`Follower *f = &followers[0]; f++`) and the indexed
//   (`work->followers[i]`) forms for AEA8 — neither reproduces the spill.
//   The spill is most likely driven by the `record` profile being a NESTED
//   sub-struct: the asm computes `record+0x50` (kept live in a reg) THEN
//   `record+0x60` (= +0x50 + 0x10, the PlayerProfile), i.e. `&record->a.b`,
//   which our flat `(PlayerProfile*)(record+0x60)` cast does not model. Get the
//   real container struct for `record` (the sub_0205A1F4 return type) and the
//   spill pressure should fall out. Affected: sub_0205AD9C, AEA8, AF78, B27C.
//   AF78 also has an inline 5-case jump table (objdiff SIZE false-positive).

#include "unk_0205AC88.h"

#include "global.h"

#include "heap.h"
#include "mail_message.h"
#include "map_object.h"
#include "player_avatar.h"
#include "player_data.h"
#include "pm_string.h"
#include "save.h"
#include "save_palpad.h"
#include "sys_task_api.h"
#include "task.h"
#include "unk_02005D10.h"
#include "unk_02062108.h"
#include "unk_0206793C.h"
#include "unk_020689C8.h"

extern FieldSystem *sub_0205A1F0(struct UnkStruct_02059E1C *a0);
extern void *sub_0205A1F4(struct UnkStruct_02059E1C *a0, int idx);
extern BOOL sub_02037F94(void);
extern BOOL sub_02037FCC(void);
extern UnkStruct_0206793C *ov01_021FD8E8(LocalMapObject *obj, int a1);
extern UnkStruct_0206793C *ov01_02200730(LocalMapObject *obj);
extern const u16 _020FC824[];

void sub_0205AD24(struct UnkStruct_0205AC88 *a0);

typedef struct Follower {
    /* 0x00 */ u8 cmd;
    /* 0x01 */ u8 state;
    /* 0x02 */ u8 relation;
    /* 0x03 */ u8 unk03;
    /* 0x04 */ u8 fxActive;
    /* 0x05 */ u8 pad05;
    /* 0x06 */ u16 fxTimer;
    /* 0x08 */ u8 avatar;
    /* 0x09 */ u8 unk09;
    /* 0x0a */ u8 pad0a[2];
    /* 0x0c */ u32 id;
    /* 0x10 */ UnkStruct_0206793C *fx0;
    /* 0x14 */ UnkStruct_0206793C *fx1;
} Follower; // 0x18

typedef struct MailElem {
    /* 0x00 */ String *str0;
    /* 0x04 */ String *str1;
    /* 0x08 */ String *str2;
    /* 0x0c */ u32 unkC;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ MailMessage msg;
} MailElem; // 0x1c

typedef struct MailManager {
    /* 0x000 */ MailElem elems[30];
    /* 0x348 */ u32 unk348;
    /* 0x34c */ u32 unk34C;
} MailManager; // 0x350

typedef struct UnkStruct_0205AC88 {
    /* 0x000 */ struct UnkStruct_02059E1C *unk00;
    /* 0x004 */ SysTask *task;
    /* 0x008 */ PlayerAvatar *playerAvatar;
    /* 0x00c */ Follower followers[51];
    /* 0x4d4 */ FieldSystem *fieldSystem;
    /* 0x4d8 */ SavePalPad *palPad;
    /* 0x4dc */ MailManager *mailMgr;
    /* 0x4e0 */ int unk4E0;
    /* 0x4e4 */ u8 filler_4E4[4];
} UnkStruct_0205AC88; // 0x4e8

static void sub_0205AD60(SysTask *task, void *work);
static BOOL sub_0205AD9C(UnkStruct_0205AC88 *work, int idx, void *record, SavePalPad *palPad);
static void sub_0205AEA0(Follower *base, int idx, u8 val);
static void sub_0205AEA8(UnkStruct_0205AC88 *work, struct UnkStruct_02059E1C *unk00, MapObjectManager *unused, SavePalPad *palPad);
static void sub_0205AF78(UnkStruct_0205AC88 *work, MapObjectManager *manager);
static void sub_0205B0DC(Follower *f, BOOL a1);
static void sub_0205B118(Follower *f);
static void sub_0205B13C(Follower *f, LocalMapObject *obj, u32 playerX, u32 playerZ);
static void sub_0205B1E4(Follower *f, LocalMapObject *obj);
static void sub_0205B218(Follower *f, LocalMapObject *obj);
static void sub_0205B240(MapObjectManager *manager, int start, int end);
static void sub_0205B338(MailElem *e);
static void sub_0205B35C(MailManager *m);
static void sub_0205B380(MailElem *e);
static void sub_0205B3A0(MailManager *m);
static MailManager *sub_0205B3B8(enum HeapID heapId);
static void sub_0205B3CC(MailManager *m);

struct UnkStruct_0205AC88 *sub_0205AC88(struct UnkStruct_02059E1C *a0) {
    UnkStruct_0205AC88 *work = Heap_Alloc(HEAP_ID_31, 0x4e8);
    MIi_CpuClearFast(0, (u32 *)work, 0x4e8);
    work->unk00 = a0;
    work->unk4E0 = 1;
    work->task = SysTask_CreateOnMainQueue(sub_0205AD60, work, 0xb);
    work->fieldSystem = sub_0205A1F0(a0);
    work->palPad = SaveArray_Get(work->fieldSystem->saveData, 8);
    work->playerAvatar = work->fieldSystem->playerAvatar;
    Heap_CreateAtEnd(HEAP_ID_FIELD2, (enum HeapID)0x57, 0x2710);
    work->mailMgr = sub_0205B3B8((enum HeapID)0x57);
    sub_0205AD24(work);
    return work;
}

void sub_0205AD0C(struct UnkStruct_0205AC88 *a0) {
    UnkStruct_0205AC88 *work = a0;
    int i;
    for (i = 0; i < 0x33; i++) {
        if (work->followers[i].state != 0) {
            work->followers[i].cmd = 3;
        }
    }
}

void sub_0205AD24(struct UnkStruct_0205AC88 *a0) {
    UnkStruct_0205AC88 *work = a0;
    int i;
    for (i = 0; i < 0x33; i++) {
        work->followers[i].cmd = 0;
        work->followers[i].state = 0;
        work->followers[i].relation = 0;
        work->followers[i].unk03 = 0;
    }
}

void sub_0205AD3C(struct UnkStruct_0205AC88 *a0) {
    UnkStruct_0205AC88 *work = a0;
    SysTask_Destroy(work->task);
    sub_0205B3CC(work->mailMgr);
    Heap_Destroy((enum HeapID)0x57);
    Heap_Free(work);
}

static void sub_0205AD60(SysTask *task, void *work_) {
    UnkStruct_0205AC88 *work = work_;
    struct UnkStruct_02059E1C *unk00 = work->unk00;
#pragma unused(task)
    if (!FieldSystem_TaskIsRunning(work->fieldSystem)) {
        work->playerAvatar = work->fieldSystem->playerAvatar;
        sub_0205AEA8(work, unk00, work->fieldSystem->mapObjectManager, work->palPad);
        sub_0205AF78(work, work->fieldSystem->mapObjectManager);
    }
}

static BOOL sub_0205AD9C(UnkStruct_0205AC88 *work, int idx, void *record, SavePalPad *palPad) {
    int j;
    BOOL ret = FALSE;
    int v;
    if (record == NULL) {
        v = _020FC824[idx];
        for (j = 0; j < 4; j++) {
            sub_0205AEA0(&work->followers[0], v, 3);
            v++;
        }
        return FALSE;
    }
    if (*(u32 *)((u8 *)record + 0x50) != work->followers[idx].id) {
        v = _020FC824[idx];
        for (j = 0; j < 4; j++) {
            sub_0205AEA0(&work->followers[0], v, 3);
            v++;
        }
        return FALSE;
    }
    v = _020FC824[idx];
    for (j = 0; j < 4; j++) {
        if (work->followers[v].state == 0) {
            if (((u8 *)record + 0x98)[j] != 0) {
                work->followers[v].cmd = 2;
                work->followers[v].avatar = ((u8 *)record + 0x98)[j] & 0x7f;
                work->followers[v].relation = PalPad_PlayerIdIsFriendOrMutual(palPad, ((u32 *)((u8 *)record + 0x80))[j]);
                ret = TRUE;
            }
        } else if (work->followers[v].state == 2) {
            if (((u8 *)record + 0x98)[j] == 0) {
                sub_0205AEA0(&work->followers[0], v, 3);
            } else {
                ret = TRUE;
            }
        } else if (work->followers[v].state == 4) {
            work->followers[v].cmd = 0;
        }
        v++;
    }
    return ret;
}

static void sub_0205AEA0(Follower *base, int idx, u8 val) {
    base[idx].cmd = val;
}

static void sub_0205AEA8(UnkStruct_0205AC88 *work, struct UnkStruct_02059E1C *unk00, MapObjectManager *unused, SavePalPad *palPad) {
    int i;
    Follower *base = &work->followers[0];
#pragma unused(unused)
    for (i = 0; i < 0xa; i++) {
        void *record = sub_0205A1F4(unk00, i);
        PlayerProfile *profile = record != NULL ? (PlayerProfile *)((u8 *)record + 0x60) : NULL;
        if (work->followers[i].state == 0) {
            if (record != NULL) {
                work->followers[i].avatar = PlayerProfile_GetAvatar(profile);
                work->followers[i].relation = PalPad_PlayerIdIsFriendOrMutual(palPad, PlayerProfile_GetTrainerID(profile));
                work->followers[i].id = *(u32 *)profile;
                if (sub_0205AD9C(work, i, record, palPad)) {
                    work->followers[i].cmd = 2;
                } else {
                    work->followers[i].cmd = 1;
                }
            }
        } else if (work->followers[i].state == 2) {
            if (record == NULL) {
                sub_0205AEA0(base, i, 3);
            } else if (*(u32 *)profile != work->followers[i].id) {
                sub_0205AEA0(base, i, 3);
            }
            if (sub_0205AD9C(work, i, record, palPad)) {
                if (work->followers[i].unk09 == 1) {
                    work->followers[i].cmd = 3;
                }
            }
        } else if (work->followers[i].state == 4) {
            work->followers[i].cmd = 0;
        }
    }
}

static void sub_0205AF78(UnkStruct_0205AC88 *work, MapObjectManager *manager) {
    u32 playerX;
    u32 playerZ;
    int i;
    Follower *f;

    GF_ASSERT(work->playerAvatar != NULL);
    playerX = PlayerAvatar_GetXCoord(work->playerAvatar);
    playerZ = PlayerAvatar_GetZCoord(work->playerAvatar);
    f = &work->followers[0];
    for (i = 0; i < 0x32; i++) {
        LocalMapObject *obj = MapObjectManager_GetFirstActiveObjectByID(manager, i + 1);
        GF_ASSERT(obj != NULL);
        switch (f->state) {
        case 0:
            if (MapObject_AreBitsSetForMovementScriptInit(obj) == 1) {
                if ((u8)(f->cmd - 1) <= 1) {
                    sub_0205B13C(f, obj, playerX, playerZ);
                }
            }
            break;
        case 1:
            if (MapObject_AreBitsSetForMovementScriptInit(obj) == 1) {
                if (f->cmd == 3) {
                    f->state = 0;
                    f->cmd = 0;
                    sub_0205B0DC(f, 1);
                } else {
                    MapObject_ClearHeldMovementIfActive(obj);
                    MapObject_SetFlag19(obj, 0);
                    if (f->cmd == 1 && f->unk09 == 0) {
                        sub_0205FC94(obj, 3);
                        MapObject_SetXRange(obj, 1);
                        MapObject_SetYRange(obj, 1);
                        f->unk09 = 1;
                    }
                    f->state = 2;
                    f->cmd = 0;
                }
            }
            break;
        case 2:
            if (MapObject_AreBitsSetForMovementScriptInit(obj) == 1) {
                sub_0205B218(f, obj);
                if (f->cmd == 3) {
                    sub_0205B1E4(f, obj);
                }
                sub_0205B118(f);
            }
            break;
        case 3:
            if (MapObject_AreBitsSetForMovementScriptInit(obj) == 1) {
                MapObject_ClearHeldMovementIfActive(obj);
                f->state = 4;
                f->cmd = 0;
                f->unk09 = 0;
                MapObject_SetVisible(obj, 1);
                MapObject_ClearFlag18(obj, 0);
            }
            break;
        case 4:
            f->state = 0;
            break;
        }
        f++;
    }
    sub_0205B218(&work->followers[50], PlayerAvatar_GetMapObject(work->playerAvatar));
    sub_0205B118(&work->followers[50]);
}

static void sub_0205B0DC(Follower *f, BOOL a1) {
    if (f->fx0 != NULL) {
        if (sub_02068CCC(f->fx0)) {
            sub_02068B48((int)f->fx0);
        }
        f->fx0 = NULL;
    }
    if (a1 && f->fx1 != NULL) {
        if (sub_02068CCC(f->fx1)) {
            sub_02068B48((int)f->fx1);
        }
        f->fx1 = NULL;
    }
}

static void sub_0205B118(Follower *f) {
    if (f->fxActive != 0) {
        f->fxTimer--;
        if (f->fxTimer == 0) {
            sub_0205B0DC(f, 0);
            f->fxActive = 0;
        }
    }
}

static void sub_0205B13C(Follower *f, LocalMapObject *obj, u32 playerX, u32 playerZ) {
    u32 x = MapObject_GetInitialX(obj);
    u32 y = MapObject_GetInitialY(obj);
    u32 z = MapObject_GetInitialZ(obj);
    if (x == playerX && z == playerZ) {
        return;
    }
    PlaySE(0x64e);
    sub_0205E3AC(obj, f->avatar);
    sub_0205B0DC(f, 0);
    MapObject_SetPositionFromXYZAndDirection(obj, x, y, z, 1);
    MapObject_SetFacingDirectionDirect(obj, 1);
    MapObject_SetHeldMovement(obj, 0x44);
    MapObject_SetVisible(obj, 0);
    MapObject_ClearFlag18(obj, 1);
    f->state = 1;
    if (f->relation == 0) {
        return;
    }
    if (f->relation == 1) {
        f->fx1 = ov01_021FD8E8(obj, 1);
    } else if (f->relation >= 2) {
        f->fx1 = ov01_021FD8E8(obj, 2);
    }
    f->relation = 0;
}

static void sub_0205B1E4(Follower *f, LocalMapObject *obj) {
    MapObject_SetHeldMovement(obj, 0x43);
    MapObject_SetFlag19(obj, 1);
    sub_0205FC94(obj, 0);
    sub_0205B0DC(f, 1);
    f->fxActive = 0;
    f->fxTimer = 0;
    f->state = 3;
}

static void sub_0205B218(Follower *f, LocalMapObject *obj) {
    if (f->unk03 == 1 && f->fxActive == 0) {
        f->fx0 = ov01_02200730(obj);
        f->fxTimer = 0x1e;
        f->unk03 = 0;
        f->fxActive = 1;
    }
}

static void sub_0205B240(MapObjectManager *manager, int start, int end) {
    int i;
    for (i = start; i < end; i++) {
        LocalMapObject *obj = MapObjectManager_GetFirstActiveObjectByID(manager, i);
        GF_ASSERT(obj != NULL);
        MapObject_SetVisible(obj, 1);
        MapObject_ClearFlag18(obj, 0);
        MapObject_SetFlag19(obj, 1);
    }
}

void sub_0205B27C(MapObjectManager *mapObjectManager, struct UnkStruct_0205AC88 *a0) {
    UnkStruct_0205AC88 *work = a0;
    LocalMapObject *obj = MapObjectManager_GetFirstActiveObjectByID(mapObjectManager, 0);
    int i;
    Follower *f;
    GF_ASSERT(obj != NULL);
    if (MapObject_AreBitsSetForMovementScriptInit(obj) != 1) {
        return;
    }
    if (sub_02037FCC() == 0 && sub_02037F94() == 0) {
        sub_0205B240(mapObjectManager, 1, 0x33);
        return;
    }
    f = &work->followers[0];
    for (i = 0; i < 0xa; i++) {
        if (f->state == 1) {
            obj = MapObjectManager_GetFirstActiveObjectByID(mapObjectManager, i + 1);
            GF_ASSERT(obj != NULL);
            sub_0205E3AC(obj, f->avatar);
            MapObject_SetFacingDirectionDirect(obj, 1);
            MapObject_SetHeldMovement(obj, 0x44);
            MapObject_SetVisible(obj, 0);
            MapObject_ClearFlag18(obj, 1);
            f->state = 1;
            if (f->relation != 0) {
                if (f->relation == 1) {
                    f->fx1 = ov01_021FD8E8(obj, 1);
                } else if (f->relation >= 2) {
                    f->fx1 = ov01_021FD8E8(obj, 2);
                }
                f->relation = 0;
            }
        }
        f++;
    }
    sub_0205B240(mapObjectManager, 0xb, 0x33);
}

static void sub_0205B338(MailElem *e) {
    e->str0 = String_New(8, (enum HeapID)0x57);
    e->str1 = 0;
    e->str2 = 0;
    MailMsg_Init_WithBank(&e->msg, 0);
    e->unk10 = 0;
    e->unkC = 0;
}

static void sub_0205B35C(MailManager *m) {
    int i;
    MailElem *e;
    for (i = 0, e = m->elems; i < 0x1e; i++) {
        sub_0205B338(e);
        e++;
    }
    m->unk348 = 0;
    m->unk34C = 0;
}

static void sub_0205B380(MailElem *e) {
    Heap_Free(e->str0);
    if (e->str1 != NULL) {
        String_Delete(e->str1);
    }
    if (e->str2 != NULL) {
        String_Delete(e->str2);
    }
}

static void sub_0205B3A0(MailManager *m) {
    int i;
    MailElem *e = m->elems;
    for (i = 0; i < 0x1e; i++) {
        sub_0205B380(e);
        e++;
    }
}

static MailManager *sub_0205B3B8(enum HeapID heapId) {
    MailManager *m = Heap_Alloc(heapId, 0x350);
    sub_0205B35C(m);
    return m;
}

static void sub_0205B3CC(MailManager *m) {
    sub_0205B3A0(m);
    Heap_Free(m);
}
