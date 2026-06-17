#include "global.h"

#include "heap.h"
#include "sys_task_api.h"

typedef BOOL (*UnkFunc)(void *work, void *data);

typedef struct {
    u32 unk0;
    UnkFunc unk4;
    UnkFunc unk8;
    UnkFunc unkC;
    UnkFunc unk10;
} UnkTemplateBase;

typedef struct {
    UnkTemplateBase base;
    UnkFunc unk14;
    UnkFunc unk18;
} UnkTemplate;

typedef struct UnkTaskWork {
    u32 flags;
    u32 unk4;
    u32 unk8;
    void *unkC;
    SysTask *task;
    struct UnkTaskManager *unk14;
    u8 unk18[0xC];
    VecFx32 unk24;
    u8 unk30[0x80];
    UnkFunc unkB0;
    UnkFunc unkB4;
    UnkFunc unkB8;
    UnkFunc unkBC;
    UnkFunc unkC0;
    UnkFunc unkC4;
} UnkTaskWork;

typedef struct UnkTaskManager {
    int count;
    u32 unk4;
    enum HeapID heapId;
    UnkTaskWork *work;
} UnkTaskManager;

UnkTaskManager *sub_020689C8(enum HeapID heapId, int count);
static void sub_020689E8(UnkTaskManager *mgr);
void sub_020689F8(UnkTaskManager *mgr);
static UnkTaskWork *sub_02068A08(UnkTaskManager *mgr, UnkTemplate *tmpl, VecFx32 *pos, u32 a3, void *a4, u32 priority);
UnkTaskWork *sub_02068B0C(UnkTaskManager *mgr, UnkTemplateBase *src, VecFx32 *pos, u32 a3, void *a4, u32 priority);
void sub_02068B48(UnkTaskWork *work);
static void sub_02068B80(UnkTaskManager *mgr);
void sub_02068BAC(UnkTaskManager *mgr);
static SysTask *sub_02068BDC(UnkTaskWork *work, u32 priority);
static void sub_02068BFC(SysTask *task, void *data);
static UnkTaskManager *sub_02068C08(enum HeapID heapId);
static void sub_02068C2C(UnkTaskManager *mgr);
static UnkTaskWork *sub_02068C38(enum HeapID heapId, int count);
static void sub_02068C5C(UnkTaskManager *mgr);
static void sub_02068C6C(UnkTaskWork *work);
static int sub_02068CC4(UnkTaskManager *mgr);
static UnkTaskWork *sub_02068CC8(UnkTaskManager *mgr);
BOOL sub_02068CCC(UnkTaskWork *work);
static void sub_02068CD8(UnkTaskWork *work);
static void sub_02068CE4(UnkTaskWork *work, u32 bits);
static u32 sub_02068CEC(UnkTaskWork *work, u32 mask);
static void sub_02068CF4(UnkTaskWork *work, UnkFunc cb);
static BOOL sub_02068CFC(UnkTaskWork *work);
static void sub_02068D10(UnkTaskWork *work, UnkFunc cb);
BOOL sub_02068D18(UnkTaskWork *work);
static void sub_02068D2C(UnkTaskWork *work, UnkFunc cb);
static BOOL sub_02068D34(UnkTaskWork *work);
static void sub_02068D48(UnkTaskWork *work, UnkFunc cb);
static BOOL sub_02068D50(UnkTaskWork *work);
static void sub_02068D64(UnkTaskWork *work, UnkFunc cb);
static void sub_02068D6C(UnkTaskWork *work, UnkFunc cb);
void *sub_02068D74(UnkTaskWork *work);
static void sub_02068D78(UnkTaskWork *work, u32 size);
static void sub_02068D8C(UnkTaskWork *work, u32 value);
u32 sub_02068D90(UnkTaskWork *work);
static void sub_02068D94(UnkTaskWork *work, void *value);
void *sub_02068D98(UnkTaskWork *work);
static void sub_02068D9C(UnkTaskWork *work, SysTask *task);
static SysTask *sub_02068DA0(UnkTaskWork *work);
static void sub_02068DA4(UnkTaskWork *work, UnkTaskManager *mgr);
void sub_02068DA8(UnkTaskWork *work, VecFx32 *src);
void sub_02068DB8(UnkTaskWork *work, VecFx32 *dst);
static BOOL sub_02068DC8(void *work, void *data);
static BOOL sub_02068DCC(void *work, void *data);
BOOL sub_02068DD0(void *work, void *data);
BOOL sub_02068DD4(void *work, void *data);
static BOOL sub_02068DD8(void *work, void *data);
static BOOL sub_02068DDC(void *work, void *data);

