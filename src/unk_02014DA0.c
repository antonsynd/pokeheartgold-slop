#include "unk_02014DA0.h"

#include "global.h"

#include "camera.h"
#include "error_handling.h"
#include "filesystem.h"
#include "heap.h"
#include "list_menu_cursor.h"
#include "pm_string.h"
#include "sys_task_api.h"
#include "text.h"

extern SPLManager *SPL_Init(u32 (*allocFn)(u32, BOOL), u16 maxEmtr, u16 maxPtcl, u8 polyIdMin, u8 polyIdMax, u8 unk5);
extern void SPL_Load(SPLManager *mgr, void *data);
extern void SPL_LoadTexByVRAMManager(SPLManager *mgr);
extern void SPL_LoadTexByCallbackFunction(SPLManager *mgr, texAllocFun texAlloc);
extern void SPL_LoadTexPlttByVRAMManager(SPLManager *mgr);
extern void SPL_LoadTexPlttByCallbackFunction(SPLManager *mgr, plttAllocFun plttAlloc);
extern SPLEmitter *SPL_Create(SPLManager *mgr);
extern void SPL_DeleteAll(SPLManager *mgr);
extern void SPL_Delete(SPLManager *mgr, SPLEmitter *emitter);
extern void SPL_Draw(SPLManager *mgr, const MtxFx43 *cameraMtx);
extern void SPL_Calc(SPLManager *mgr);
extern void NNS_GfdGetFrmTexVramState(void *pState);
extern void NNS_GfdSetFrmTexVramState(const void *pState);
extern void NNS_GfdGetFrmPlttVramState(void *pState);
extern void NNS_GfdSetFrmPlttVramState(const void *pState);
extern int NNS_GfdFreeLnkTexVram(NNSGfdTexKey texKey);
extern int NNS_GfdFreeLnkPlttVram(NNSGfdPlttKey plttKey);
extern void NNS_G3dGlbFlushP(void);
extern NNSG3dGlb NNS_G3dGlb;
extern void spl_calc_gravity(void);
extern void spl_calc_random(void);
extern void spl_calc_magnet(void);
extern void spl_calc_spin(void);
extern void spl_calc_scfield(void);
extern void spl_calc_convergence(void);

typedef struct SplSys {
    SPLManager *spl;
    void *narcData;
    void *activeEmitter;
    void *heapBase;
    void *heapCur;
    void *heapEnd;
    texAllocFun texAlloc;
    plttAllocFun plttAlloc;
    Camera *camera;
    u32 unk24;
    u32 unk28;
    u32 unk2c;
    u16 perspAngle;
    u16 pad32;
    VecFx32 target;
    VecFx32 up;
    VecFx32 pos;
    NNSGfdTexKey texState[16];
    NNSGfdPlttKey plttState[16];
    u8 flags;
    u8 pad_d9;
    u8 slot;
    u8 perspType;
} SplSys;

struct ListMenuCursor {
    u32 color;
    String *text;
};

