#include "global.h"

typedef struct Ov112_021E7DC0 {
    u8 filler_00000[0x20];
    void *unk00020;
    u8 filler_00024[0xF1D0 - 0x24];
    int unk0F1D0;
    u16 unk0F1D4;
    u8 filler_0F1D6[2];
    u8 unk0F1D8[0x28];
    u8 unk0F200[0x1E440 - 0xF200];
    void *unk1E440;
} Ov112_021E7DC0;

void ov112_021F3244(void *a0, void *a1);
const void *sub_02032728(void *a0);

void ov112_021E7DC0(Ov112_021E7DC0 *a0) {
    ov112_021F3244(a0->unk00020, a0->unk0F200);
    a0->unk0F1D0 = 1;
    a0->unk0F1D4 = GAME_VERSION;
    MI_CpuCopyFast(sub_02032728(a0->unk1E440), a0->unk0F1D8, sizeof(a0->unk0F1D8));
}
