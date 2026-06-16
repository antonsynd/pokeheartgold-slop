#include "unk_020163E0.h"

#include "global.h"

#include "bg_window.h"
#include "palette.h"
#include "sys_task.h"
#include "systask_environment.h"
#include "unk_02026E84.h"

struct UnkStruct_020163E0 {
    SysTask *unk0;
    void (*unk4)(UnkStruct_020163E0 *env, u16 *buf);
    PaletteData *unk8;
    u16 unkC[16];
    u16 unk2C[16];
    u8 unk4C;
    u8 unk4D;
    u8 unk4E;
    u8 unk4F;
};

static void sub_020164D0(SysTask *task, void *data);
static int sub_02016548(UnkStruct_020163E0 *env);
static void sub_020165A4(UnkStruct_020163E0 *env, u16 *buf);
static void sub_020165BC(UnkStruct_020163E0 *env, u16 *buf);
static void sub_020165D4(UnkStruct_020163E0 *env, u16 *buf);
static void sub_020165F0(UnkStruct_020163E0 *env, u16 *buf);

UnkStruct_020163E0 *sub_020163E0(PaletteData *plttData, PMLCDTarget screen, u32 num, enum HeapID heapID) {
    SysTask *task = CreateSysTaskAndEnvironment(sub_020164D0, 0x50, 0, heapID);
    UnkStruct_020163E0 *env = SysTask_GetData(task);
    const u16 *src;
    u32 offset;
    if (plttData != NULL) {
        if (screen == 0) {
            src = PaletteData_GetUnfadedBuf(plttData, (PaletteBufferId)0);
            env->unk4 = sub_020165D4;
        } else {
            src = PaletteData_GetUnfadedBuf(plttData, (PaletteBufferId)1);
            env->unk4 = sub_020165F0;
        }
    } else {
        if (screen == 0) {
            src = GetMainBgPlttAddr();
            env->unk4 = sub_020165A4;
        } else {
            src = GetSubBgPlttAddr();
            env->unk4 = sub_020165BC;
        }
    }
    offset = num << 5;
    MIi_CpuCopy16((const u16 *)((const u8 *)src + offset), env->unkC, 0x20);
    MIi_CpuCopy16((const u16 *)((const u8 *)src + offset), env->unk2C, 0x20);
    env->unk0 = task;
    env->unk8 = plttData;
    env->unk4C = screen;
    env->unk4D = num;
    env->unk4E = 1;
    env->unk4F = 0;
    return env;
}

void sub_0201649C(void *msgIcon, s32 unk0) {
    UnkStruct_020163E0 *env = msgIcon;
    switch (unk0) {
    case 0:
        env->unk4E = 0;
        break;
    case 1:
        env->unk4E = 2;
        break;
    case 2:
        env->unk4E = 3;
        break;
    }
}

void sub_020164C4(UnkStruct_020163E0 *a0) {
    DestroySysTaskAndEnvironment(a0->unk0);
}

static void sub_020164D0(SysTask *task, void *data) {
    UnkStruct_020163E0 *env = data;
    switch (env->unk4E) {
    case 0:
        env->unk4F = 0;
        env->unk4E = 1;
        break;
    case 1:
        if (sub_02016548(env) == 1) {
            env->unk4(env, env->unk2C);
        }
        env->unk4F++;
        if (env->unk4F == 0x20) {
            env->unk4F = 0;
        }
        break;
    case 2:
        break;
    case 3:
        env->unk4(env, env->unkC);
        DestroySysTaskAndEnvironment(task);
        break;
    }
}

static int sub_02016548(UnkStruct_020163E0 *env) {
    u32 i;
    if (env->unk4F == 0) {
        for (i = 0; i < 16; i++) {
            if ((1 << i) & (0x1e << 0xa)) {
                env->unk2C[i] = env->unkC[i];
            }
        }
        return 1;
    }
    if (env->unk4F == 0x18) {
        for (i = 0; i < 16; i++) {
            if ((1 << i) & (0x1e << 0xa)) {
                env->unk2C[i] = env->unkC[15];
            }
        }
        return 1;
    }
    return 0;
}

static void sub_020165A4(UnkStruct_020163E0 *env, u16 *buf) {
    BG_LoadPlttData(0, buf, 0x20, env->unk4D << 5);
}

static void sub_020165BC(UnkStruct_020163E0 *env, u16 *buf) {
    BG_LoadPlttData(4, buf, 0x20, env->unk4D << 5);
}

static void sub_020165D4(UnkStruct_020163E0 *env, u16 *buf) {
    PaletteData_LoadPalette(env->unk8, buf, (PaletteBufferId)0, env->unk4D << 4, 0x20);
}

static void sub_020165F0(UnkStruct_020163E0 *env, u16 *buf) {
    PaletteData_LoadPalette(env->unk8, buf, (PaletteBufferId)1, env->unk4D << 4, 0x20);
}
