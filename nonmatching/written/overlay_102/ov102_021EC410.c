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
} UnkStruct_ov102_021EC410;

extern void *ov102_021E93D4(void (*func)(void *, void *), void *arg, u32 priority);
extern void ov102_021EC478(void *task, void *arg);

void ov102_021EC410(UnkStruct_ov102_021EC410 *param0, int param1, int param2, int param3, int param4) {
    G2x_SetBlendBrightness_((volatile u16 *)0x04000050, param1, param2);
    param0->unk_00 = param1;
    param0->unk_14 = param4;
    param0->unk_08 = param2 << 12;
    param0->unk_0C = param3 << 12;
    param0->unk_10 = (param0->unk_0C - param0->unk_08) / param4;
    param0->unk_18 = 0;
    param0->unk_1C = ov102_021E93D4(ov102_021EC478, param0, 0);
}
