#include "global.h"

extern s64 _ll_mul(s64 a, s64 b);

typedef struct UnkStruct_ov01_021EFEC8 {
    fx32 currentValue;
    fx32 startValue;
    fx32 initialRate;
    fx32 quadraticCoeff;
    s32 currentStep;
    s32 numSteps;
} UnkStruct_ov01_021EFEC8;

void ov01_021EFEC8(UnkStruct_ov01_021EFEC8 *task, fx32 startValue, fx32 endValue, fx32 initialRate, s32 numSteps) {
    fx32 v0t = (fx32)((u64)(_ll_mul(initialRate, numSteps << 12) + 0x800) >> 12);
    fx32 d = (endValue - startValue) - v0t;
    fx32 m = (fx32)((u64)(((s64)d << 13) + 0x800) >> 12);
    fx32 coeff = FX_Div(m, (numSteps * numSteps) << 12);
    task->currentValue = startValue;
    task->startValue = startValue;
    task->initialRate = initialRate;
    task->quadraticCoeff = coeff;
    task->currentStep = 0;
    task->numSteps = numSteps;
}
