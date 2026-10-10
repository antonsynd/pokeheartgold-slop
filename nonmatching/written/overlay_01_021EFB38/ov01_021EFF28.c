#include "global.h"

extern s64 _ll_mul(s64 a, s64 b);

typedef struct UnkStruct_ov01_021EFF28 {
    fx32 currentValue;
    fx32 startValue;
    fx32 initialRate;
    fx32 quadraticCoeff;
    s32 currentStep;
    s32 numSteps;
} UnkStruct_ov01_021EFF28;

BOOL ov01_021EFF28(UnkStruct_ov01_021EFF28 *task) {
    s32 step = task->currentStep;
    fx32 lin = (fx32)((u64)(_ll_mul(task->initialRate, step << 12) + 0x800) >> 12);
    fx32 quad = (fx32)((u64)(_ll_mul(task->quadraticCoeff, (step * step) << 12) + 0x800) >> 12);
    s32 next;
    quad = FX_Div(quad, 0x2000);
    task->currentValue = task->startValue + (lin + quad);
    next = task->currentStep + 1;
    if (next <= task->numSteps) {
        task->currentStep = next;
        return FALSE;
    }
    task->currentStep = task->numSteps;
    return TRUE;
}