// Forward declarations (headerless .public + static, before sFuncTable)
void sub_02014F84(void);
static u32 sub_02014FA4(u32 size, BOOL is4x4comp);
static u32 sub_02014FD0(u32 size, BOOL is4x4comp);
static u32 sub_02014FFC(u32 size, BOOL is4x4comp);
static u32 sub_02015028(u32 size, BOOL is4x4comp);
static u32 sub_02015054(u32 size, BOOL is4x4comp);
static u32 sub_02015080(u32 size, BOOL is4x4comp);
static u32 sub_020150AC(u32 size, BOOL is4x4comp);
static u32 sub_020150D8(u32 size, BOOL is4x4comp);
static u32 sub_02015104(u32 size, BOOL is4x4comp);
static u32 sub_02015130(u32 size, BOOL is4x4comp);
static u32 sub_0201515C(u32 size, BOOL is4x4comp);
static u32 sub_02015188(u32 size, BOOL is4x4comp);
static u32 sub_020151B4(u32 size, BOOL is4x4comp);
static u32 sub_020151E0(u32 size, BOOL is4x4comp);
static u32 sub_0201520C(u32 size, BOOL is4x4comp);
static u32 sub_02015238(u32 size, BOOL is4x4comp);
static void sub_02015300(SplSys *sys);
static void sub_02015340(SysTask *task, void *data);
static void sub_020153D8(SplSys *sys);
static void sub_02015414(SplSys *sys);
void sub_02015484(SPLEmitter *emitter);
void sub_020154B8(SPLEmitter *emitter);
void sub_020154C4(SPLEmitter *emitter);
void sub_020154D4(SPLEmitter *emitter, VecFx32 *dst);
void sub_020154E4(SPLEmitter *emitter, const VecFx32 *upVec);
void sub_02015510(VecFx32 *dst);
u8 sub_02015530(SPLEmitter *emitter);
static void *sub_02015550(SPLEmitter *libEmitter, int type);
void sub_0201560C(SPLEmitter *emitter, VecFx16 *axis);
void sub_02015628(SPLEmitter *emitter, VecFx32 *vec);
void sub_02015640(SPLEmitter *emitter, VecFx32 *vec);
void sub_02015674(SPLEmitter *emitter, s16 *val);
void sub_0201568C(SPLEmitter *emitter, s16 *val);
void sub_020156A8(SPLEmitter *emitter, u16 *val);
void sub_020156BC(SPLEmitter *emitter, u16 *val);
void sub_020156D8(SPLEmitter *emitter, u16 *val);
void sub_020156EC(SPLEmitter *emitter, u16 *val);
void sub_02015708(SPLEmitter *emitter, VecFx32 *vec);
void sub_02015720(SPLEmitter *emitter, VecFx32 *vec);
void sub_02015754(SPLEmitter *emitter, s16 *val);
void sub_0201576C(SPLEmitter *emitter, s16 *val);

static const VecFx32 sVec_020F6078 = { 0, 0x00100000, 0 };
static const VecFx32 sVec_020F6084 = { 0, 0, 0 };
static const VecFx32 sVec_020F6090 = { 0, 0, 0x00004000 };

static u32 sub_02014FA4(u32 size, BOOL is4x4comp);
static u32 sub_02014FD0(u32 size, BOOL is4x4comp);
static u32 sub_02014FFC(u32 size, BOOL is4x4comp);
static u32 sub_02015028(u32 size, BOOL is4x4comp);
static u32 sub_02015054(u32 size, BOOL is4x4comp);
static u32 sub_02015080(u32 size, BOOL is4x4comp);
static u32 sub_020150AC(u32 size, BOOL is4x4comp);
static u32 sub_020150D8(u32 size, BOOL is4x4comp);
static u32 sub_02015104(u32 size, BOOL is4x4comp);
static u32 sub_02015130(u32 size, BOOL is4x4comp);
static u32 sub_0201515C(u32 size, BOOL is4x4comp);
static u32 sub_02015188(u32 size, BOOL is4x4comp);
static u32 sub_020151B4(u32 size, BOOL is4x4comp);
static u32 sub_020151E0(u32 size, BOOL is4x4comp);
static u32 sub_0201520C(u32 size, BOOL is4x4comp);
static u32 sub_02015238(u32 size, BOOL is4x4comp);

static u32 (*const sFuncTable[16])(u32, BOOL) = {
    sub_02014FA4,
    sub_02014FD0,
    sub_02014FFC,
    sub_02015028,
    sub_02015054,
    sub_02015080,
    sub_020150AC,
    sub_020150D8,
    sub_02015104,
    sub_02015130,
    sub_0201515C,
    sub_02015188,
    sub_020151B4,
    sub_020151E0,
    sub_0201520C,
    sub_02015238,
};

static const u16 sCursorText[] = { 0x011F, 0xFFFF };

static struct {
    SplSys *activeSys;
    void *callbackArg;
    SplSys *slots[16];
} sSplState;

void sub_02014DA0(void) {
    int i;
    SplSys **p = sSplState.slots;
    for (i = 0; i < 16; i++) {
        *p++ = NULL;
    }
}

