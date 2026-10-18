#include "global.h"

#include "bg_window.h"
#include "heap.h"
#include "systask_environment.h"

typedef struct Ov33Args {
    const u32 *strIds;
    u8 count;
    u8 unk5;
    u16 unk6;
} Ov33Args;

typedef struct Ov33Work {
    BgConfig *bgConfig;
    void *unk4;
    u32 unk8;
    Ov33Args *unkC;
    Ov33Args *unk10;
    SysTask *sysTask;
    Window windows[2];
    u8 buffer[0x180];
    u16 state;
    u16 count;
} Ov33Work;

void ov33_0225D5D0(SysTask *task, void *taskEnv);
void ov33_0225D6F8(void);
void ov33_0225D720(BgConfig *bgConfig);
void ov33_0225D7D4(Ov33Work *work);
void ov33_0225D84C(Ov33Work *work);
void ov33_0225D8D4(Ov33Work *work);

SysTask *ov33_0225D520(BgConfig *bgConfig, void *arg1, u32 arg2, Ov33Args *args) {
    Ov33Work *work;
    SysTask *task;

    Heap_Create(HEAP_ID_3, HEAP_ID_8, 3 << 15);
    reg_G2S_DB_BLDCNT = 0;
    task = CreateSysTaskAndEnvironment(ov33_0225D5D0, 7 << 6, 0xA, HEAP_ID_8);
    work = SysTask_GetData(task);
    work->bgConfig = bgConfig;
    work->unk4 = arg1;
    work->unk8 = arg2;
    work->unkC = args;
    work->sysTask = task;
    work->unk10 = args;
    work->count = work->unk10->count;
    work->unk10->unk6 = 0xFFFF;
    work->unk10->unk5 = 0;
    ov33_0225D6F8();
    ov33_0225D720(bgConfig);
    ov33_0225D7D4(work);
    ov33_0225D84C(work);
    ov33_0225D8D4(work);
    return task;
}
