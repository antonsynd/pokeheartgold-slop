#include "global.h"

extern s64 _ll_mul(s64 a, s64 b);

typedef struct UnkStruct_ov01_021EFE80 {
    fx32 currentValue;
    fx32 startValue;
    fx32 delta;
    s32 currentStep;
    s32 numSteps;
} UnkStruct_ov01_021EFE80;

static inline fx32 MulRound(fx32 a, fx32 b) {
    return (fx32)((u64)(_ll_mul(a, b) + 0x800) >> 12);
}

BOOL ov01_021EFE80(UnkStruct_ov01_021EFE80 *task) {
    fx32 v = MulRound(task->delta, task->currentStep << 12);
    s32 next;
    v = FX_Div(v, task->numSteps << 12);
    task->currentValue = v + task->startValue;
    next = task->currentStep + 1;
    if (next <= task->numSteps) {
        task->currentStep = next;
        return FALSE;
    }
    task->currentStep = task->numSteps;
    return TRUE;
}