UnkTaskManager *sub_020689C8(enum HeapID heapId, int count) {
    UnkTaskManager *mgr = sub_02068C08(heapId);
    mgr->work = sub_02068C38(heapId, count);
    mgr->count = count;
    mgr->heapId = heapId;
    return mgr;
}

static void sub_020689E8(UnkTaskManager *mgr) {
    sub_02068C5C(mgr);
    sub_02068C2C(mgr);
}

void sub_020689F8(UnkTaskManager *mgr) {
    sub_02068B80(mgr);
    sub_020689E8(mgr);
}

static UnkTaskWork *sub_02068A08(UnkTaskManager *mgr, UnkTemplate *tmpl, VecFx32 *pos, u32 a3, void *a4, u32 priority) {
    int i = 0;
    int count = sub_02068CC4(mgr);
    UnkTaskWork *work = sub_02068CC8(mgr);
    do {
        if (sub_02068CCC(work) == 0) {
            break;
        }
        i++;
        work++;
    } while (i < count);
    if (i >= count) {
        return NULL;
    }
    sub_02068CD8(work);
    sub_02068D8C(work, a3);
    sub_02068D94(work, a4);
    sub_02068DA4(work, mgr);
    if (pos != NULL) {
        sub_02068DA8(work, pos);
    } else {
        VecFx32 zero = { 0, 0, 0 };
        sub_02068DA8(work, &zero);
    }
    sub_02068D78(work, tmpl->base.unk0);
    sub_02068CF4(work, tmpl->base.unk4);
    sub_02068D48(work, tmpl->base.unk8);
    sub_02068D10(work, tmpl->base.unkC);
    sub_02068D2C(work, tmpl->base.unk10);
    sub_02068D64(work, tmpl->unk14);
    sub_02068D6C(work, tmpl->unk18);
    {
        SysTask *task = sub_02068BDC(work, priority);
        if (task == NULL) {
            sub_02068C6C(work);
            return NULL;
        }
        sub_02068D9C(work, task);
        if (sub_02068CFC(work) == 0) {
            SysTask_Destroy(task);
            sub_02068C6C(work);
            return NULL;
        }
    }
    sub_02068CE4(work, 2);
    mgr->unk4++;
    return work;
}

UnkTaskWork *sub_02068B0C(UnkTaskManager *mgr, UnkTemplateBase *src, VecFx32 *pos, u32 a3, void *a4, u32 priority) {
    UnkTemplate tmpl;
    tmpl.base = *src;
    tmpl.unk14 = sub_02068DD8;
    tmpl.unk18 = sub_02068DDC;
    return sub_02068A08(mgr, &tmpl, pos, a3, a4, priority);
}

void sub_02068B48(UnkTaskWork *work) {
    GF_ASSERT(work);
    if (sub_02068CCC(work)) {
        sub_02068D50(work);
        work->unk14->unk4--;
        {
            SysTask *task = sub_02068DA0(work);
            if (task != NULL) {
                SysTask_Destroy(task);
            }
        }
        sub_02068C6C(work);
    }
}

static void sub_02068B80(UnkTaskManager *mgr) {
    int count = sub_02068CC4(mgr);
    UnkTaskWork *work = sub_02068CC8(mgr);
    do {
        if (sub_02068CCC(work) == TRUE) {
            sub_02068B48(work);
        }
        work++;
    } while (--count);
}

void sub_02068BAC(UnkTaskManager *mgr) {
    int count = sub_02068CC4(mgr);
    UnkTaskWork *work = sub_02068CC8(mgr);
    do {
        if (sub_02068CEC(work, 3) == 3) {
            sub_02068D34(work);
        }
        work++;
    } while (--count);
}

static SysTask *sub_02068BDC(UnkTaskWork *work, u32 priority) {
    SysTask *task = SysTask_CreateOnMainQueue(sub_02068BFC, work, priority);
    GF_ASSERT(task);
    return task;
}

static void sub_02068BFC(SysTask *task, void *data) {
    sub_02068D18(data);
}

static UnkTaskManager *sub_02068C08(enum HeapID heapId) {
    UnkTaskManager *mgr = Heap_Alloc(heapId, sizeof(UnkTaskManager));
    GF_ASSERT(mgr);
    {
        u8 *p = (u8 *)mgr;
        u32 i = sizeof(UnkTaskManager);
        do {
            *p++ = 0;
        } while (--i);
    }
    return mgr;
}