SPLEmitter *sub_02014DB4(texAllocFun texAlloc, plttAllocFun plttAlloc, void *particleHeap, u32 workSize, BOOL a4, enum HeapID heapID) {
    SplSys *sys;
    int slot;
    SplSys **p;

    p = sSplState.slots;
    slot = 0;
    do {
        if (*p == NULL) {
            break;
        }
        slot++;
        p++;
    } while (slot < 16);
    if (slot >= 16) {
        return NULL;
    }

    sys = Heap_Alloc(heapID, 0xdc);
    if (sys == NULL) {
        GF_AssertFail();
    }

    memset(sys, 0, 0xdc);
    sys->texAlloc = texAlloc;
    sys->plttAlloc = plttAlloc;
    sys->target = sVec_020F6090;
    sys->up = sVec_020F6078;
    sys->pos = sVec_020F6084;
    memset(particleHeap, 0, workSize);
    sys->heapBase = particleHeap;
    sys->heapCur = particleHeap;
    sys->heapEnd = (u8 *)particleHeap + workSize;
    sys->slot = (u8)slot;
    sSplState.slots[slot] = sys;

    if (a4 == 1) {
        sys->camera = Camera_New(heapID);
        sys->unk24 = 0;
        sys->unk28 = 0;
        sys->unk2c = 0;
        sys->perspAngle = 2 << 12;
        Camera_Init_FromTargetAndPos(&sVec_020F6084, &sVec_020F6090, sys->perspAngle, 0, FALSE, sys->camera);
        sys->perspType = 0;
        Camera_SetStaticPtr(sys->camera);
    }

    sys->spl = SPL_Init(sFuncTable[slot], 0x14, 0xc8, 5, 6, 0x3f);
    sub_020154E4((SPLEmitter *)sys, &sVec_020F6078);
    return (SPLEmitter *)sys;
}

void sub_02014EBC(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    SplSys *p;
    u32 i;
    u8 flags;

    sub_020154B8(emitter);

    flags = sys->flags;
    if (flags & 1) {
        NNS_GfdSetFrmTexVramState(&sys->texState[0]);
    } else if (flags & 2) {
        p = sys;
        for (i = 0; i < 16; i++, p = (SplSys *)((u8 *)p + 4)) {
            if (p->texState[0] != 0) {
                NNS_GfdFreeLnkTexVram(p->texState[0]);
                p->texState[0] = 0;
            }
        }
    }

    flags = sys->flags;
    if (flags & 4) {
        NNS_GfdSetFrmPlttVramState(&sys->plttState[0]);
    } else if (flags & 8) {
        p = sys;
        for (i = 0; i < 16; i++, p = (SplSys *)((u8 *)p + 4)) {
            NNSGfdPlttKey *pk = (NNSGfdPlttKey *)((u8 *)p + 0x98);
            if (*pk != 0) {
                NNS_GfdFreeLnkPlttVram(*pk);
                *pk = 0;
            }
        }
    }

    sys->flags = 0;
    sys->activeEmitter = NULL;

    if (sys->narcData != NULL) {
        Heap_Free(sys->narcData);
        sys->narcData = NULL;
    }

    for (i = 0; i < 16; i++) {
        if (sSplState.slots[i] == sys) {
            sSplState.slots[i] = NULL;
            break;
        }
    }

    if (sys->camera != NULL) {
        Camera_Delete(sys->camera);
    }
    Heap_Free(sys);
}

void sub_02014F84(void) {
    int i;
    SplSys **slots = sSplState.slots;
    for (i = 0; i < 16; i++, slots++) {
        if (*slots != NULL) {
            sub_02014EBC((SPLEmitter *)*slots);
        }
    }
}

