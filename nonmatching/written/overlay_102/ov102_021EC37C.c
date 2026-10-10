#include "global.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    void *unk_1C;
} UnkStruct_ov102_021EC37C;

extern void *ov102_021E93D4(void (*func)(void *, void *), void *arg, u32 priority);
extern void ov102_021EC3D4(void *task, void *arg);

void ov102_021EC37C(UnkStruct_ov102_021EC37C *param0, int param1, int param2, int param3, int param4, int param5) {
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_14 = param5;
    param0->unk_08 = param3;
    param0->unk_10 = (param4 - param3) / param5;
    param0->unk_0C = param4;
    param0->unk_18 = 0;
    param0->unk_1C = ov102_021E93D4(ov102_021EC3D4, param0, 0);
}
