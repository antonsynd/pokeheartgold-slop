#include "global.h"

typedef s32 (*UnkFunc_ov01_021F2944)(void *env, u32 r1, u32 r2, u32 r3);

extern void *TaskManager_GetEnvironment(void *taskManager);
extern void ov01_02205790(void *a0, u8 a1);
extern void ov01_021F30F4(void *env);
extern UnkFunc_ov01_021F2944 ov01_022069A8[];
extern UnkFunc_ov01_021F2944 ov01_022069BC[];

typedef struct UnkStruct_ov01_021F2944 {
    u32 state;
    u32 direction;
    u8 unk08[0x2C];
    void *unk34;
} UnkStruct_ov01_021F2944;

BOOL ov01_021F2944(void *taskManager) {
    u32 r2v, r3v;
    s32 ret;
    UnkFunc_ov01_021F2944 func;
    UnkStruct_ov01_021F2944 *env = TaskManager_GetEnvironment(taskManager);
    __asm__ volatile("movs %0, r2\n\tmovs %1, r3" : "=l"(r2v), "=l"(r3v) : : "r2", "r3", "cc");
    do {
        if (env->direction == 0) {
            func = ov01_022069A8[env->state];
        } else {
            func = ov01_022069BC[env->state];
        }
        ret = func(env, (u32)func, r2v, r3v);
        __asm__ volatile("movs %0, r2\n\tmovs %1, r3" : "=l"(r2v), "=l"(r3v) : : "r2", "r3", "cc");
    } while (ret == 2);
    if (ret == 1) {
        ov01_02205790(env->unk34, (u8)env->direction);
        ov01_021F30F4(env);
        return TRUE;
    }
    return FALSE;
}