static u32 sub_02014FA4(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[0];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02014FD0(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[1];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02014FFC(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[2];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02015028(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[3];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02015054(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[4];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02015080(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[5];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_020150AC(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[6];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_020150D8(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[7];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02015104(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[8];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02015130(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[9];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_0201515C(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[10];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02015188(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[11];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_020151B4(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[12];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_020151E0(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[13];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_0201520C(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[14];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

static u32 sub_02015238(u32 size, BOOL is4x4comp) {
    SplSys *sys = sSplState.slots[15];
    void *old = sys->heapCur;
    void *p = (u8 *)old + size;
    if ((u32)p & 3) {
        p = (u8 *)p + (4 - ((u32)p & 3));
    }
    sys->heapCur = p;
    if (p >= sys->heapEnd) {
        GF_AssertFail();
    }
    return (u32)old;
}

void *sub_02015264(NarcId narcId, int fileId, enum HeapID heapID) {
    return AllocAndReadWholeNarcMemberByIdPair(narcId, fileId, heapID);
}

static void sub_02015300(SplSys *sys);
static void sub_02015340(SysTask *task, void *data);

void sub_0201526C(SPLEmitter *emitter, void *data, u32 flag, BOOL loadNow) {
    SplSys *sys = (SplSys *)emitter;
    u32 i;

    if (sys->spl == NULL) {
        GF_AssertFail();
    }
    if (sys->narcData != NULL) {
        GF_AssertFail();
    }

    sys->flags = (u8)flag;
    if (flag & 1) {
        NNS_GfdGetFrmTexVramState(&sys->texState[0]);
    } else if (flag & 2) {
        for (i = 0; i < 16; i++) {
            sys->texState[i] = 0;
        }
    }

    if (flag & 4) {
        NNS_GfdGetFrmPlttVramState(&sys->plttState[0]);
    } else if (flag & 8) {
        for (i = 0; i < 16; i++) {
            sys->plttState[i] = 0;
        }
    }

    sys->narcData = data;
    if (loadNow == 1) {
        sub_02015300(sys);
    } else {
        SysTask_CreateOnVWaitQueue(sub_02015340, sys, 5);
    }
}

static void sub_02015300(SplSys *sys) {
    SPL_Load(sys->spl, sys->narcData);
    sSplState.activeSys = sys;
    if (sys->texAlloc == NULL) {
        SPL_LoadTexByVRAMManager(sys->spl);
    } else {
        SPL_LoadTexByCallbackFunction(sys->spl, sys->texAlloc);
    }
    if (sys->plttAlloc == NULL) {
        SPL_LoadTexPlttByVRAMManager(sys->spl);
    } else {
        SPL_LoadTexPlttByCallbackFunction(sys->spl, sys->plttAlloc);
    }
    sSplState.activeSys = NULL;
}

static void sub_02015340(SysTask *task, void *data) {
    sub_02015300((SplSys *)data);
    SysTask_Destroy(task);
}

void sub_02015354(NNSGfdTexKey texKey) {
    SplSys *sys;
    u32 i;

    if (texKey == 0) {
        GF_AssertFail();
    }
    if (sSplState.activeSys == NULL) {
        GF_AssertFail();
    }

    sys = sSplState.activeSys;
    for (i = 0; i < 16; i++) {
        if (sys->texState[i] == 0) {
            sSplState.activeSys->texState[i] = texKey;
            return;
        }
    }
    GF_AssertFail();
}

void sub_02015394(NNSGfdPlttKey plttKey) {
    SplSys *sys;
    u32 i;

    if (plttKey == 0) {
        GF_AssertFail();
    }
    if (sSplState.activeSys == NULL) {
        GF_AssertFail();
    }

    sys = sSplState.activeSys;
    for (i = 0; i < 16; i++) {
        if (sys->plttState[i] == 0) {
            sSplState.activeSys->plttState[i] = plttKey;
            return;
        }
    }
    GF_AssertFail();
}

static void sub_020153D8(SplSys *sys) {
    if (sys->camera != NULL) {
        Camera_ApplyPerspectiveType(sys->perspType, sys->camera);
        Camera_SetStaticPtr(sys->camera);
        Camera_PushLookAtToNNSGlb();
    }
    NNS_G3dGlbFlushP();
    SPL_Draw(sys->spl, &NNS_G3dGlb.cameraMtx);
    if (sys->camera != NULL) {
        Camera_UnsetStaticPtr();
    }
    NNS_G3dGlbFlushP();
}

static void sub_02015414(SplSys *sys) {
    SPL_Calc(sys->spl);
}

int sub_02015420(void) {
    int count = 0;
    SplSys **p = sSplState.slots;
    int i;
    for (i = 0; i < 16; i++) {
        if (*p != NULL) {
            count++;
        }
        p++;
    }
    return count;
}

int sub_0201543C(void) {
    int count = 0;
    SplSys **p = sSplState.slots;
    int i;
    for (i = 0; i < 16; i++) {
        if (*p != NULL) {
            sub_020153D8(*p);
            count++;
        }
        p++;
    }
    return count;
}

void sub_02015460(void) {
    u32 i;
    int count = 0;
    for (i = 0; i < 16; i++) {
        if (sSplState.slots[i] != NULL) {
            sub_02015414(sSplState.slots[i]);
            count++;
        }
    }
}

void sub_02015484(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    sys->activeEmitter = SPL_Create(sys->spl);
}

void sub_02015494(SPLEmitter *emitter, int res_no, void (*fp_callback)(struct SPLEmitter *), void *arg) {
    SplSys *sys = (SplSys *)emitter;
    sSplState.callbackArg = arg;
    sys->activeEmitter = SPL_CreateWithInitialize(sys->spl, res_no, fp_callback);
    sSplState.callbackArg = NULL;
}

BOOL sub_020154B0(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    return sys->spl->act_emtr_list.node_num;
}

void sub_020154B8(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    SPL_DeleteAll(sys->spl);
}

void sub_020154C4(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    SPL_Delete(sys->spl, NULL);
}

void *sub_020154D0(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    return sys->heapBase;
}

void sub_020154D4(SPLEmitter *emitter, VecFx32 *dst) {
    SplSys *sys = (SplSys *)emitter;
    *dst = sys->up;
}

void sub_020154E4(SPLEmitter *emitter, const VecFx32 *upVec) {
    SplSys *sys = (SplSys *)emitter;
    sys->up = *upVec;
    Camera_SetLookAtCamUp((VecFx32 *)upVec, sys->camera);
}

void *sub_02015504(void) {
    return sSplState.callbackArg;
}

void sub_02015510(VecFx32 *dst) {
    *dst = sVec_020F6078;
}

Camera *sub_02015524(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    return sys->camera;
}

void sub_02015528(SPLEmitter *emitter, int perspType) {
    SplSys *sys = (SplSys *)emitter;
    sys->perspType = (u8)perspType;
}

u8 sub_02015530(SPLEmitter *emitter) {
    SplSys *sys = (SplSys *)emitter;
    return sys->perspType;
}

void sub_02015538(SPLEmitter *emitter, VecFx16 *axis) {
    SplSys *sys = (SplSys *)emitter;
    axis->x = *(s16 *)((u8 *)&sys->up + 4);
    axis->y = *(s16 *)((u8 *)&sys->up + 6);
    axis->z = *(s16 *)((u8 *)&sys->up + 8);
}

static void *sub_02015550(SPLEmitter *libEmitter, int type) {
    SPLResource *res = libEmitter->p_res;
    s16 count = (s16)res->fld_num;
    SPLField *fld;
    s16 i;

    if (count == 0) {
        return NULL;
    }
    if (count <= 0) {
        return NULL;
    }

    fld = res->fld_ary;
    for (i = 0; i < count; i++, fld++) {
        if (fld == NULL) {
            continue;
        }
        if (type > 5) {
            return NULL;
        }
        switch (type) {
        case 0:
            if (fld->p_exec == (void (*)(const void *, SPLParticle *, VecFx32 *, struct SPLEmitter *))spl_calc_gravity) {
                return (void *)fld->p_obj;
            }
            break;
        case 1:
            if (fld->p_exec == (void (*)(const void *, SPLParticle *, VecFx32 *, struct SPLEmitter *))spl_calc_random) {
                return (void *)fld->p_obj;
            }
            break;
        case 2:
            if (fld->p_exec == (void (*)(const void *, SPLParticle *, VecFx32 *, struct SPLEmitter *))spl_calc_magnet) {
                return (void *)fld->p_obj;
            }
            break;
        case 3:
            if (fld->p_exec == (void (*)(const void *, SPLParticle *, VecFx32 *, struct SPLEmitter *))spl_calc_spin) {
                return (void *)fld->p_obj;
            }
            break;
        case 4:
            if (fld->p_exec == (void (*)(const void *, SPLParticle *, VecFx32 *, struct SPLEmitter *))spl_calc_scfield) {
                return (void *)fld->p_obj;
            }
            break;
        case 5:
            if (fld->p_exec == (void (*)(const void *, SPLParticle *, VecFx32 *, struct SPLEmitter *))spl_calc_convergence) {
                return (void *)fld->p_obj;
            }
            break;
        }
    }
    return NULL;
}

void sub_0201560C(SPLEmitter *emitter, VecFx16 *axis) {
    VecFx16 *p = sub_02015550(emitter, 0);
    if (p != NULL) {
        p->x = axis->x;
        p->y = axis->y;
        p->z = axis->z;
    }
}

void sub_02015628(SPLEmitter *emitter, VecFx32 *vec) {
    VecFx32 *p = sub_02015550(emitter, 2);
    if (p != NULL) {
        *p = *vec;
    }
}

void sub_02015640(SPLEmitter *emitter, VecFx32 *vec) {
    VecFx32 *p = sub_02015550(emitter, 2);
    if (p == NULL) {
        VecFx32 zero;
        zero.x = 0;
        zero.y = 0;
        zero.z = 0;
        *vec = zero;
    } else {
        *vec = *p;
    }
}

void sub_02015674(SPLEmitter *emitter, s16 *val) {
    void *p = sub_02015550(emitter, 2);
    if (p != NULL) {
        *(s16 *)((u8 *)p + 0xc) = *val;
    }
}

void sub_0201568C(SPLEmitter *emitter, s16 *val) {
    void *p = sub_02015550(emitter, 2);
    if (p == NULL) {
        *val = 0;
    } else {
        *val = *(s16 *)((u8 *)p + 0xc);
    }
}

void sub_020156A8(SPLEmitter *emitter, u16 *val) {
    void *p = sub_02015550(emitter, 3);
    if (p != NULL) {
        *(u16 *)p = *val;
    }
}

void sub_020156BC(SPLEmitter *emitter, u16 *val) {
    void *p = sub_02015550(emitter, 3);
    if (p == NULL) {
        *val = 0;
    } else {
        *val = *(u16 *)p;
    }
}

void sub_020156D8(SPLEmitter *emitter, u16 *val) {
    void *p = sub_02015550(emitter, 3);
    if (p != NULL) {
        *(u16 *)((u8 *)p + 2) = *val;
    }
}

void sub_020156EC(SPLEmitter *emitter, u16 *val) {
    void *p = sub_02015550(emitter, 3);
    if (p == NULL) {
        *val = 0;
    } else {
        *val = *(u16 *)((u8 *)p + 2);
    }
}

void sub_02015708(SPLEmitter *emitter, VecFx32 *vec) {
    VecFx32 *p = sub_02015550(emitter, 5);
    if (p != NULL) {
        *p = *vec;
    }
}

void sub_02015720(SPLEmitter *emitter, VecFx32 *vec) {
    VecFx32 *p = sub_02015550(emitter, 5);
    if (p == NULL) {
        VecFx32 zero;
        zero.x = 0;
        zero.y = 0;
        zero.z = 0;
        *vec = zero;
    } else {
        *vec = *p;
    }
}

void sub_02015754(SPLEmitter *emitter, s16 *val) {
    void *p = sub_02015550(emitter, 5);
    if (p != NULL) {
        *(s16 *)((u8 *)p + 0xc) = *val;
    }
}

void sub_0201576C(SPLEmitter *emitter, s16 *val) {
    void *p = sub_02015550(emitter, 5);
    if (p == NULL) {
        *val = 0;
    } else {
        *val = *(s16 *)((u8 *)p + 0xc);
    }
}

struct ListMenuCursor *ListMenuCursorNew(enum HeapID heapID) {
    struct ListMenuCursor *cursor = Heap_Alloc(heapID, 8);
    if (cursor != NULL) {
        cursor->color = 0x0001020F;
        cursor->text = String_New(4, heapID);
        CopyU16ArrayToString(cursor->text, sCursorText);
    }
    return cursor;
}

void DestroyListMenuCursorObj(struct ListMenuCursor *cursor) {
    if (cursor == NULL) {
        GF_AssertFail();
    }
    if (cursor != NULL) {
        if (cursor->text != NULL) {
            String_Delete(cursor->text);
        }
        Heap_Free(cursor);
    }
}

void ListMenuCursorSetColor(struct ListMenuCursor *cursor, u32 color) {
    if (cursor == NULL) {
        GF_AssertFail();
    }
    if (cursor != NULL) {
        cursor->color = color;
    }
}

void ListMenuUpdateCursorObj(struct ListMenuCursor *cursor, Window *window, u8 x, u8 y) {
    AddTextPrinterParameterizedWithColor(window, 0, cursor->text, x, y, 0xFF, cursor->color, NULL);
    CopyWindowPixelsToVram_TextMode(window);
}
