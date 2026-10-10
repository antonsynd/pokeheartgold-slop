#include "global.h"
#include "heap.h"
#include "gf_gfx_planes.h"
#include "sys_task_api.h"

extern void GF_AssertFail(void);
extern void ov01_021F1094(SysTask *task, void *data);
extern void ov01_021F10C8(SysTask *task, void *data);

typedef struct UnkStruct_ov01_02209B64 {
    u16 unk0;
    u8 unk2;
    void *fieldSystem;
    u8 unk8[0x10];
} UnkStruct_ov01_02209B64;

extern UnkStruct_ov01_02209B64 *ov01_02209B64;

void ov01_021F0DDC(void *fieldSystem) {
    u8 *p;
    s32 n;
    if (ov01_02209B64 != NULL) {
        GF_AssertFail();
    }
    ov01_02209B64 = Heap_Alloc(HEAP_ID_FIELD1, 0x18);
    p = (u8 *)ov01_02209B64;
    for (n = 0x18; n != 0; n--) {
        *p++ = 0;
    }
    ov01_02209B64->unk0 = 0;
    ov01_02209B64->unk2 = 0;
    ov01_02209B64->fieldSystem = fieldSystem;
    GfGfx_EngineATogglePlanes(2, 0);
    GfGfx_EngineATogglePlanes(4, 0);
    GfGfx_EngineATogglePlanes(8, 0);
    GX_ResetBankForBG();
    MIi_CpuClearFast(0, (u32 *)0x06840000, 0x20000);
    *(vu32 *)0x04000064 = 0xC0320C04;
    SysTask_CreateOnVWaitQueue(ov01_021F1094, ov01_02209B64, 0x400);
    SysTask_CreateOnMainQueue(ov01_021F10C8, ov01_02209B64, 0x400);
}
