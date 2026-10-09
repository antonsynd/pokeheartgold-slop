#include "global.h"

#include "heap.h"
#include "sys_task_api.h"
#include "systask_environment.h"

typedef struct UnkStruct_ov01_021F4464_Config {
    int mode;
    int bgMode;
    int bg0As;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int heapId;
} UnkStruct_ov01_021F4464_Config;

typedef struct UnkStruct_ov01_021F4464 {
    GXVRamLCDC bank;
    UnkStruct_ov01_021F4464_Config config;
    BOOL ready;
    SysTask *task;
} UnkStruct_ov01_021F4464;

extern GXVRamLCDC GX_GetBankForLCDC(void);

UnkStruct_ov01_021F4464 *ov01_021F4464(UnkStruct_ov01_021F4464_Config *config);
void ov01_021F44B4(UnkStruct_ov01_021F4464 **handle, GXDispMode dispMode, GXBGMode bgMode, GXBG0As bg0As);
void ov01_021F4544(SysTask *task, void *data);
void ov01_021F4584(SysTask *task, void *data);
void ov01_021F45E4(UnkStruct_ov01_021F4464_Config *config);

UnkStruct_ov01_021F4464 *ov01_021F4464(UnkStruct_ov01_021F4464_Config *config) {
    SysTask *task = CreateSysTaskAndEnvironment(ov01_021F4544, sizeof(UnkStruct_ov01_021F4464), 5, config->heapId);
    UnkStruct_ov01_021F4464 *env = SysTask_GetData(task);
    u32 *dst = (u32 *)&env->config;
    const u32 *src = (const u32 *)config;
    int i;
    for (i = 0; i < 5; i++) {
        u32 lo = src[0];
        u32 hi = src[1];
        dst[0] = lo;
        dst[1] = hi;
        src += 2;
        dst += 2;
    }
    dst[0] = src[0];
    env->task = task;
    env->ready = FALSE;
    env->bank = GX_GetBankForLCDC();
    ov01_021F45E4(&env->config);
    SysTask_CreateOnVWaitQueue(ov01_021F4584, env, 0);
    return env;
}

void ov01_021F44B4(UnkStruct_ov01_021F4464 **handle, GXDispMode dispMode, GXBGMode bgMode, GXBG0As bg0As) {
    GX_SetGraphicsMode(dispMode, bgMode, bg0As);
    GX_SetBankForLCDC((*handle)->bank);
    switch ((*handle)->config.mode) {
    case 2:
        MI_CpuClearFast((void *)HW_LCDC_VRAM, 0x20000);
        break;
    case 6:
        MI_CpuClearFast((void *)(HW_LCDC_VRAM + 0x20000), 0x20000);
        break;
    case 10:
        MI_CpuClearFast((void *)(HW_LCDC_VRAM + 0x40000), 0x20000);
        break;
    case 14:
        MI_CpuClearFast((void *)(HW_LCDC_VRAM + 0x60000), 0x20000);
        break;
    default:
        GX_SetBankForLCDC(GX_VRAM_LCDC_NONE);
        break;
    }
    DestroySysTaskAndEnvironment((*handle)->task);
    *handle = NULL;
}

void ov01_021F4544(SysTask *task, void *data) {
    UnkStruct_ov01_021F4464 *env = data;
    if (env->ready) {
        reg_GX_DISPCAPCNT = (env->config.unk_10 << 29) | 0x80000000 | (env->config.unk_18 << 25) | (env->config.unk_14 << 24) | (env->config.unk_0C << 20) | (env->config.unk_1C << 16) | (env->config.unk_24 << 8) | env->config.unk_20;
    }
}

void ov01_021F4584(SysTask *task, void *data) {
    UnkStruct_ov01_021F4464 *env = data;
    switch (env->config.mode) {
    case 2:
        GX_SetBankForLCDC(GX_VRAM_LCDC_A);
        break;
    case 6:
        GX_SetBankForLCDC(GX_VRAM_LCDC_B);
        break;
    case 10:
        GX_SetBankForLCDC(GX_VRAM_LCDC_C);
        break;
    case 14:
        GX_SetBankForLCDC(GX_VRAM_LCDC_D);
        break;
    default:
        GX_SetBankForLCDC(GX_VRAM_LCDC_NONE);
        break;
    }
    GX_SetGraphicsMode(env->config.mode, env->config.bgMode, env->config.bg0As);
    env->ready = TRUE;
    SysTask_Destroy(task);
}

void ov01_021F45E4(UnkStruct_ov01_021F4464_Config *config) {
    switch (config->mode) {
    case 2:
        MI_CpuClearFast((void *)HW_LCDC_VRAM, 0x20000);
        break;
    case 6:
        MI_CpuClearFast((void *)(HW_LCDC_VRAM + 0x20000), 0x20000);
        break;
    case 10:
        MI_CpuClearFast((void *)(HW_LCDC_VRAM + 0x40000), 0x20000);
        break;
    case 14:
        MI_CpuClearFast((void *)(HW_LCDC_VRAM + 0x60000), 0x20000);
        break;
    }
    reg_GX_DISPCAPCNT = (config->unk_10 << 29) | 0x80000000 | (config->unk_18 << 25) | (config->unk_14 << 24) | (config->unk_0C << 20) | (config->unk_1C << 16) | 0x10;
}