static void sub_02068C2C(UnkTaskManager *mgr) {
    Heap_FreeExplicit(mgr->heapId, mgr);
}

static UnkTaskWork *sub_02068C38(enum HeapID heapId, int count) {
    UnkTaskWork *work;
    u32 size = count * sizeof(UnkTaskWork);
    work = Heap_Alloc(heapId, size);
    GF_ASSERT(work);
    memset(work, 0, size);
    return work;
}

static void sub_02068C5C(UnkTaskManager *mgr) {
    Heap_FreeExplicit(mgr->heapId, mgr->work);
}

static void sub_02068C6C(UnkTaskWork *work) {
    memset(work, 0, sizeof(UnkTaskWork));
    sub_02068CF4(work, sub_02068DC8);
    sub_02068D48(work, sub_02068DD4);
    sub_02068D10(work, sub_02068DCC);
    sub_02068D2C(work, sub_02068DD0);
    sub_02068D64(work, sub_02068DD8);
    sub_02068D6C(work, sub_02068DDC);
}

static int sub_02068CC4(UnkTaskManager *mgr) {
    return mgr->count;
}

static UnkTaskWork *sub_02068CC8(UnkTaskManager *mgr) {
    return mgr->work;
}

BOOL sub_02068CCC(UnkTaskWork *work) {
    return (work->flags & 1) != 0;
}

static void sub_02068CD8(UnkTaskWork *work) {
    work->flags |= 1;
}

static void sub_02068CE4(UnkTaskWork *work, u32 bits) {
    work->flags |= bits;
}

static u32 sub_02068CEC(UnkTaskWork *work, u32 mask) {
    return work->flags & mask;
}

static void sub_02068CF4(UnkTaskWork *work, UnkFunc cb) {
    work->unkB0 = cb;
}

static BOOL sub_02068CFC(UnkTaskWork *work) {
    return work->unkB0(work, sub_02068D74(work));
}

static void sub_02068D10(UnkTaskWork *work, UnkFunc cb) {
    work->unkB4 = cb;
}

BOOL sub_02068D18(UnkTaskWork *work) {
    return work->unkB4(work, sub_02068D74(work));
}

static void sub_02068D2C(UnkTaskWork *work, UnkFunc cb) {
    work->unkB8 = cb;
}

static BOOL sub_02068D34(UnkTaskWork *work) {
    return work->unkB8(work, sub_02068D74(work));
}

static void sub_02068D48(UnkTaskWork *work, UnkFunc cb) {
    work->unkBC = cb;
}

static BOOL sub_02068D50(UnkTaskWork *work) {
    return work->unkBC(work, sub_02068D74(work));
}

static void sub_02068D64(UnkTaskWork *work, UnkFunc cb) {
    work->unkC0 = cb;
}

static void sub_02068D6C(UnkTaskWork *work, UnkFunc cb) {
    work->unkC4 = cb;
}

void *sub_02068D74(UnkTaskWork *work) {
    return work->unk30;
}

static void sub_02068D78(UnkTaskWork *work, u32 size) {
    memset(sub_02068D74(work), 0, size);
}

static void sub_02068D8C(UnkTaskWork *work, u32 value) {
    work->unk4 = value;
}

u32 sub_02068D90(UnkTaskWork *work) {
    return work->unk4;
}

static void sub_02068D94(UnkTaskWork *work, void *value) {
    work->unkC = value;
}

void *sub_02068D98(UnkTaskWork *work) {
    return work->unkC;
}

static void sub_02068D9C(UnkTaskWork *work, SysTask *task) {
    work->task = task;
}

static SysTask *sub_02068DA0(UnkTaskWork *work) {
    return work->task;
}

static void sub_02068DA4(UnkTaskWork *work, UnkTaskManager *mgr) {
    work->unk14 = mgr;
}

void sub_02068DA8(UnkTaskWork *work, VecFx32 *src) {
    work->unk24 = *src;
}

void sub_02068DB8(UnkTaskWork *work, VecFx32 *dst) {
    *dst = work->unk24;
}

static BOOL sub_02068DC8(void *work, void *data) {
    return TRUE;
}

static BOOL sub_02068DCC(void *work, void *data) {
}

BOOL sub_02068DD0(void *work, void *data) {
}

BOOL sub_02068DD4(void *work, void *data) {
}

static BOOL sub_02068DD8(void *work, void *data) {
}

static BOOL sub_02068DDC(void *work, void *data) {
}
