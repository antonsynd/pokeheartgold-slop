#include "global.h"

#include "bg_window.h"

typedef struct UnkStruct_ov43_0222DE14_A {
    s16 unk_00;
    s16 unk_02;
    u8 padding_04[4];
    u32 unk_08;
    Window *unk_0C[8];
    u32 unk_2C[8];
} UnkStruct_ov43_0222DE14_A;

typedef struct UnkStruct_ov43_0222DE14_B {
    BgConfig *unk_00;
} UnkStruct_ov43_0222DE14_B;

typedef struct UnkStruct_ov43_0222DE14_C {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov43_0222DE14_C;

void ov43_0222DE14(UnkStruct_ov43_0222DE14_A *param0, UnkStruct_ov43_0222DE14_B *param1, u32 param2, u32 param3, const UnkStruct_ov43_0222DE14_C *param4, enum HeapID heapID) {
    u32 i;
    u32 v1;
    int abs0;
    int abs2;

    param0->unk_0C[param2] = AllocWindows(heapID, (u8)param3);
    param0->unk_2C[param2] = param3;

    v1 = (u16)param0->unk_08;

    for (i = 0; i < param3; i++) {
        InitWindow(&param0->unk_0C[param2][i]);
        abs2 = param0->unk_02;
        if (abs2 < 0) {
            abs2 = -abs2;
        }
        abs0 = param0->unk_00;
        if (abs0 < 0) {
            abs0 = -abs0;
        }
        AddWindowParameterized(param1->unk_00, &param0->unk_0C[param2][i], 3, param4[i].unk_00 + abs0, param4[i].unk_01 + abs2, param4[i].unk_02, param4[i].unk_03, 0xb, v1);
        FillWindowPixelBuffer(&param0->unk_0C[param2][i], 0);
        v1 = (u16)(v1 + param4[i].unk_02 * param4[i].unk_03);
    }
}
